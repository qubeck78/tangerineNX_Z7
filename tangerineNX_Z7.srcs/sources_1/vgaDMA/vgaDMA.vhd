library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity vgaDMA is
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

   --axi4 master
   m00_axi_aclk:     in  std_logic;
   m00_axi_aresetn:  in  std_logic;

   m00_axi_awaddr:   out std_logic_vector( 31 downto 0 );
   m00_axi_awprot:   out std_logic_vector( 2 downto 0 );
   m00_axi_awvalid:  out std_logic;
   m00_axi_awready:  in  std_logic;
   m00_axi_wdata:    out std_logic_vector( 63 downto 0 );
   m00_axi_wstrb:    out std_logic_vector( 3 downto 0 );
   m00_axi_wvalid:   out std_logic;
   m00_axi_wready:   in  std_logic;
   m00_axi_bresp:    in  std_logic_vector( 1 downto 0) ;
   m00_axi_bvalid:   in  std_logic;
   m00_axi_bready:   out std_logic;
   
   m00_axi_araddr:   out std_logic_vector( 31 downto 0 );
   m00_axi_arprot:   out std_logic_vector( 2 downto 0 );
   m00_axi_arvalid:  out std_logic;
   m00_axi_arready:  in  std_logic;
   m00_axi_rdata:    in  std_logic_vector( 63 downto 0 );
   m00_axi_rresp:    in  std_logic_vector( 1 downto 0 );
   m00_axi_rvalid:   in  std_logic;
   m00_axi_rready:   out std_logic;
   
   --extended signals
   m00_axi_arid:     out std_logic_vector ( 3 downto 0 );
   m00_axi_arlen:    out std_logic_vector ( 7 downto 0 );
   m00_axi_arsize:   out std_logic_vector ( 2 downto 0 );
   m00_axi_arburst:  out std_logic_vector ( 1 downto 0 );
   m00_axi_arlock:   out std_logic;
   m00_axi_arcache:  out std_logic_vector ( 3 downto 0 );
   m00_axi_rid:      in  std_logic_vector ( 3 downto 0 );
   m00_axi_rlast:    in  std_logic;
   
   m00_axi_awid:     out std_logic_vector ( 3 downto 0 );
   m00_axi_awlen:    out std_logic_vector ( 7 downto 0 );
   m00_axi_awsize:   out std_logic_vector ( 2 downto 0 );
   m00_axi_awburst:  out std_logic_vector ( 1 downto 0 );
   m00_axi_awlock:   out std_logic;
   m00_axi_wlast:    out std_logic;
   m00_axi_awcache:  out std_logic_vector ( 3 downto 0 );

   --vertical sync, for display pointer reset
   vgaVS:            in    std_logic;
      
   --dma interface from VGA ( gfx mode line data buffer, dma requests )
   gfxFbRamClock:    in    std_logic;
   gfxFbRamDOut:     out   std_logic_vector( 31 downto 0 );
   gfxFbRamA:        in    std_logic_vector( 10 downto 0 );    --2 buffers, 1024 long words each

   --2 dma requests
   vgaDMARequest:    in    std_logic_vector( 1 downto 0 )
     
);
end vgaDMA;


architecture Behavioral of vgaDMA is

--components
component inputSync

generic
(
  inputWidth:     integer := 1
);

port
(
  clock:          in  std_logic;

  signalInput:    in  std_logic_vector( inputWidth - 1 downto 0 );
  signalOutput:   out std_logic_vector( inputWidth - 1 downto 0 )
);

end component;

