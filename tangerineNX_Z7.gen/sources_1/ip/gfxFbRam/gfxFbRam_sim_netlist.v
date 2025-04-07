// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Apr  3 16:06:58 2025
// Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/qubeck/Documents/Development/ProjektyVHDL/Zynq7020CoreBoard/tangerineNX_Z7/tangerineNX_Z7.gen/sources_1/ip/gfxFbRam/gfxFbRam_sim_netlist.v
// Design      : gfxFbRam
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "gfxFbRam,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module gfxFbRam
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [63:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [10:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [63:0]dinb;
  wire [31:0]douta;
  wire [63:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     11.253301 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "gfxFbRam.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  gfxFbRam_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48560)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
