// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Apr  3 16:06:58 2025
// Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gfxFbRam_sim_netlist.v
// Design      : gfxFbRam
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "gfxFbRam,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48768)
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