component gfxFbRam
port
(
   clka:    IN    STD_LOGIC;
   wea:     IN    STD_LOGIC_VECTOR(0 DOWNTO 0);
   addra:   IN    STD_LOGIC_VECTOR(10 DOWNTO 0);
   dina:    IN    STD_LOGIC_VECTOR(31 DOWNTO 0);
   douta:   OUT   STD_LOGIC_VECTOR(31 DOWNTO 0);
   clkb:    IN    STD_LOGIC;
   web:     IN    STD_LOGIC_VECTOR(0 DOWNTO 0);
   addrb:   IN    STD_LOGIC_VECTOR(9 DOWNTO 0);
   dinb:    IN    STD_LOGIC_VECTOR(63 DOWNTO 0);
   doutb:   OUT   STD_LOGIC_VECTOR(63 DOWNTO 0) 
);
end component;



--signals
signal   reset:               std_logic;
signal   resetn:              std_logic;
signal   clock:               std_logic;

signal   vgaVSSynced:         std_logic;
signal   vgaDMARequestSynced: std_logic_vector( 1 downto 0 );

--axi slave
type axiState_T is ( asIdle, asRead0, asWrite0 );
signal axiState:     axiState_T;

--vga dma 

type   dmaState_T is ( dsIdle, dsCh1AxiRead0, dsCh1AxiRead1, dsCh1AxiRead2, dsCh1AxiRead3, dsCh1AxiRead4, dsCh1AxiRead5, dsCh1AxiRead6, dsCh1AxiRead7 );
                               
signal dmaState:            dmaState_T;

--ch1
signal ch1DmaPointerStart:    std_logic_vector( 31 downto 0 );
signal ch1DmaRequestLength:   std_logic_vector( 15 downto 0 );
signal ch1DmaRequestPtrAdd:   std_logic_vector( 15 downto 0 );

signal ch1DmaPointer:         std_logic_vector( 31 downto 0 );
signal ch1DmaBufPointer:      std_logic_vector( 9 downto 0 );
signal ch1DMARequestLatched:  std_logic_vector( 1 downto 0 );


--ch1 gfx fb ram
signal gfxFbRamBWr:     std_logic;
signal gfxFbRamBA:      std_logic_vector( 9 downto 0 );
signal gfxFbRamBDin:    std_logic_vector( 63 downto 0 );


begin

--assign resets, clocks
resetn   <= s00_axi_aresetn;
reset    <= not resetn;

clock    <= s00_axi_aclk;

--assign unused ports, signals


--sync signals from pixel clock domain

inputSyncInst:inputSync
generic map
(
   inputWidth     => 3
)
port map
(
   clock          => clock,

   signalInput(0) => vgaVS,
   signalInput(1) => vgaDMARequest(0),
   signalInput(2) => vgaDMARequest(1),

   signalOutput(0)   => vgaVSSynced,
   signalOutput(1)   => vgaDMARequestSynced(0),
   signalOutput(2)   => vgaDMARequestSynced(1)

);



--place gfx buffer ram
gfxFbRamInst:gfxFbRam
port map
(
   clka     => gfxFbRamClock,
   wea      => "0",
   addra    => gfxFbRamA,
   dina     => ( others => '0' ),
   douta    => gfxFbRamDOut,
   clkb     => clock,
   web(0)   => gfxFbRamBWr,
   addrb    => gfxFbRamBA,
   dinb     => gfxFbRamBDin
);



