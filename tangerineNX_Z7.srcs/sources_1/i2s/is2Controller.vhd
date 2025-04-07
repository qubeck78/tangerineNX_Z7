

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity is2Controller is
port(
   
   --axi4-lite bus
   s00_axi_aclk:     in std_logic;
   s00_axi_aresetn:  in std_logic;
   s00_axi_awaddr:   in std_logic_vector( 31 downto 0 );
   s00_axi_awprot:   in std_logic_vector( 2 downto 0 );
   s00_axi_awvalid:  in std_logic;
   s00_axi_awready:  out std_logic;
   s00_axi_wdata:    in std_logic_vector( 31 downto 0 );
   s00_axi_wstrb:    in std_logic_vector( 3 downto 0 );
   s00_axi_wvalid:   in std_logic;
   s00_axi_wready:   out std_logic;
   s00_axi_bresp:    out std_logic_vector( 1 downto 0 );
   s00_axi_bvalid:   out std_logic;
   s00_axi_bready:   in std_logic;
   s00_axi_araddr:   in std_logic_vector( 31 downto 0 );
   s00_axi_arprot:   in std_logic_vector( 2 downto 0 );
   s00_axi_arvalid:  in std_logic;
   s00_axi_arready:  out std_logic;
   s00_axi_rdata:    out std_logic_vector( 31 downto 0 );
   s00_axi_rresp:    out std_logic_vector( 1 downto 0 );
   s00_axi_rvalid:   out std_logic;
   s00_axi_rready:   in std_logic;
  
   --i2s interface
   i2sSClk:    out std_logic;
   i2sBClk:    out std_logic;
   i2sLRCk:    out std_logic;
   i2sDOut:    out std_logic
 
 );
end is2Controller;

architecture Behavioral of is2Controller is

--components

component i2sControllerFifo
port (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    prog_full : OUT STD_LOGIC;
    wr_rst_busy : OUT STD_LOGIC;
    rd_rst_busy : OUT STD_LOGIC 
  );
end component;


--signals

signal   reset:   std_logic;
signal   clock:   std_logic;


-- i2s clock gen
signal  i2sClockGenCounter:     std_logic_vector( 15 downto 0 );
signal  i2sClockGenMax:         std_logic_vector( 15 downto 0 );
signal  i2sClockGenMid:         std_logic_vector( 15 downto 0 );
signal  i2sClock:               std_logic;

-- i2s tx
signal  i2sTxReg:               std_logic_vector( 31 downto 0 );
signal  i2sTxBitCounter:        std_logic_vector( 4 downto 0 );


-- i2s fifo
signal  fifoWr:                 std_logic;
signal  fifoDIn:                std_logic_vector( 31 downto 0 );
signal  fifoAlmostFull:         std_logic;
signal  fifoEmpty:              std_logic;
signal  fifoFull:               std_logic;

signal  fifoRd:                 std_logic;
signal  fifoDOut:               std_logic_vector( 31 downto 0 );

signal  fifoReadCounter:        std_logic_vector( 7 downto 0 );
signal  fifoReadDiv:            std_logic_vector( 7 downto 0 );

-- i2s fifo <- cpu
signal fifoWrCpu:               std_logic;
signal fifoDinCpu:              std_logic_vector( 31 downto 0 );

-- i2s fifo <- dma
signal fifoWrDma:               std_logic;
signal fifoDinDma:              std_logic_vector( 31 downto 0 );

-- i2s dma control signals

type   dmaState_T is    ( dmaDisabled, dmaMode01s0, dmaMode01s1, dmaMode01s2, dmaMode01s3, dmaMode01s4, dmaMode01s5,
                                        dmaMode02s0, dmaMode02s1, dmaMode02s2, dmaMode02s3, dmaMode02s4, dmaMode02s5 );
signal dmaState:                dmaState_T;


-- 00 - disabled
-- 01 - mono 
-- 10 - stereo
signal dmaMode:                 std_logic_vector( 1 downto 0 );
signal dmaLoop:                 std_logic;

signal dmaDataPointerReg:       std_logic_vector( 23 downto 0 );
signal dmaDataLengthReg:        std_logic_vector( 23 downto 0 );

signal dmaDataPointer:          std_logic_vector( 23 downto 0 );
signal dmaDataCounter:          std_logic_vector( 23 downto 0 );

signal dmaDataSecondHalf:       std_logic;
signal dmaFinished:             std_logic;
signal dmaFinishedClear:        std_logic;

--axi
type axiState_T is ( asIdle, asRead0, asWrite0 );
signal axiState:     axiState_T;



begin

