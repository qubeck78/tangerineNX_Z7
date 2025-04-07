// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Mar 28 18:18:06 2025
// Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fontPROM_sim_netlist.v
// Design      : fontPROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fontPROM,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17744)
`pragma protect data_block
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
zhkWnG5MUCg09/ywvr9KWg4=
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