axiSlave: process( s00_axi_aclk )
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

         --reset regs         
         ch1DmaPointerStart   <= ( others => '0' );
         ch1DmaRequestLength  <= ( others => '0' );
         ch1DmaRequestPtrAdd  <= ( others => '0' );
                  
         --clear triggers

      else
      
         --clear triggers

         
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
                     
                        s00_axi_rdata  <= x"8000000d";
                        
                     -- 0x04 r- version 
                     when x"01" =>
                     
                        s00_axi_rdata  <= x"20250406";
               
                     -- 0x08 rw ch1DmaPointerStart
                     when x"02" =>
                     
                        s00_axi_rdata  <= ch1DmaPointerStart;

                     -- 0x0c rw ch1DmaRequestLength
                     when x"03" =>
                     
                        s00_axi_rdata  <= x"0000" & ch1DmaRequestLength;

                     -- 0x10 rw ch1DmaRequestPtrAdd
                     when x"04" =>
                     
                        s00_axi_rdata  <= x"0000" & ch1DmaRequestPtrAdd;

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

                     -- 0x08 rw ch1DmaPointerStart
                     when x"02" =>
                     
                        ch1DmaPointerStart   <= s00_axi_wdata;

                     -- 0x0c rw ch1DmaRequestLength
                     when x"03" =>
                     
                        ch1DmaRequestLength  <= s00_axi_wdata( 15 downto 0 );

                     -- 0x10 rw ch1DmaRequestPtrAdd
                     when x"04" =>
                     
                        ch1DmaRequestPtrAdd  <= s00_axi_wdata( 15 downto 0 );
                     
                                  
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


vgaDMAMain: process( clock, reset )
begin

   if rising_edge( clock ) then
   
      if reset = '1' then

         --reset dma fsm
         dmaState                <= dsIdle;

         --clear latched requests
         ch1DMARequestLatched    <= ( others => '0' );

         --ch1 dma pointer
         ch1DmaPointer           <= ( others => '0' );
         
         --ch1 gfx fb ram
         gfxFbRamBWr             <= '0';
         gfxFbRamBA              <= ( others => '0' );
         gfxFbRamBDin            <= ( others => '0' );

         --axi master
         m00_axi_arid            <= x"0";
         m00_axi_arlen           <= ( others => '0' );
         m00_axi_arsize          <= "011";   --64 bits
         m00_axi_arburst         <= "01";    --burst type: increment
         m00_axi_arlock          <= '0';
         m00_axi_arcache         <= "0011";  --0011  
         m00_axi_arprot          <= "000";   --data/secure/unprivileged
         
         m00_axi_araddr          <= ( others => '0' );
         m00_axi_arvalid         <= '0';
         m00_axi_rready          <= '0';
         
      else
      
         --latch ch1 dma requests ( VGA )
         if vgaDmaRequestSynced( 0 ) = '1' then
         
            ch1DmaRequestLatched( 0 ) <= '1';
        
        end if;
        
        if vgaDmaRequestSynced( 1 ) = '1' then
         
            ch1DmaRequestLatched( 1 ) <= '1';
            
        end if;
        
        if vgaVSSynced = '1' then
        
            ch1DmaPointer <= ch1DmaPointerStart;
        
        end if;

      case dmaState is
            
         when dsIdle =>
         
         --check ch0 access
         if ch1DmaRequestLatched( 0 ) = '1' then
         
            ch1DmaBufPointer     <= "0000000000";                       
            
            dmaState             <= dsCh1AxiRead0;
                        
         elsif ch1DmaRequestLatched( 1 ) = '1' then
         
            ch1DmaBufPointer    <= "1000000000";                       
            
            dmaState             <= dsCh1AxiRead0;
            
         end if;
         
         when dsCh1AxiRead0 =>
              
            if m00_axi_arready = '1' then
               
               if ch1DmaRequestLength( 8 ) = '0' then
               
                  --axi burst read ( 1 burst )
                  m00_axi_araddr    <= ch1DmaPointer;
                  m00_axi_arvalid   <= '1';
                  m00_axi_arlen     <= ch1DmaRequestLength( 7 downto 0 );      
                  m00_axi_rready    <= '0';
      
                  dmaState          <= dsCh1AxiRead1;
   
               else
    
                  --axi burst read ( 2 bursts )
                  m00_axi_araddr    <= ch1DmaPointer;
                  m00_axi_arvalid   <= '1';
                  m00_axi_arlen     <= x"ff";      
                  m00_axi_rready    <= '0';
      
                  dmaState          <= dsCh1AxiRead3;
               
               
               end if;
                                 
            end if;
    
         when dsCh1AxiRead1 =>

            m00_axi_arvalid   <= '0';
            m00_axi_rready    <= '1';
               
            if m00_axi_rvalid = '1' then
               
               gfxFbRamBA     <= ch1DmaBufPointer;
               gfxFbRamBDin   <= m00_axi_rdata;
               gfxFbRamBWr    <= '1';
                   
               ch1DmaBufPointer    <= std_logic_vector( unsigned( ch1DmaBufPointer ) + 1 );

               if m00_axi_rlast = '1' then
                  
                  dmaState <= dsCh1AxiRead2;
                  
               end if;
                                                
                  
            end if;
                  
         when dsCh1AxiRead2 =>
            
            gfxFbRamBWr             <= '0';
            m00_axi_rready          <= '0';
            m00_axi_arvalid         <= '0';
            
            ch1DmaRequestLatched    <= "00";
           
            ch1DmaPointer           <= std_logic_vector( unsigned( ch1DmaPointer ) + unsigned( ch1DmaRequestPtrAdd ) );
               
            dmaState                <= dsIdle;

         when dsCh1AxiRead3 =>

            m00_axi_arvalid   <= '0';
            m00_axi_rready    <= '1';
               
            if m00_axi_rvalid = '1' then
               
               gfxFbRamBA     <= ch1DmaBufPointer;
               gfxFbRamBDin   <= m00_axi_rdata;
               gfxFbRamBWr    <= '1';
                   
               ch1DmaBufPointer    <= std_logic_vector( unsigned( ch1DmaBufPointer ) + 1 );

               if m00_axi_rlast = '1' then
                  
                  dmaState <= dsCh1AxiRead4;
                  
               end if;
                                                
                  
            end if;
               
         when dsCh1AxiRead4 =>
            
            gfxFbRamBWr             <= '0';
            m00_axi_rready          <= '0';
            m00_axi_arvalid         <= '0';
            
            