--assign unused ports/signals

i2sSClk     <= 'Z';

--reset/clock

reset <= not s00_axi_aresetn;
clock <= s00_axi_aclk;

-- place audio fifo

--select fifo write source, according to dma mode "00" -> cpu, "01" or "10" -> dma
fifoDIn <= fifoDInCpu when dmaMode = "00" else fifoDinDma;
fifoWr  <= fifoWrCpu when dmaMode = "00" else fifoWrDma;

i2sControllerFifoInst: i2sControllerFifo
port map(
    rst         => reset,
    wr_clk      => clock,
    rd_clk      => i2sClock,
    din         => fifoDIn,
    wr_en       => fifoWr,
    rd_en       => fifoRd,
    dout        => fifoDOut,
    full        => fifoFull,
    empty       => fifoEmpty,
    prog_full   => fifoAlmostFull
  );


--i2s serial sender
i2sBClk <= i2sClock;

i2sClockGen: process( clock, reset )
begin

    if rising_edge( clock ) then
  
        if reset = '1' then
     
            i2sClockGenCounter  <= ( others => '0' );
            i2sClock            <= '0';

        else

            if i2sClockGenCounter /= i2sClockGenMax then

                i2sClockGenCounter  <= std_logic_vector( unsigned( i2sClockGenCounter ) + 1 );

            else

                i2sClockGenCounter  <= ( others => '0' );
                i2sClock            <= '0';
            
            end if;


            if i2sClockGenCounter = i2sClockGenMid then

                i2sClock    <= '1';

            end if;

        end if; --reset = '1'
    end if; --rising_edge( clock )

end process;

i2sSender:  process( i2sClock, reset )
begin

if falling_edge( i2sClock ) then

   if reset = '1' then
   
      i2sTxReg        <= ( others => '0' );
      
      i2sLRCk         <= '0';
      i2sDOut         <= '0';
      
      fifoReadCounter <= ( others => '0' );
      i2sTxBitCounter   <= ( others => '1' );   --start from bit 31
      
   else
      
      i2sDOut     <= i2sTxReg( to_integer( unsigned( i2sTxBitCounter ) ) );   --output bit from tx reg
      
      i2sTxBitCounter   <= std_logic_vector( unsigned( i2sTxBitCounter ) - 1 );  --decrease bit counter 

      --notice, bit counter holds current value'til next tick      
      if i2sTxBitCounter = "11111" then   --bit 31, clear fifo read
         
         fifoRd      <= '0';
         
      end if;
         
      if i2sTxBitCounter = "10000" then   --bit 16, toggle lrck
         
         i2sLRCk     <= '1';
         
      end if;         
         
      if i2sTxBitCounter = "00000" then --bit 0, toggle lrck, decrease fiforeadcounter and read from fifo if necesary
         
         i2sLRCk     <= '0';
         
         --fiforeadcounter allows reading from fifo every n i2s send cycle
         --so actual signal frequency will be i2s dac freq / ( fifoReadDiv + 1 )
         if fifoReadCounter = x"00" then
         
            --latch new data to i2sTxReg
            i2sTxReg    <= fifoDOut;
            
            --trigger next data read
            if fifoEmpty = '0' then
            
               fifoRd  <= '1';
            
            end if;
            
            fifoReadCounter <= fifoReadDiv;
         
         else
         
            fifoReadCounter <= std_logic_vector( unsigned( fifoReadCounter ) - 1 );
         
         end if;         
         
      end if;
      
   end if;
   
end if;

end process;
 


--axi bridge

axiBridge: process( s00_axi_aclk )

