--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Sun Apr  6 11:59:22 2025
--Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
--Command     : generate_target tangerineNX_Z7_wrapper.bd
--Design      : tangerineNX_Z7_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tangerineNX_Z7_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    hdmiClkN : out STD_LOGIC;
    hdmiClkP : out STD_LOGIC;
    hdmiDN : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmiDP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    i2sBClk : out STD_LOGIC;
    i2sDOut : out STD_LOGIC;
    i2sLRCk : out STD_LOGIC;
    i2sSClk : out STD_LOGIC;
    plClk : in STD_LOGIC;
    plKey : in STD_LOGIC;
    plLed : out STD_LOGIC;
    ps2aClock : inout STD_LOGIC;
    ps2aData : inout STD_LOGIC;
    ps2bClock : inout STD_LOGIC;
    ps2bData : inout STD_LOGIC
  );
end tangerineNX_Z7_wrapper;

architecture STRUCTURE of tangerineNX_Z7_wrapper is
  component tangerineNX_Z7 is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    plKey : in STD_LOGIC;
    plLed : out STD_LOGIC;
    plClk : in STD_LOGIC;
    hdmiClkP : out STD_LOGIC;
    hdmiClkN : out STD_LOGIC;
    hdmiDP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmiDN : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ps2aClock : inout STD_LOGIC;
    ps2aData : inout STD_LOGIC;
    ps2bClock : inout STD_LOGIC;
    ps2bData : inout STD_LOGIC;
    i2sSClk : out STD_LOGIC;
    i2sBClk : out STD_LOGIC;
    i2sLRCk : out STD_LOGIC;
    i2sDOut : out STD_LOGIC
  );
  end component tangerineNX_Z7;
begin
tangerineNX_Z7_i: component tangerineNX_Z7
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      hdmiClkN => hdmiClkN,
      hdmiClkP => hdmiClkP,
      hdmiDN(2 downto 0) => hdmiDN(2 downto 0),
      hdmiDP(2 downto 0) => hdmiDP(2 downto 0),
      i2sBClk => i2sBClk,
      i2sDOut => i2sDOut,
      i2sLRCk => i2sLRCk,
      i2sSClk => i2sSClk,
      plClk => plClk,
      plKey => plKey,
      plLed => plLed,
      ps2aClock => ps2aClock,
      ps2aData => ps2aData,
      ps2bClock => ps2bClock,
      ps2bData => ps2bData
    );
end STRUCTURE;