--            ch1DmaRequestLatched    <= "00";           
--            ch1DmaPointer           <= std_logic_vector( unsigned( ch1DmaPointer ) + unsigned( ch1DmaRequestPtrAdd ) );
               
            dmaState                <= dsCh1AxiRead5;
         
         when dsCh1AxiRead5 =>

            if m00_axi_arready = '1' then
                                               
                  --axi burst read ( second burst )
                  m00_axi_araddr    <= std_logic_vector( unsigned( ch1DmaPointer ) + 2048 );
                  m00_axi_arvalid   <= '1';
                  m00_axi_arlen     <= ch1DmaRequestLength( 7 downto 0 );      
                  m00_axi_rready    <= '0';
      
                  dmaState          <= dsCh1AxiRead6;
                                                   
            end if;

         when dsCh1AxiRead6 =>

            m00_axi_arvalid   <= '0';
            m00_axi_rready    <= '1';
               
            if m00_axi_rvalid = '1' then
               
               gfxFbRamBA     <= ch1DmaBufPointer;
               gfxFbRamBDin   <= m00_axi_rdata;
               gfxFbRamBWr    <= '1';
                   
               ch1DmaBufPointer    <= std_logic_vector( unsigned( ch1DmaBufPointer ) + 1 );

               if m00_axi_rlast = '1' then
                  
                  dmaState <= dsCh1AxiRead7;
                  
               end if;
                                                
                  
            end if;

         when dsCh1AxiRead7 =>

            gfxFbRamBWr             <= '0';
            m00_axi_rready          <= '0';
            m00_axi_arvalid         <= '0';
            
            ch1DmaRequestLatched    <= "00";
           
            ch1DmaPointer           <= std_logic_vector( unsigned( ch1DmaPointer ) + unsigned( ch1DmaRequestPtrAdd ) );
               
            dmaState                <= dsIdle;
         
           
         when others =>
            
            dmaState    <= dsIdle;
        
        end case;

      end if;
   
   end if;
   
end process;


end Behavioral;