begin
   
   if rising_edge( s00_axi_aclk ) then
   
      if s00_axi_aresetn = '0' then
      
         axiState          <= asIdle;
                  
         s00_axi_awready   <= '0';
         s00_axi_wready    <= '0';
         s00_axi_bresp     <= ( others => '0' );
         s00_axi_bvalid    <= '0';
         s00_axi_arready   <= '0';
         s00_axi_rdata     <= ( others => '0' );
         s00_axi_rresp     <= ( others => '0' );
         s00_axi_rvalid    <= '0';
         
      --fifo
        fifoDInCpu      <= ( others => '0' );
        fifoWrCpu       <= '0';
        
        --regs default values

        --48KHz, fifo read div = 1
        i2sClockGenMax      <= x"0041";     -- 100000000 / 65 ~ 1536000
        i2sClockGenMid      <= x"0020";     -- toggle clk val in middle     
        fifoReadDiv         <= x"00";       

        dmaMode             <= "00";        -- dma disabled by default
        dmaLoop             <= '0';         -- dma buffer looping disabled by default

        dmaFinishedClear    <= '0';
         
      else
      
         
         case axiState is
         
            when asIdle =>
            
               --ready for read address reception
               s00_axi_arready   <= '1';
               
               s00_axi_awready   <= '0';

               --read data not exposed
               s00_axi_rvalid    <= '0';
               
               --not ready to write data
               s00_axi_wready    <= '0';
               
               --clear write data ack
               s00_axi_bvalid    <= '0';
               
               --check read
               if s00_axi_arvalid = '1' then
               
                  --read
                  --we do not accept any more addresses for now
                  s00_axi_arready   <= '0';
                  s00_axi_awready   <= '0';
                  
                  case s00_axi_araddr( 9 downto 2 ) is
                  
                     when x"00" =>
                     
                        s00_axi_rdata  <= x"80000007";
                        
                     when x"01" =>
                     
                        s00_axi_rdata  <= x"20250121";
                                    
                     when x"02" =>
                     
                        s00_axi_rdata  <= ( others => '0' );

                     when x"03" =>
                     
                        s00_axi_rdata  <= x"0000000" & '0' & fifoFull & fifoAlmostFull & fifoEmpty;

                     when x"04" =>
                     
                        s00_axi_rdata  <= i2sClockGenMax & i2sClockGenMid;

                     when x"05" =>
                     
                        s00_axi_rdata  <= x"000000" & fifoReadDiv;

                     when x"06" =>
                     
                        s00_axi_rdata  <= x"0000000" & '0' & dmaLoop & dmaMode;

                     when x"07" =>
                     
                        s00_axi_rdata  <= x"0000000" & "00" & dmaDataSecondHalf &  dmaFinished;

                        if dmaFinished = '1' then

                            dmaFinishedClear <= '1';

                        end if;
                        
                     when x"08" =>
                     
                        s00_axi_rdata  <= "000000" & dmaDataPointerReg & "00";

                     when x"09" =>
                     
                        s00_axi_rdata  <= x"00" & dmaDataLengthReg;

                     when others =>
                     
                        s00_axi_rdata  <= x"00000000";
                     
               
                  end case;
                  
                  --data exposed
                  s00_axi_rvalid <= '1';
                  
                  --check ready
                  if s00_axi_rready = '0' then

                     --if not ready, wait'til end of cycle                     
                     axiState <= asRead0;
                  
                  end if;
               
               --check write
               elsif s00_axi_awvalid = '1' and s00_axi_wvalid = '1'  then
                
                  --not ready for read address
                  s00_axi_arready   <= '0';
                  
                  --ready for write address
                  s00_axi_awready   <= '1';
                  s00_axi_wready    <= '1';
                  s00_axi_bvalid    <= '1';
                  
                  
                  case s00_axi_awaddr( 9 downto 2 ) is
                     
                     when x"02" =>
                     
                        fifoDInCpu  <= s00_axi_wdata;
                        fifoWrCpu   <= '1';                  
                  
                     when x"04" =>
                     
                        i2sClockGenMax  <= s00_axi_wdata( 31 downto 16 );
                        i2sClockGenMid  <= s00_axi_wdata( 15 downto 0 );                  

                     when x"05" =>
                     
                        fifoReadDiv  <= s00_axi_wdata( 7 downto 0 );

                     when x"06" =>
                     
                        dmaLoop <= s00_axi_wdata( 2 );
                        dmaMode <= s00_axi_wdata( 1 downto 0 );

                     when x"08" =>
                        
                        dmaDataPointerReg   <= s00_axi_wdata( 25 downto 2 );

                     when x"09" =>
                        
                        dmaDataLengthReg   <= s00_axi_wdata( 23 downto 0 );

                     when others =>
                  
                  end case;
                  
                  axiState <= asWrite0;
                  
               end if;
            
            when asRead0 =>
            
               if s00_axi_rready = '1' then

                  --end read cycle
                  s00_axi_rvalid <= '0';
                  axiState       <= asIdle;
                  
               end if;
            
            when asWrite0 =>

              --deassert fifo write
              fifoWrCpu         <= '0';

              --deassert dma finished clear flag
              dmaFinishedClear  <= '0';
            
               --not ready for write address
               s00_axi_awready   <= '0';
               s00_axi_wready    <= '0';
            
               if s00_axi_bready = '1' then

                  s00_axi_bvalid    <= '0';

                  axiState       <= asIdle;
               
               end if;                                 
                               
            when others =>
            
               axiState <= asIdle;
                      
         end case;
            
      end if;
   
   end if; 

end process;


end Behavioral;
