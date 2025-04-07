// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Mar 28 18:18:07 2025
// Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/qubeck/Documents/Development/ProjektyVHDL/Zynq7020CoreBoard/tangerineNX_Z7/tangerineNX_Z7.gen/sources_1/ip/fontPROM/fontPROM_sim_netlist.v
// Design      : fontPROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fontPROM,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module fontPROM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.2196 mW" *) 
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
  (* C_INIT_FILE = "fontPROM.mem" *) 
  (* C_INIT_FILE_NAME = "fontPROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  fontPROM_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17680)
`pragma protect data_block
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
UU0+OZKbvacvbw==
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
