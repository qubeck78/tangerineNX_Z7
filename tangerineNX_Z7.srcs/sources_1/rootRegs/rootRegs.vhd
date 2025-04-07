library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;


entity rootRegs is
port (

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

   --frame timer clock ( vertical sync )

   vgaVS:            in std_logic
   
 );
end rootRegs;

architecture Behavioral of rootRegs is

--components
component inputSync

    generic(
        inputWidth              : integer := 1
    );

    port(

        clock:                          in  std_logic;

        signalInput:                    in  std_logic_vector( inputWidth - 1 downto 0 );
        signalOutput:                   out std_logic_vector( inputWidth - 1 downto 0 )

    );

end component;


--signals
signal reset:                 std_logic;
signal clock:                 std_logic;

signal vgaVSSynced:           std_logic;

-- tick timer signals
signal tickTimerClock:            std_logic;
signal tickTimerReset:            std_logic;
signal tickTimerPrescalerCounter: std_logic_vector( 31 downto 0 );
signal tickTimerCounter:          std_logic_vector( 31 downto 0 );

constant tickTimerPrescalerValue:   integer:=   100000 - 1;  --1ms tick timer @100MHz

-- frameTimer signals
signal frameTimerClock:         std_logic;
signal frameTimerReset:         std_logic;
signal frameTimerPgPrvVSync:    std_logic;
signal frameTimerCounter:       std_logic_vector( 31 downto 0 );


--axi
type axiState_T is ( asIdle, asRead0, asWrite0 );
signal axiState:     axiState_T;

begin


--positive reset
reset                <= not s00_axi_aresetn;

--assign clock
clock                <= s00_axi_aclk;

tickTimerClock       <= clock;
frameTimerClock      <= clock;

--sync vga vs to main clock

inputSyncInst:inputSync
generic map
(
   inputWidth  => 1
)

port map
(
   clock        =>  clock,

   signalInput(0)  => vgaVS,
   signalOutput(0) => vgaVSSynced
);


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
         
         --clear timer triggers
         tickTimerReset    <= '0';
         frameTimerReset   <= '0';

      else
      
         --clear timer triggers

         tickTimerReset    <= '0';
         frameTimerReset   <= '0';
         
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
                  
                     -- 0x00 r- id
                     when x"00" =>
                     
                        s00_axi_rdata  <= x"80000000";
                        
                     -- 0x04 r- version 
                     when x"01" =>
                     
                        s00_axi_rdata  <= x"20250406";
               
                     -- 0x08 r- tickTimer
                     when x"02" =>
                     
                        s00_axi_rdata     <= tickTimerCounter;

                     -- 0x10 r- frameTimer                          
                     when x"04" =>
                     
                        s00_axi_rdata     <= frameTimerCounter;


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
                     
                     -- 0x0c -w tickTimerReset
                     when x"03" =>
                     
                        tickTimerReset    <= '1';

                     -- 0x14 -w frameTimerReset
                     when x"05" =>
                     
                        frameTimerReset   <= '1';
                                   
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

-- tick timer process
tickTimer: process( tickTimerClock, tickTimerPrescalerCounter, tickTimerCounter )
begin

   if rising_edge( tickTimerClock ) then
   
      if reset = '1' then
         
         tickTimerPrescalerCounter  <= ( others => '0' );
         tickTimerCounter           <= ( others => '0' );
               
      else
      
         if tickTimerPrescalerCounter /= x"00000000" then
            
            tickTimerPrescalerCounter <= std_logic_vector( unsigned( tickTimerPrescalerCounter ) - 1 );
            
         else
         
            --tickTimerPrescalerCounter <= conv_std_logic_vector( tickTimerPrescalerValue, tickTimerPrescalerCounter'length );
            tickTimerPrescalerCounter <= std_logic_vector( to_unsigned( tickTimerPrescalerValue, tickTimerPrescalerCounter'length ) );
            
            tickTimerCounter <= std_logic_vector( unsigned( tickTimerCounter ) + 1 );
         
         end if;
      
         if tickTimerReset = '1' then

            tickTimerPrescalerCounter  <= ( others => '0' );
            tickTimerCounter           <= ( others => '0' );
         
         end if;
         
      
      end if;  --reset = '1'
   
   
   end if; --rising_edge( tickTimerClock )

end process;   


-- frame timer process
frameTimerProcess: process( frameTimerClock )
begin
   
   if rising_edge( frameTimerClock ) then

      if frameTimerReset = '1' then
      
         frameTimerCounter <= ( others => '0' );
         
      else
      
         frameTimerPgPrvVSync <= vgaVSSynced;
         
         
         if frameTimerPgPrvVSync = '0' and vgaVSSynced = '1' then
      
            frameTimerCounter <= std_logic_vector( unsigned( frameTimerCounter ) + 1 );
            
         end if;
      
      end if;
   
   end if; -- rising_edge( frameTimerClock )

end process; 



end Behavioral;
