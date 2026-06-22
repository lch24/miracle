// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed May 13 19:56:55 2026
// Host        : loong-arch-mini running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lch/work/miracle/chiplab/IP/xilinx_ip/2023.2/dpram_512x32/dpram_512x32_sim_netlist.v
// Design      : dpram_512x32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dpram_512x32,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module dpram_512x32
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire [0:0]wea;
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
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.68295 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_INIT_FILE = "dpram_512x32.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dpram_512x32_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b1),
        .regceb(1'b1),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
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
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20528)
`pragma protect data_block
tMyjF30Nelt8YhebIHkJgd9niR5ibu4CkalETMGll6Fjn/DQWLvzJ10EKi5YVXEiOCwXfArHtSTv
IiuHid8og4c9ylzR+9V6BceNQDT/8b/nnHBzVdY8JGOumCA343x58VCC6KtbRSFVVRTsizMoPTxY
lwGxHYcyPHcis31NdsdBiEHyZYWC/t7QOk3BKYIFYOkiE36rgFn/l2zwMQ+BtIpe85EIvz9O706V
e4Fp3O1dVTJKFmovF9kKd7+qe85DNyzo7ZdxBrvMlim0haVDrRPzTor0cRYJhtKDQyLuBkEqOvWI
T5HJbrAMsiED+LD3NFzaGnvaXg/FVXwej08SMlG6pK1uVs84a/9nySV3nSIPLmXcwDuedCgofmg1
K2hISeTdq+P3NqCrvpLECkuketblPSNxu6qw0sYKJcjsgMrUXtSOV1HxVCglJmgUU02ooeK0jNI5
SYnpwbBILEHlndvijSVWPpWPdkrUSzLmDtIbgqeW2tBPfT+viHqGYS3HnCe/ilJFYFOuns7tCinM
NOnMowiRnwcrqjJDulIe7dVPgJnapZ7KRcReSyfngauwU8PSCf0M3yZlTa7443ujo5vfsdtrkk4s
WpcXCp7FkJ4YP+ApplLGHvQB332ob3UlImLnaL9+WqP6FC0THro3UJY0AkYa48NKSvGqcu3wZ0F/
gwzLv0SOyOyRn5qFJctt07J98nUiGXkfd5sZJOqJ6qrAavYrRt3ua7BSEqgayKtseX9Heme/rl3u
iFtSuSSxt4bnHOkQA/WYez/vOfEhQ4zlPnFcXyosIl4JDpCdefXOUYYzVQZ7o2pjw3Qq6z7qw9cp
llFPBV+x2pbNrzI9JuJUHaNsWLep2QyV5DjW3OfpLjTq/v7EplD98f+GCD4vIaH8ApLrAOwvtMvT
I48hD3UFSqJ/S7vSsqRqaMhhDJDaWuTVJqRqSnqvq5fCwt4P2bKYsSwDFUSnHXxfb4bSQw+TdcH8
n0CChSPFxwPEnidPWcVcmQAOnY5om0HxqQHnNnZ/aG52KJNLLiv7316mpOoRmFb/RNERhUSpEy24
CNrbmMe7oiGui9LxsRbj7wcb4EeMXkEVqknQYwrxFpD4+o9QwMPW5pQJ9tUB0Y/sZnq2hN+UH66q
mQR+VdhnBBoXF7j/qAf03ePWDGI6MW+InkqjhG70crqQRaN/EIBH6kuyiwX1Z7DaClke/sYrLE7l
27NNeX3tssCv2NeDT5ETPhvN7KwOoiEKF4Z7bU0WaGEg7oaZSdS2+S19NkJSk0IoBbdcm985AN9T
DXsERfpPe906MdKoD8Sx6nXZj9WqbQxwE5w+72iAwVMHhR+r/x1KAVJCbf8oE4+5A5kQRN5gl1oK
F8YDdnjo19zLGCk9cSB0pNlZtcDj0Wk6Zh7uo43Py31jJtAvltr+NAULoNB3UUiGmIgDnRzKD3Vj
MwGg2ME8gjGdF9gdiQEWAiCODQXrT2QUfwu33sdhwmkurdPlEiaLIAgOlGLlxzDPop4NPywIFeWD
mBaWa/zpz4aTZj13AdU3jc8ooU1bQs04JH0wfLt+BeSBYWK1wQ9RfLE7oJZGmepB8Y2Vu8ZjOfs9
SA2fE9cq7STNSkl2EspDKJltqCnmGlfLHl6gmqOeKT/y2ZOZ6Pe3d7t7sYKlGi5gjm+ydTNEMgQ7
PmShvCAfE/aHrbLZcd4GLUFny12B4Rq5MtvrS+wcrpbRA2KVHgb9a6xDvAf/fQ01Ix6yGpfwNpP5
hDEP7xYW2lvs6cOY84YSw6PIP1/jaPSHmkgNSp04ARXSHICK0lSMqEcHd2qBP8tsIIa45kkxNKsC
SJOM+ZG88iJWmsagtounPYaZcmd0QISBOyYqkzAV21TyoIXBziGwr2shWbJzKgKH9/rap2dvsY0Q
L9vzqd/JSFAFgSz3VtEIMm5kNxuFZio/uhpIlnunGWfFXbh95/yjakuUHTCG+hVOK+h3L+27r+iX
SVPk5fcPR8CDACYOtNqDXUbnyvufHyleBqFsU3VrYgNJhNVtXpgsAbvW79Sc96gx4GfWOB3PX7Lm
H7Zb6vHNMxCrY2gtflb8cGLfPM6qDtyT6TL7sQR0t6pfKVQejzNCZsxCfcqpT+q4uhZCZb+wzJNk
80bxX9Ox+J2KgwHMkWBfLiG/HMtFyW1WTo6I++UMlNkZCh7Kkwdr1r6QDeBQz2cwnn7lww26/ixG
6/7NrUFtDDXgOcejPb6r5d4y0LlAnRjQs/vEnynscXsp/uEw7rx0GzxDvpNF6XzydxYDkBjAciQ7
QcEdBn8kCvTjFGepSsokYzfpjJDJxfrn5suwKPi9pR1PKJM2qTd+oExg09oONwmEDeHZkXsVSDLM
cgoSvirY8OGQnIrPf0yXHNStqdGdfPwPxn79ZcznFXHiKQd3nE/rbOYiOwcJJNQCBP1qo6T7cJyJ
Gw+vRHEIjjK21j9oLcOdxuLi0HdmyGlWqlrMfG7anHg8u+3I33W8YJ2PaF2KvvhNau0MonvxGoRC
O0n3FViYN6t961S5Y/V16m6AyqlkO/SbthCgUFaDFbQpRCXP1yF8ZwDGY3pJu7BrXbWLQZQuujaH
fsvkUXwmsKyvdVWUF0bwV0pGTu+Vr1Si/fdI6JxywEcXvobby5X8NviYTMfjuDxADKi0RXOQZKLy
g0gbshPhX0a+lz5/BAx7xp1yZeDdupjz3Wvlkkw6SfCAZGKGi31osftXvKZrM7h4wREZFo844i/q
LSraDFalopVbOtwGW021lrBraY8jfEZ6PJGtrUHKcg8iZRRrFTRLVLiXuthhxNC9nHviIlnXd+FV
pKCzQeTVwzSXd7sQB/gXWC5qKF6Zus4aAdbKXtC3YNfxl6A0pYoL/OtHXqapijraaxa6wUYkO+Sg
mZaJyOD4qOK/jzeEPrECql89frJtsNAXuGPKIp4mnS7VM1loXc11xhg6MOdeYH1bQaXHx/PTrY3Z
PCBXNhGKq8z4aKsADCa6gNFH51C7dQt8NC9RRxrKqtbL9NEd858qGsCNfmkQr29JXLPZSMFm/2Lf
+hKq0Ph0yCRE9vIjwAOBg5A2293sLis4C5rJu+pM/7aD7O/kfV0/V6Gjaj9rEEdTAaYiahcgm/vY
BPkZbsQKlQf+ds/HkjmyZQLfF/xGeT5JsxqE2GSuXYPjjrwfB6gRQ0aMga43xQR7OaUsdGSloJzy
NLI1ogp0VrsYkTb1bW0k55zwSkElzJNkV+9/q1CwJiCcm3lcdH9Tgm2nvdB5/f/tiB/CrIUc0WG0
NIBDgkzPgWXltQ04EBklD2Hxe2pDqi+0jVKtODlK6l0MS3tUgBQVuHYnDP2mEg5PtbZdemKHvyu3
9SebNMF1nwfou2sFpdh4lzdioLJXLyJfjqBABu4rtCZGtnXm+ZsFUmvu7jinS8lrsexEv2h5uK98
AZv8TS7sKbKPfelk0daHcbXcBlv9lDly9lp/eWxh6xEYdhDw4B1e6ARsMhN7M3dT4x9LxXSEJfNN
0TEAzaCvANooNimfu/bw6P2bIiDWkUNXj5KrV9eR3LSD2S5lDUyVMDXAHhESPF5dj/vqeYp/Xrsf
6JXOsTLEgQTPkfo1wuNoVRjFDYPUmJ1jaxqrx5n7qUcsP4bP31oD6wW0g0SK83ybpxNRjh+2AIcK
Iba1giOR6rnByftQKBOdqT/XBFAP6Dho5wPZQD3tsyBnEgXgzXesHBz2FqqeGlzl/CfmlAYBIwmc
v2kIyk4eb0mGOEZQnwqxJGZ6JuOx6sn1rrGZGCxc3hlDyddG4BqTnafXT7eEbgcvvqqMbbWT4PGO
nA/P4gZPBfg8i3DRA7DeuG+Sy7IXJ42Er7R9iIgfR/U4kxi1BH8wTXTIopKiVOmYEtSsQvMmCVix
PX/7WfLA67/SG45bQRirr4l57tG8L5Ckh47su94hWKdUP9CnUpI1Upoo/U9DHcYIYjv7dalzdR94
1Zz+cD+0nNBm6iG1UFLFaT9OnSEIACOTviJKS+WvO3qHy5f4qGKlXCH5tagioGDypCrieKJdwtlE
MPjZCJmn8yGheW50wfh2Qpty5LN+snjLEqvLGK9SFjBOD7KhbLELPNohxpAeZ297PEWym+jwcMCk
TSVgFFCRfboFKcXKR0+5LDFF80vLizM+yXSVXJpo3c9GHXI7VY7AKmW9EumapGdPyGCjDeUAASHz
OHbI/km80LN6YJSS0ALekKQThH6ldCreaJUyqxxSNcOFoqFkMKC3JaPmAZXLNbEFTdV6DqJJBJRG
Li/Xhix9Cu3S4wU6BpOmpWO70OrdvoNxRls//8aE+G22WRwRcqnE8EyF4wcHu2+/MPF/1MrO2sH6
xvlHA0s7afd+jrq0eT9MY1F/3h9dPAFRG7GBvHCcVudpxYvATnczDY16SNOASA+zr4ePaFXH+Bdg
v6YokVgeFqi2EezxHOzwRqq1BEUFtOo8O61rz52uZ2b5siJlXgjk6Sgo9QhxTE7QLfIsP/jm5vb/
3YanhlZzcDy0YEi+UwB/gjYaAaJeKSN1GI7hECbB+hivqakNDcYNG4hjFqZafxQ/zaOSzhveTohL
kFwmMWviTDN4cEFM1aaR9aM3Lxc/zNIpg7gx+oouYBejFToKO05q3elchm4APLWjVXeTfyGzJ+I4
t18WqsRtKDn/n4Ov5te3+Do7laEEeBn799ToJ0N6Ledp+tZji/x78HzByx3d2IkDOf/LHNQoZ6yy
gs3BpKmQN89Kg8TzHM7XD7E8hpEkGAZNqkex6bgRLrjEV4rnejBBcecKQLNco0TY/3bDaLTUUf57
TGCqhe2Ie8rJoG5AflSUsDidzfRlZ5+c/3Ef3dV4P14kWlk6RTiNg1CKlRluqiw0tSeHKvHCwd1h
CXK/Uyl24nPh4YsDSNzO6cNRxus25DDRpP77RUr8mMAZdlRyASgmy8FpBlzhl0fup7O/OsxtEthp
eR8yAOr+gP8YCW2ZMghDTlDouUROLxPg/4eZky5O3YwmJ7sl1mo6pQKGu5cVFVueCl4N2kXFxa16
Tm2VocIS36r5WtGb5B3tSai6LsuRrg59YGmx7g71rZLrrclDT1tBTYvVBEkkmLFdkOItFFseb68e
x6oRP6aY9JojbLaziM9prxqTvsrawFrso4HuRvRncx9AC9ZE4tOHG6flZ10/ASXlXF/yNJER5mF7
46zGiedk1q4ryb87tVkGIl2+52JSMYvfA0cQBV0CB6KmLmT1UafkdnsnKrD9B6VAjO3UUp//kV1a
sx7M+jmR8G/xz08tdWpm2ei3ftTUTHdqUAk3MGA4wUZm20tCyg0ortYb+99rDFSo+iResPKJOtt8
Fz5XUO2qk9kBgpVo5hhfZ/F40ZC+JLvqumblCrzkzwDe6TD/3fs/MHRLlvqlql4OkoVuZBMTuPed
PV/pXM9naDKKn5lGvmiOyJChRZlF78C6cAHCLqOmI3w/QFt71N8DmpZTCpDkwQzC8yQjXqblxq82
8WvQLSvzAg8/RAZNCKhmUYolOc/CTdUb61Yec1pyMMHQACyNrK6WV7rL7q64Ozpm4VVilCMZ3M+N
D/g7RU7X5rAtybRhr4MG6CxIJDlxUZU3WUhwmpV7OojRQ+lohnMR5IGFa1mYcLtP//H/3DrztdNO
qijgGQbFXptlgdPWfgoi1ouDHyxbmU2uzkSkLJza7KSqz/Wna+8PLyC8p1d+PibSKglOEpBynr88
R0fhPrPvLUnM97M5X+Gc2fv1w26qIsOjpefUmSkz7RdsCfZQeVfCQeJnIZzdVAa+ZdEwwCIy+Hv0
VB8Ws2HDRmuh1q9xTwfrsLpUPY45kkN3M8e0YlwMxmCjEjtqnT8bBeBjYShHUlsARDzapbRYd5me
tp8zrezgIzqjTGYKfwwKWW9YIW+Bu5g4nH0dlsCpQJFgDx1gmX8zsFAIvucg+ac0tUDUxk1S2YAS
sb+Si0bfIO6LN9cYkmg/97ZgVkDMUuG/WNU6+kfaT6AvlTwG3lKPpzVdHVS4ADdjpXzfVuPmdVp4
oDqqVD3PMtQCvr77y9udpJHzxCYJtDsW5jaWyZGRDzjsGotB/9T6855yR3QgZLbZN7qMp1g933p9
EAOgzCQL10bTaeCfXYtgUDDJvS/JCtI9bYIoYNSeXWww6fb7XcbbTEx7Yiwv5V25I+SiZ2xY0XDd
cMKvGLdC4VjfwhG1GNGJ9/cJ8vPf3IwqKUgtDVlyVnwdOCAUyaz5+7Cam6mnvtB/8ENokZMkT/A5
uO3m/K/to96a6oPGUf3zWqFIgmz6etFhxb6FCuypnzF0KSJnemRO6H1EzWDOngx+pU8FxUBsTJQe
wAudu5xVBuwj2c0TH5aNGarBDe3JmhQI3FB8Q0+2t3OkKutQTRcG0mHhshzyD/JmZ2XIz6OlbemW
k9IWmxwH6Z2iIlAC812IG+Bx9bl3U4vunPmHJRIn4LznET7iA1+byz/zjDDpO9Soxav1vlEdwifs
gTJSYspBGlkcYMkvq6FCpEq2SSJfFwmYyA3bsZT5Nt7YrDEyPgclKI4vVnRiQvkXJqwvmdXHxv8T
URM71jobE8eQ09F8T8w9G0AbRrz4/ghxRebNax1lKMGp/Thu9uS/IW0Q93u2J6FtgwRZ+RpfyrLQ
OStoUSezVq/yVb78CdEvQQ2mXCFkuIy0P8fvzb9tRPYdIxkFre4VSLcE28anfwW7PLbGimd0hE6f
SWerV7fj2svLLs2+QZm1Xb3Gv2TuMY2/QJAwCsi/YyiTEaM/deZGGjx7gmmXypyUiXfnYfeR0FqZ
LBgAygwIGjbiCsrU1RIsA6gsiLyDwdjkKSCkoKfT2R3obms6qpEjKi+QOa9ag3Y9pvJ6b1MPAXTD
lZGRRhgtu3/C3gm3rROwhgRpEbK1iFtVml1Un9IMJudLwPRPZYVikJUdCik8VZNvIJibDklFx0eF
X2Gm503RrzZMwMqvYVShwHn6LXsSaF/Y+kPfrlmzpW2uIoxIXzKWmNVGO/CpPb6n7hLFfgBtsJ11
X+dp3cG12NLSVVz+zKM3IKyQAwwnu7J+6vJqgH8tbBer8yM9Qe7K6QA9pBT+fS1j4tjZEu32gGju
YZ3kNZP9o91XvkTbbSOTGP1YoKDP94dhXprOilhP5Pzv8+rISaSm9LQXFVbLYwZutIIrm7mNIafq
y1jcjJSypg7AEkRmfyV1KAaImThNkvi+GfzWvXWHcC+F4MZCNypmycYsb7FKx/XacfdNeIz/H8Yw
XoSQddTvD9g7z4MZtc1w8pelt3FyXquDOzBDGTSS8P/GGkKgUH4g94u8VQw220m7vc7rvUbRDFCV
AMJRmYJ4/wKybm6xlNjsGvnBxSoxYFK3t9ruq6IQIf+XNd9i0rIvWZulcR+e+9fdrj03G4o0mo5b
kU0axFb9+dU5NeIOUamRa4j7CN2zxUpHSiBJi1YcA2RmJWhVgvn3JLU+hhwRdR/xVKOyx0CmbWYI
9q0Y3xdxwR6ekqYEH6xSMrBonYJNAwhI8ZixciitDh/GT+anuPpwIwamQktAFZ5+EOagTtTWHRyM
kQlEcYlFdOWOfi75/EXXtace+4yCPxCtVLTnjwk3RbOoZRNCYM+Ynl2/niocU2uwCBrK54+2CIs9
xapczCYNTjcuEPRGF5Sp0RoHY0hWNE1D8gDy+YSTg7YwdQmTqcElPLj/SdIn474FGLhtCSeMtXBp
O5TH5wnBpNfGNeXx1MtRRLj2agmBQD5Oi9gvQQnm7WMAq6EuzANgp7pcx/sZvFRYp2ulLuyxAHeD
Mm64QiGPxjyZVmHd0IaqUgFlCG/Z0OesZjC+yiTAfr7Kjw6M8RjVWObS2ltKDndVgpNq4HaU2/p5
tmYemwKFR2g+Ygvixuc2VPy1dNlRY04Gvr6X+DE37zeRsJ9cFTT+xoXLEAx1KMCXtHk+TmEyOr7n
cX9jKHXhvN66ZGnOkqSj/snmrpD/FtZsrQYaGPj/vMLPmSU3e2MWUBfInKa9C5t5CuUHi8V6pNsU
u1BOGwdSOwH3WZY2sJzJAXwKNi+gTVQOACdAcYEQu1D4tlXOOmfDqxEdaACBb5HXPNMBGVB+VxWp
+zhrzqE9vaGFD18LV8rWziXYYonJ/bcgepUWdzpgbctzMdPrC2Ms4G9XnTz6tD3gnLAO7vPYIRl0
tcXYArCUJN0AkmqPWC5zljn2+8SOozqo9In4r6rl+PjhVsJVkUohYuty8S/N5uT0jrdP2QOyrSpZ
OrulZZErP338ocFA+NobP0hOv2YQ66OuJhhWPfcuJz0+d6YRP5zdVJknWTGnlHC/EfbqYZMG9mQ9
tOaSaj07jCsOpJ2UcqNT4xdd89NrBlu/lD7G2R3LtLEq5LfPlsPsd2W6cxsYyl1QPihYp+wjvNvM
zD+GmpD18kcOWPkM0o8mml7mnZZCdW6lvuKeyMNxT6er+RnMlAZxQiwR0QU6fWMcGnustJ9JXrw1
1Bln7f5ahQxYY4lCfU3cNrwQrIIYZlxIjgZJw6mkrsnlfkM4vC2iGgWllOz42Muuh3V0vGK8hxG0
9OJ5F4RFQ2DtFwskLBTgX1cxFHHLMQ0pzWAF49n06NN/bMP0YrBsbM8xs9jVqo/wnI/DUnuMWxBS
Vm7ce50EyiLCWdxq5TQQUw4q1tJTbH1s75wGzDwJEraKwqRGWa0dNI3BXCL2767i/ZraXCxyX/zS
LSDzPIrcF1Np5upCqd+9JbaTGf8XYzCmnTqVtU+vDrRg+UFGVThlyBv0DyhDbW7gAjB5LjeIwo70
fGg4zI5rK/cke5RNyoCeWg5Nq7iqlmmx/87LiET4GBcpvK5pWuCVz77sJuhay7KC14tpORL0xKBO
oVYLE3Oex1bKd2bus3Lopy1UrAKy9ZQ7kSm68W1Q6EwNIKzhNde7X+33jaR+9X6pN/gGTD8WVEa+
fw8P7iwvf5068w66cCjkipYzQAa3KAcZXAYD0jPJUdRBpAfh4NG+z5dwb8RUp9wZ42nDOjjQVygn
pgZabZhw6QNQBzpP4Ls/RBtct7hcZ+CeElDd56OPMzw9uA8geRdgs/cljBa9r8zpO3g/ULdcMNdO
VTJklijZg+iWfNFFRq6VYxSCruC8+bKZhkSHFbSxjhIZX1o0znl4lV/u+43woi9uV7hldncziRVF
zpcBP9zN5pIf9eAcXwqG8DL82uc/KYIi22/fU8c9wPN2IN0IWTFxVxfMtA+sak+2rflKqLU/F6NE
Y6x4xbxaqimtVymLZGL0Dt8hEP0LPBB5OWE7O4qIyAM1anWiArdvF7XwRE25P3bB9tFTQxIi5Yzo
D3qSAjTIfyKKPfxsZvfRg5C18LhEUSXZojK8bLa5vVxaaAiucXUyMYnytuGUuZsd/HOGbS/99MNm
TT77oTF4GoaOTSjY+1I4hxL6YPwSJMrD2mzCiSMiaIIbZpyJkb5siSoEOhdgHZNy2xGDJMvYqisw
4tEbaV4xFmVdv0zCmkhatG+4Vj9TiGt41eKNa5yJQM9fqpD+aFCk3TZTeJkXs7HjkvMM9xF2+ls8
GDgvgIqPdEvoM0CGbEmavg/OlVmGwH4YvheDSqBo8JP/a1FXe0PCKRvQu9gOXwouZHgMJEWYSxsO
CJ0IMhHTDC+ixpN2S+n0Y2cNatYVFTDSgqJoZ/oFp1rlBfLec8fDENReprC+ndtyP1qSWYaYqrEf
uq8zHZGJo020lDSsp7ifPWMxc1d46r4UCDAVssy0XpP726S8377GHUxTbNUG7UaaPxXKB9jaiZ2X
GoB0iHqsTD/iO6hsrAD+0gPMaRINEr5yyb5LcQkIfI3SwLMxcbXhh24r+YsXjB+/dab468dDVUBc
HZslDBs1K0Ipq56uhuzGpb1olAezdl5rNnA7HqOEtUCLBCN5ko6dlQl3y6xukWKLsAhIy+93N3Ea
JpLCsIFb1hOQAz/VoUeu1rsz674FCLFSxhTirZwq8awlW2FdualLYvCj+gUtzYUXWlerKvqqa2qp
Ynnl234bNdN+ntgDOgNhUHY8JR1Lv1W7Mfd5dXvvd0MFUWOXyjGBYNd3xFaQ6RM1PcLLs/7lcHUK
9aH0LC7dmzd4Hkp9P+JWzZev0ySeXAqdPI7TIOhjLZVpqckKU//2/YacqKh48N+R0E6T7yxT/TN6
hmAZaasv6UyQQzzjcUI9I/xWQPS2hUfPR4Ut4EDv9WEihPvWrqTaUHFSOvD0MknpSVaL/lOmM7wI
FG8izbjoT9HivSycoUBy/iiR6lP2nVfXfmVjJqdthwpxDb+NedeNAU6zwJDwxh0A7SOeb5jAxkPH
xmGNIJZJTgUEkRy8ghrVmWj64n58M/cw/f89aqX/HxE1u8iAYLzwrWcTR9Ipe+gPWWvRyofpDG+/
cDMP+7ANLnCF+9AOfU4lBrOqDVX9WDcyAHC8Ngz98Wem5yJHcMiu+u7gFlmX4VUV0wQCKozuV5RG
cwbY3d6KIof6CwMj+Vpw8BntdUiiB33smZJHc4uju0sjPS2308KYGN11rfHcDlzdtGJcbWqW93pv
aGCh/usm8jeT3uHZ1/smeDzMJ66w9A0SSAePWjfW16HcwS32sobjMakGj7mn7stVNlQUPkaSirDN
mExVYr/jyCtQoP33r26dTrs5shfIuCPHGZOBKgogcKqY5YofIRALDUof9tvv5938xNyUxAGUXQmS
7hLQu26ni/MklVfdw5Rxes4SeFjMq64HWQ17md6ZPtJ5l/+2EWswOUu95hX1R6BoUpDM/7wF0LJ+
Iq8m88gPltHUdX6n4Eo6gLdseintMBImVpbDCFWWU9k/lhD1gh+lwtgz23+Ie6VlcMEn3YzDsE9s
2NsOHz4G6tydU8CDTdZ9iifU8bctQsMjh1J5lTYJh92uIgvlD0qYbsayVW7YanIVJjL9q5kvnDK4
3TCiZPqxdi2VE9DNHnOZzZoJEIQdhFogiKGtW/0rftUTQD1sNbxbgA2ARw/Hg/6Znt/CnScoElgz
oOT35giji3z1S8871BTu2MHbPHSrA2ZqB55CLgsVdVk5V3OKcSnLgnK/vXL1XLbBmj2UWZGsAHpu
9ADe7Ye/rsyQOe6C2LJ3GenC/NNb+eqYEUPW2AMeB6XS3AIl9ojksBXmBdSk1N01Vz9e7eVW8MB1
2a5JY4rpcIbR+CwHgGvacSAulQTfem3it6l8xZLWK0s1Nw2DC9ECcfHp2/yb0hLu9wCez8gfKq7/
5djfFYR4L0BnZWnotbtqGYu3V7AOslYppI8TXegeCZ6+/2iBnh2hZgMPv6mqwIah0tXSH6GhasNg
1tv9A2Iyho4A9r6Z10E+B5cY95ol+lnUL3YQGDscNKketk8yWmNJlmkcdDvEVydE9oOGkfXnUpnC
z9vOjRu4rXRmILyyCwMxAwtSGfNkeNnXKiSbZn7NWzcZceHpri/u939fcVJQQUAfZN+eKSXVLbIr
yePc0yyCUAgjw0hVIJLoYIeChV0shlYhVl581sZWI6tSJfnTWSSj0Ul1gwpxOLaozuhSfs54OV5H
cURww68MMwHnBWKz16peQUURQlAcfvSQwMEZ9XDi8DT668XlmaWAvnTveJLq5tMQGfPL1059qq7H
iIq/yE52GzNR+58QFtu0Mv2GHycuZKmupt2ZSbwOPauG6j5y4OJTEQ1o9nnlQpSTgn1ho6xTYyMb
rBzwYZI27F35n4FBepG47xAg9h3M0Og1ASbTecXErcEaDM2L5BjNGqK7DALkS3haWeSMwBWsuTKF
KzTksfE6XSfP926OA7tVWJmNlQUtS63MO/P+pNANrCoxu6FsrjnE/l/8FwC03ucZ5A3uEWLF6con
3dnYFyRK58sDd1lwaj3DMIA/5qhgld8HZ3E0hNXMqbxnPY9HviuXDlra7e24ZBifKtjiCPgbvqjm
t1zlRwJdjUB5cIPBPzkP9jxbGN9MiMNW5gkE1y8oB5c5aoaf1/dne7oZVMrxod6aQk5D6Y9Q5T0y
t/SSYuapz/gUxfj92foOt4H5Pv1a/KkVTQ8HyndAAGGGkq9iAd3QyR3wczRASr5gcwdw8H8C6TcU
vJ/9dn86K1dPGB/YqUGHR0UlAExQJLCqnnA5r6zd7zNM4z6eExiNWdVSaF33dcIswbiANwdCZDYO
Voixcaywa2V2ZxVj16a7MTDtGrkHgNVgN/tJn6nfvOLgs8sJ/l5/Ovcaz2kpOzC0EnAho/QDUjix
gVbVxQAqiA1F8k09FHHXcX+a0EnxPmjEiX7/xoRRhG38lZfBYHA5JrnHZBGFkx38TMregM5y/bIE
VKYo7zB405zgJbvnjz9NG22mGC/lvvsqOVv+uM2g0fYe7oDtAVaXlqxMp7ySGFhKPfF3NfZTd6et
eJpC+JfwzSbUAJ7z6/fjHbXQjBhSNoRHaqiEJ+Nj+ZCXA+lzhzbZp1zduEzxNvbweS0y0g8neoBj
EBjYkLXyqAPpupeiWNzCeW/G/oMUFi8EBRJ9rL2wYgWI+RmlYt8VVhaKT+YyhcpVvXhvpu2L1yR6
h23rpQ9oF8f/8bXYpmSBIq8+w/eaaNfWH1bJvKARSZTkOsARa8kEgNoNam8MZxbecw6BmJNrDvlu
pjEZFNhomQXysBGtzQdYRdmJb+80/ZFZD0Nl1SmD1VV+tDZ4PHsUz1HFC703ey7tY1BwoUq6NNwY
ATChzU0w80PUAVyvixXRPqrMw2MkxieiZg0cT2dyu7RutmD6xP1Ai2bFbMPnLJZNCiL3XVjHlKju
VUWB0sQqWAmPMnT3/V42dIHR3xf7sEMqDhrw6YHFoslNFP5LQd8prpGWbgS47QIL73WbllQFeMiK
L7xY+l/iDOGmpMuvtJGfhUJGd9Z+HVml3g7fi2yT4VD2glNJwAFRIc/oSQYV+RP6aT66uOY37kS/
nyh/ofSGWkC8fdF4sTo6Kjd5usTiuZAXPje0zt+eJ2ueWgOdfG5tFn4py7thkf12sbdml0CnaEt0
/98twpqqmq63zIsFoAxwLMW2EFumLqDuDKQ++GKT3/9pdG1MnHGVVxmDW9LFhAUc+G3Z+uupfOcd
Xo07jZYdV6KDeKyGh3Bv2Qn7nkKBfOIOIqxQX8cLODasJwx3tt3e6fkYoK128J2m6vkrX2h9c7Nb
UzZ6EOi4tca4X3eTrt58uXZsEbQY+yLD3LBzoONX22EdBEH0B5g54h8l9SmTux55rSaX4mdE07sN
Fw4oSnjT02Mp9IH0LG7DfMEt/SmEvDyS43/wFCT8ejRQqNVeVFYtS1ozCZ35uIQL9jA2gTWbLRYu
LSYzgl4rdGt0rkD3UV8R3bssQ+iZIvvqs+N1qUi0ZYA0JvH9K83v/iVehk/uN0rSAirYzTKsMzF7
CTQqQftHXEhMIzkqRLUJQbrjsSl1hyCKDbe1R8q+bFTP8eb57uLYQj6H2rwuljdmq6FhfjjqVfol
PfnP/y0KB4tU1pU/HGwylQaq8dloFaEOj9mkfO7ySzTjMWj8hWLGp2JU2KlBbkwqMsAdX8C9lsUb
lqVSzni617JHpMJ/CU3MoQf5oUuQwD3ZDFP0t1uz9d4BYLgWYVB5wDTPJBNhgzwkwGryWt/k9kca
MOU07VapmiCO1e3YlXd1YoLbGNacyTfZ7vv6L+/etTvjQy1ORx1DcuDTURf31dIWVFQKlhTkdnaN
Dq82szuX6A2GAFg9qAzJ1upakzxyRM9wYWRJafh/2xSLR9KwKq0y5estjQD9SFbSYwebwIwQbjTU
90bhWb5eBPPmHoHOdvGAFBuqJryZngiN2g896DiV+y4do6fxG+3bi6llOycEz8iKaEYTOYGu582y
SIyg0lxzEsI2lsRQ1+bZzdGZpPwVlEOYWrT8wFxvEu/odT4oIJdUhss9r3df2KQ5sk7SR5uGrNgX
xMqIFKEQFfK8V/NTIdsDPiicX5JA7R+zO5gkTXyZCXT396DeHcJzZg6pLVFW7IuNzeOb5Jmw1brA
5RWyWoKUu8uVg4SEhSBS0PqExxl6KCyRFayjDWsGk3FLZHVdAbR7bLX6wOYtzcSWovH2mZGhA9mr
nFtZvsLihsyhtuP9iJX77ZjcBlSVHAt8UNEjQ0Q1SR3SSJI59EcJgKUoj+qbfgGtCgcKaXmvCxSQ
Uy8vGxodqHhbZbDWJaBwwzfpBdc/jn9wdXr880GyQwPlNj7lauSKKNul3e2aPL8Wfgq7ShbzJ9cH
zqNLXk4g1GNRaWlIkQ2eoKV+QIjMgBihgUiAVkumf631MyyuNV6d58MBCHgA0MF8toUuKeA6+0th
ZgEC9wUgWhf8AJBuS6ajDESkrcyD+HIfgjYZ61RdqSGBHvc6y3TXH4J6cwrp3wq9bpclNtIMlKxS
vEYlTGSoq9BrxPHFpuYjACvwIWRAvZjSDcs6Ofq3uAqXmk3TQSspv3fXZeJhQlvhd9zQDPFsuCag
Nur6PPqGOvrnKFabblaO9/KMOsVF65/jvMiy916qLY6Fz1XNRVkfOFYicPwkBNu4RH6OXkWG0MzE
e3/yK0c75OSB6uWM/4F+gZyBYA60HrVZ7KyWgTzHHnHmd9y735H+/ZOnue0Z3d/BNMn6Q28p7SfS
GpzjqctpYzcFLtco5Vb7lyRhnSqpzuFC1XZW/jPOS82Si0bnpMW1RkKzsKmfiriE/KjNwmlHOAmT
8Z0VsiYKUooqhN7atax1owNL5b4a7ckrbs+rRqpsGdxh2/Hudm2tM8wf/XKv1PacW08I5DWqA/tR
dwsMf/QY8ZxxqxXxxz2Hq9s6oh7l//qjUYrkr/KpQSENwTSjOlz4osoFsdgNGCz8Bv6Jhh39MlNX
eIYSIoaBUj2jNoM90c33P80LRXDHyP7YtyQHk8g8FDFmo3S8yjPRE7J1sHQlPF/Fg5JPhohvupYG
6C4kkWI6D2B4Ex8pqTsKbLt6nIYpQ5a+IzuZ92ZPRcWDR7qKw5Uhnw55OFz0SC3Ts7BzjNXljpT0
J+cXObrnO2vKIPjNj2vuJDMm+UHyiefc3xmi7R/WoGyckG768d711HCLwcodiXk0vIVgVDB9Yfy7
z+D4DeKPRJ7HZrlEp/ru59tiL0BOXiU97V+sMp+oA5tHFVirlQyY3bwU+2n31hwoezZoUGg2og3F
9PlQox7q8Rjjlnht9q69bskDlX7hgj0BkCHkBWAZARYtpMnH1w2EFHn5oauwK3jfE2jKRB2I4xzZ
eMDm5gSng/pRp71Oa/kjghFgX//b23jOEhYQRnJGHMXG3MUC61Ght/dpZqM4tJJeWMkqkcoT9GVn
2mU98v+nzDXqr+aCAChVQ7Z5wHj6qgfYfwS4iOPWzY+8HGHXpiE4akSY5+Y83+qpWfvqmSGl/uQw
In1aYfVPvf9UghByyoGCRkrLuvjIJbeJetlFuvA5QVSfI8No9VFPUMmSV00jWsYHMc/08DdRuHMm
p+/uDcoZ4w9FiRGv4rqjD2+nDyVacH0d7/Uk9XTRMTTxe3/HzaLupOoFQXGEPfTZtmKtKIqHP9R2
oc7VAl7SLBI4aBQLtRlkQM5+mKj4blba/CiQUVOB+bCYh4ukGlPMaDpov/EiNMKHTBMC8FqQPkes
Kly8ZakM/xCWDEwaFxnxv56nqCyq/IYVZAM6yW6FGdLkAjDUyROH9H9OUP6DDQiQGePQjZA0Ej/t
UcuAaorbp7d50og7pnm0EEVnoyGc0+IVd7b4JgsBE193Qirug3j0+EatSlxjEHJKNn4/nzdclBgA
C1RfI4a6AxH9gYF9rklrPN/Mv7tsVZUkqyCuEVmfaBydOxWWvvFBKIcaH+tr8Z6TIzPIlHnXnItV
t0jd5VMvwqnXffftJWCdWk2ZDB7oZqsIMpr7Tkr0XX+sm9OoQlKDVEw7MrnRo4fSvSrom0oxq9hH
m9ywtFC+F8i9DZSfjN7pKjE6mz2SW49LrJBe4FBnf0tB6G9rkK2iYcQ9zuNGf545yrKwx1clTQD2
IINC6SxSREUuZf44FAupnelcc3nQHv3jPg4PXXEX/PSgP7g0ULz1jaj6AW1KXDVcGKSM9kms24DD
Tu0OvXudccILDzKOKzAzngdi2j/oKt4cn1QjfW4HnC351Pk7KMkSQkYNuCBKp641jKRPKsIG8QsM
H+7urk7aPNSi4zpf+bGuDlBz+GoJbME+sQXwiVfZ5IIknytJODpsGJje12CAhrvjYcxv19CSvl9g
eo6y7Su1vyV/YI+EPJEj5hNDnU9vNG/kpO1T3qmTCyN3pYarpt3m/nfYNPyOaun2gYkQS5VMgT6E
MyhD1FoLYpG0PRLohHZP28sBnNwb4ytQ4ygIBK787KPB3giFQS2vdB+EvQ5dmHo7BtBuUQLB9im2
iu9KMf4rg5vDxDsx/E4eJpOP7tQLq7CqPVonwFlGm0GaVdaZOxhz59r2Lvkr288oah2xmwuVVp8d
6vLfAcVu9E6ClOYoypqG9L/+OI7Pz3w0KkVMJYzrHVgTpK3h1s0uwfQj6zXuDZObTYbX1+wN2b87
dB8H83IR+mYltsmC+YC0h51qwGVMjpOIkMPjeRmm81vliTaK4XWlU3NHupZ8ZakI91h+2t/uhTHv
Q/I1RjhvdS+hXFFRmLWOW2+B8ijTFI+EkKcWnH1/Q8jFkiy5k2wemXrc0rW9LPisrs0a71MHcEcn
8bMOx82nFrvNG14Skr6CsQUR/ZQHNorIWGrR9C0coGfDYZwB7CC7SS9kkbTT6LWS1FJOe5NtWHBG
Y6XxJo6yXaNNq0R29czfvb9M4f7sqnaPdhK3q/UnOKsxFNt1xKzG8JW0q016SJr1Kbg09x6wgAtP
Fao9JAW/nqym/9FKLpXhodCzK6zAZ70j9+pMMYCFczyJIt5tnV131bYenyfpMyZOT6z5Se4JN0Pm
cyDWLrO3J3LHS4aDUdE7mOIypZuSDfgV5R1I6CmM6Wz5csN991+0ebAQ+6gLMnpceNF+vYNVoiH2
6O6kpfgWyvVnUhoF3h35pmGtuWWP8Y5TjfcL9AeGNXcanqXbRhktgZsBjuRk1+R5EG3ddIDMqrUH
79hDUSDLJIOKVD1tCj5sJbZM+zTwGBEIREzEP5b/pj7rAiUnt/Ae26Py4NWZosAWw+rglPR7TIxW
xMrw9PmL+959N7eFM7rQM2Tq+UQdUHGGqi7VAw5bC/o1ofzQ/2lNvSqgD0CcsTo5XWE/6ddbWfQ8
O0g7t2a5Zr8dm2eQmSWUF+FFjjFv5bpH8dbZr3ObndJxguQenspE1yUp0ynJNBrxNTLpB4EHe/zI
jzhNlPWpcqZsk5PijFz2tgC5iqOtNtQAta0esSjsBGcgt7ijx3uPrHxg9x6gwuvG0fJVQfh5+KBU
OtroErQLFeUCZc5AZgkdgp06d2XfSheLRiBhD64ccL4PpjkeFlkWRZ1JJxyOchzAhLipSjNStK7n
hFDOMpmTneGb9UUNPjDSL5HZCcl/gpSK1odphteZdZEEYop5HzE/Tnwu/tLv2umBOwtIVd+Joi3a
DyoIwICa5xGResTeioq8IT1jYZvUxS0/WDcYLk5VqsK9I1obx6fHSj+r8VNYOfiMNCRsXeIpDFOb
22hevgktPpTBOZnRtadXuPQXF5yYWw5qABcGBzxy44UKP/OdyBwjw2T64LEn7t4s1Px7ejiDLBbZ
aPlK/miGeZ4xUZyZxY/bQVdbDUhkNyY62sJxynT4AEsWEZk1CjEvuB7CbHl6iSZBTvMf1NGs4nOT
ezv8oX1Yl8juFesSbhKh3INvSkuyvozTxdMjtHnUyPIFYDxb50ZxAyIBPhZZ+SjV9X41gDhNAkqe
CG1gKuSJVf6AaMfMMasHMAXDKHEKbQqHw0I5kul3DPVJOw6TZ494E7kP1UbGVypkiyHXWDKxAiHV
d5QlQmAKo2fGXOumpEibV2qR0p/GwMu2W9CvX7eUqDV34rUCLguFYvIINrb+qIcNTei7MsZWBN/k
CRktkqwUpuuIXxnQgnNZUtl9xv6UcpE9z+2HisLG8eHm7dArwxaYYqLOkLHSU8WCuhEK8RlXqMRU
oQLHwPEKo+dXcem/fZQxQAPOuAixECtcHLJBRvQ1OMbkPw/oa3X+8dUZcOPdjkmEzkHcQaRl2yrQ
7k9cmSrE7T6PL7rUrIsGjTZBXjbpluqoAny69u28V4ZNHIVsTyoXcCW/ClTxDI5ngoVIWOUezVoF
6uLJvJH3S7mBISIcP+cLkcHKI1dOJDc8WRtGE+h2siGj5xepBPAabpb7Hj3dVNwnh+IhHkXlTKJs
0YG+3QadW/V5usCQK1w0FJ9JOMHaA/O664UPcYkFIVxg41h3LZldVxuIqxlm5/RD5+spa5adPN2u
Rp1MIQ3eok6eBh/ZzCv4mg7OryDyCVOxjXsObPLO2hR/B4LRwrEWd9AmjIMyFhyPx040BOEFXY+o
77/OLaXA3K66UunH04ZZJ+UQsLUQ284SFlxFxSBnfNsJ/4fvajB59lH3RbF/X4kO/dVeHKKuQRJh
kK6m88LL+c/jkuZRzy6MQNtArToP96X9Xjhj226NBAOEd4Q2ntYufcZuNFpqPZ3hUcVuH5HF00Ji
Wo0j+5GXzdb/e2kcps9l3M8AQ5hleNm2VGcvTWtH/7JnL7eLiMHv5ryI2z53v+VUdSf5ZkFkEbnA
0gYFWnkWaEwLZDMCUcpdxKuk1iKYIq5mQ08ejdE/UIejNPkQcDSh2YHL+KQwVMQxrdRqLUVpBAYw
cjbqJnLrfMz14ZRrDkEdr8/6IX+b1OylU1C7Fh3NqDrOmUdsTNp1sgy3JpOuaZYJ+K3d8RlXPK89
cm0Rv0kSfN2wp7FslxX9Awn7B3Uy0yPNidS+C/YX6ZtX/n0pd45mMzRL0eBFbJDLsveKxWHDWTyc
ig5AbDeNzMPHGouaOCUOsBYK5PG9i/0ztHfCLVvW1NwR8Nv4YnDoFcxn6mDOIBcgprimETLt0ELU
Ix6oFfGpJBuxLbHpGVKK1/zXCLTcLuK/KEY0vN7QSijvnfIIECTqo/vLg/7AbC7PnY/RxgMOdBIK
4Egx67vDQYf59ddFjMaAhfwBU0x61Z/s06F94troHS7z8sjae9iPWzRbOSiO+oCvVpWvHqZc/rnW
LJS0N2tHEu7SnYgpyihXa5PeM/QOD7oi3Dzp2sczHVBRE3AOx5fXRxn2ZpVjzkqi7wS2ujipGn0Q
oUxBVx65LvczeAi6tY8iq6kkt6nRGQDqs2pXKKnmX2HcI9eKD8Unua0LdWRDrsn0Ufm79iU1rLK7
sba7mMXA3MNcp633AuoI0YbiiXveBomnQ3ffoWo0K/gAgiAWLe9r6qqOv0A2bvi7jvbLV3+KLu95
JmYHyeaqKCxN0UYZFhlH1ddMYcwspQjqhxQGRT38vjxCspbxTa2ahvDO1G041VRzXqXApYbp3Yur
bwsDLvjlMVJwXyuw7IX5an0hFdwje6qhSlICOw+jKMOISo75q9S2gOSCZHVv3C0hPR1a4p3D94gl
nePiyxmpuFSplLdgT6KwJUij6+qxmOVUVoe1FcjK7tDYbQPEQBE8sJoPiGcoimN8pkIevMy5WW1l
ciTBYavZM5nbSgSSlzHab9noqRkn6a1se/lrqooaZD3nrk2KdSGXqBJFuGhklGAq3VRmUDrc7W7+
ygt4fjuKCagD248QAlnXNAxIH+N1Zm3+N7kHqyX8jc1dged4vWNo1frt/ARl4kAzwvRHxHOpB6Xl
Z5Gttgpd1XXn7qXnoGNJWkO9BspJHodqICeeqbbRhLm0hop/R0LA0fiPzm1kQuDmtWqcU9c3hssM
6L4+qDD8xkKasL1UUMxiWiIr2/S8VtAdSmLRtcBIxAIiJuCtbAyJ3f+ut52+UbxqaMM9FP0aCZmt
khUBqmiESjQTCLXhwYs2g5cY9Fbqf/52qozGPhCqqSkB9ig6uHKEfM0yXOf/gltJ3CJbCZhmEj7f
Zi4QaplAN/A/o68cEkMcQ5ft8n4fP75rnOigbK7d+Oqs9LGokB1IjgLYMCavCzrXmv1iqu9oIQQc
YzEhnEKgtQwSX6PCeaF0KadLNMUDAXmbcfuhs15TGa9Fyu8MBWHEGpVUPRvP5fXEpOiKvyDr/R32
+ndqQsFCn/nXbVxSxDUbztP4budHdvnaapNDF3sdyNvcZKiFJ/vaC6NBWu1jXa3Caj6y37aFdCRG
KD9e3IOg2MZ0m2DOn518tUEPRzCwRh1BD8XQuruO8zs/DQB4cWu+BK4SGPrpJhNUrdjxi2u76U+G
9iyRHpiQu2yTQH8KDeZbrSD/SwJRteS2+meaIRr76F+dFiAf6hru7uhAjPzKK1/f739X6M48Iir2
i7xgvE4Uiwl4Jv6/mVsBAcZGp77hqvo2LiHiyvSPekyt5VB7cNrrNEbXIcZyV7FsGVhToQR104XL
SBXXTe8XRQJG/u7Jq1YIqqjOvzLGmW3ci9duk0vORqoEgx33i6Pod79DlfqPxOp1SVmAA/VnkeK1
u2j0kNfi3V5b1Q02lAm3zt60iNm7nNomGyVWuVQEBDaR3XhlhegpIeWWStzrRf2GMj08CU047UvH
sJLdutnUgzrS94SRPYJK3ivsv9+UpKLc/DrUrQ0thpN5ejB3i4SqcuAQ+8ZQku4jPUA0zkuB2wQZ
ZN0yWQbQWXba8PFv/Ag3ADqEImXJzzVglR1zaRY7M1CveB9FkroAKswl7k+Ef8kWtZ9twxPNIx+9
Ncp3ohp59FeGiE4qHoCqH+AS/6jxzAk/GpyWCAHqnLUM2ILwmTDw0vkEIE9FO8jv/CGDOkJhcdqF
9/fLynfS36Gf4612WUXMzMqhJlrn+Z1NOxZexNch+dBAdu5wf2JvYyzbCdZdmR0E2Wjj2Ep6bYHo
wr70/ZVycMiE/6VhInipsKphaUn32jex/4xjG4YSeWkAe5THsh/aUS5u//8zQh+0KGSsSW/CilGJ
ilCG89bsh704Z4z8Iuo4BSA+V200bBtGBq0Hwby0D/rEA/tj7E0o/TzvrGaS6tR5DLK0ScOlUQ+a
gvb4biJrsEoqCiV8IpjihosXBVoI+th+gUTk2YmXV3HZTGQ9UdmKTkCKwbAq5eRBbZbsTgVj3VMY
AX/hz3XvM1QJPBCMEJG+IDynfgEgotSY6PyfcrgByFV4JMXdOiNzlqfBum7ap/JB9nqCP+UOhYOZ
EUImDZQbAsGtnj26pXgezbgP6sp4MGhumwg64BREdrXCNpVnUk4atnxVf9Cmyoa/W+8fncX8IyXx
0O/LeBHhmax4hmV9ST6yaSg9ObZOIyeCD5QF/a/4f3MxiA+dWjydqdu+vQsj4dv+YcB8DA6gZLNn
fcWdDx2MXEI8lyPxpBudZHEYt/1zqR/2DRE5DkWo9OjwlVFkvF4p/lgvd6TTosq9rmqyXvxwlsJp
S7rsKpOxlv6RyxtS8cH2VrJiFQ4B6St6GgxJiHWNWPKPxpxvZ9lKJ/IWfEh6XNP82a3C1SomLmPt
g+NxKeuZmvWb2gNjocMCjHyP00FO4zou5EvMBq4WYZ2t8dou5DQrwSdc88h+r1Dig3NMb4Ay0WML
QaWVpyNoQfwmAqXSYIkfdhTwn4kNKUC1fxu9WLS5lYM8Lde11YnL+CJq8s7L5ZW1c54HErvglOmn
ugHm9060KetHlcxH4uu196CbeMRiMH4GLJeqX9QaytfHiETmm++QfkEVk/3krXE094Wd3aBwZamJ
NBrhb0oBEm4CZGIsuzfs7fcjGcq58aVHmGb2nkK89muhUxoxZX0daQBYX+I/W3RNtcFYri7wuoZn
r4dnfJUePanAR78l91LUeWX5aWFjh8kXfayT59kNc8dACzYcKOrmG658aapXq8gZv3IPr5l3xSqH
Ug7uoyRRYz8IcYn4++ULZa2kaoO53JYlTXc/Q4tp/mM5dEAnLACdYp+1Bk9WPl6zYNeNsKudBxnW
RNwFtouM2IznLeZNIcsXxnHTmp5OOnJle7YTyM06M3kvvotXgiR1QYWeD5CvRuUL0qOfNkbIN6xq
ItDRbRw6e85693anmfXf2N64kx+m7v49RI3UyCYyzjHNgEENANazaWCaYD8D+iCtyPcyxdwBS2YS
AgyDa0bg7SDUFJDUVxeqb1i7I4/x+cw7Cbmo/JFYBkmL4cl/TPh9800+ubvuE1WVXpmkleF5diKS
AeiJVTVwEw3n4P5GZKSroN7GqSt0HqPieVSVs3vk41/GsaoTW7yrSc0uXPcrQosI9EJLSN4AQjm5
ap6QErwO9rS6ojZrvUTeE6onzQ3fZGXbSSMs44cmPM9N7uRYeP0m5pLE+tknt1yQtH2JjLTs+pkO
V9KykdAbB0iI77wCq5xqMeOqlIKPYI92cFwmmhyyu1fnQVUpZe5O23JJqA3gerktkzpZA0qc/jFd
vD3lY7rmwwP/oNYoHD45cBfdvOU4qBN47P0R4CwkY3Zx4QHTdT5rumYGmbwQAmmGQWUaObnb9n5e
x9F6g+Z840mxqjBT4DUJ+SSFbSEukar1bd+cnlNIREH5LAyC0lSMQtiakiPWR34DZUnP8e6bc+lT
EcGwD1CQiWNZmIL+ZA2nnxdcsn/8Ma4BmfZYpIYv55IUIKNEfcFBSJU2kgEptIOPEifj/N9he7Kg
f0fd6tL8oQN0MpN2JlRSU2LF6dHlWe2Q1rtSOReMDhqnWjVP8X+TEATcMyEwk/yr8Yc+1FSZ9yDV
G0mHAcA9c4qK09PorZDDxT7ZKH554tB9UjLPOc59qhEhgGWWWNiQb7Jq8Hwve8scZRmaETbYHtmQ
kfIuM2STt145HSjdnyLOnvq2CiaBudfUJR0OZQN/PG4VKzGvJ4F055pEKKMIx6emKnFIkNkvb2Q4
Uedv5pIWshK6dkGSuObJlhxlKsHz6yR4O/lhCiekkwDsuvjDYSZGwZwp8nOU2ByKKjyqufRn5lVe
JXNnu4QcyiU6VLxUyb/0FukURaHatpehI2pbML2waV3/y283U4cvhYY29uTrnyC+rqwEvpXP9Hg8
tCS++lC6fe6HpJX/ex718Tmsak9DPTTmY1VE9qXOuiuNais8bEGgkTpbiHUxTQCt+2FG821npPxH
eCu0zSfZN0iudGmHYf6E9/vSloTn40kGsJ9GzlOD4nrj5cRDuH+DG+BnrUOr1BTQvee/I6QQpdUp
PwjGQ3U88obkuIKjSz9c5wkY0lf73nFoMXvSmt76Tg3J++0CoSddcRZBAj/DwpRUKV/Zir6zv3UT
jIs0CBbHA6kDP1Xm9XXnoWQWbefoj03FalWAjDlolytWdNwI9Ky85RyZHe7gjhn9vn0G3z+q7OP9
TTAhQSd43M5Qfdy9e8RiEVdvYWZ4NuekVFNtNAv+5U6cWhgA0TdVT488F+p+nvJd5w04CvRAercG
1Vkegu9i5L7M9QMvxnMmvvcv42fyhcueQgI9uQNJVjWnsnRZjqL2b2OtFo8LJnhWUw+eyfQgbPjj
1MtXK4LZI/GAK9IxfCu438fL5yu0o1w6iVHqbFbX5SAf6Wp4MPrR36SrpWde8OA9dM3yYolcUju2
PjbHtEE3ty/d39Rp1xW96Uu238/KLEqYqIBobRZ1qq1IJj0VOEpLQOnW59BFSIfC9NT5a2tUZlQE
hBO3gHHHGSmpR+WDQfKqsxNVS9Sk4PVzhJdt6dXZBk7sMJp2IaendW+ya83ZgM3xU+gWD0Y/lPzf
BsIYTLg5/56mMoIV+WzrI5+C+a4bnm7cHcLz+bSd17RwsNI6DL/UpukMqn0Yp8QSX1a5HKpHne3V
aToTo+2nBal73j+rfGg5uHBDikREkHVaPRHp01pr+w07xX5AM6DQYlrlhnzuyMbHXCIQYa7i62Mv
JSy0pTkijLUpa84dz22bfCyEFGilUl0IbyOxg2p1UIMnEFA/NxkK+89qsH3Ee5NoymI7ihs4sY5x
UrpzwHzC/iJ4HgULmPFhW+zr/GIYjNGum6pVUeN1u9TSnC699+jdcOIQ+zV6bBohxNh9SeAR+3RH
K4lIyn1Q8TfD9EWyvb5gI4s4yyalHKNlqvlE63gvlZd5O7h8h5tmF2Ibl8ygRh9H7XoO+dJA1PpC
x9276VpZrjyfK6m5QnODkv5BkvP+FwyfY1/jqYvzoU9vbNMTbvO2uyxCo2yw7YOJ6ahpoi1A0ctq
DbrGj6RCymbEGBgP2pl4+wcjxJaIGeuGmUYgaZzqnX6rux/jy1kSgrtGJR0EEBmuv4RujvNlCcQu
/kxA+R9wISnqdZnMcx7hQ8z/yKYJDUvEgYXuOAxxXupdA58iwiLpqNKNoKuJw2xsYlnXIKC1LpIn
HMjld6knDfkmeuAeao/SwCpYX+k33eeLxD/mJ3hgpaKEd/oUDGv8piPmcYHxkAvUNrqF2+Ap7DZT
G3iOPNoa6ejwJR6ovn8stlCT6VV8eDv13hSWGu9OH817JON5cxGXyspzvorWwg94PN2BooG6umWP
XXtRlRt3T7styVvKDO9JTszlLEeOvk7BIfUGaFVIekZmtuWP/W88gGkLazJFFDyekdctWnKWcWiU
IH7EabeqNtPrgiXUHN4YCj3kAu4z1Y034wrbxV+32wGuZiola3JrIdTuLyyoKKpyFqLH2wwhLnYo
adu7qT/hZpLqlJ4uwiXU3p7bnH9Zsw2MznkG2kCGFhUdUTNOdasRcgRmQGw6NgAasHRYJ7ap4c0D
//446BGpNpns5RBiPD0ZIZzi/8/WG0T13VYSmlsAadBB5DUDznltADVMs3g8ZbmopqiinZ7lIvnN
LczY5xXteaS43UMefYShjiaHPHhDFK5s68+ehOh6Eg1s8Vy3V1Be48WvO1i91vZqUY3wnJ+hWhcn
d3yTXIDD4jst+Zt+QHsC+ftXz0XndM9fPUZTXTFqoqe0wcPLKsSrftAhVA9rwdgX2rXENADtOr8E
CH5zeI4jzZ+fVk0gbGDU3RRnHDEi7p7n75OL1su/A0f9ivXubllzMmnBOV5R3enV9LYRTrkHi2ao
leRvJKmXYu1ugqPkncvhto78DMPRGY9BlEoiIQ0H7Q0XsfsYc6FYDcJ4QXsayLmcsoL2NUEiCD8Y
xGM3/mEPwHsbm3Cy9ap6qzqMIMZ+BQVuGi9Q9EPA+ISHL50d7l44EGm8J/POPZwZ47HschcItS/8
fTk31wemHBeF9AH1wCzT3o6B6H/drB1YSUyhj5nkjPUv5PFqKwxAmI4h6PAsRMSm/ROmompW+tyj
ESUrCKYPOA5oE262ZIC7F/OGAEr62knvve2zQ1Z5uKDYDHB0nimPKKh5BsBbYeptcBIN+ucObnFH
Sn+jIDIwIokjTFkwrJywcbrviIpUDEDNq4j0iGBzvCusPu3KZE9syZfriRzN8rmx8/q7Dvopqn5S
ApWtYLkwaHbMutV2tmbRaaxsCtCFVqbd0tAyCtOY1vwBani+qxjF1v8vFlRFmY6YvUwmELEvFNJx
uUutHsUCd6qROMDP8U632Ti/MyNrm32FuRaKngrAp6ngHBhLRCkFKw4FUuAKSrkFqy3CPcGg1eGs
fLM3pk5OtDnHOcbFf0DHPzF2JLfHw72BaTlUl9GdW1FrB/tNuPUmFgiK10cZb18PcWxLfOmIiGy/
ENZu6HDrXh0rYmD0mttkW7hXXb2ZhQKWpWf0ERlmfY4GNtSOhwrvQdaMyWxc77xEByYWBEFrcQjD
b2/MqdwrVvVOC4v86zDVvtDsDXVV55HKyEDvsnU/6pwQ8r/MLOXG96sQ/WXrrYKJpU46D89OnJB1
Vq0s5lWoQzQ4oKkNNcOAB04gyRZECJb4te30ZpnY6du1EG/d1DDMgEgy9AAa/JZkhun5Dhfz1lv/
ncgdWmkZRJoo7VtjD83un7esr585jfOtRIqDaemkC7NQg7mInFJMs8W0VuOuonitrxvl4PeBKeTM
nN2cjoQZ1Cn7q6M6WGaVNpLHJ0L5z4ezKuB0bx57QvjlHCRJ6Vbjhxs3ystxDFarJsiEXrcu8ZgR
O45IlehTdV9f8zBZuxxxxRjE2FNT7FlJOCS84A+t10Lk6aqQuAmdkQcSnfnbBL5cdGL2V/C1oGy/
3m+e8vna7ekViGmtCYXC0dyA2mIVd+Owg8B3edcbN2f7NuMsMOnf5HbJtsxf4HXDqdswvfeiJzfy
9qnbvrAPvpkou73YcCV7fFobfdIRiyQylLpk4UVZgm0YRuc3eoTNKn5mZ8kpBhP2inT3KLCiK4fu
UNGEOwYlwiVa+PaIUnSqQpRR9QuKUiklnRk0413fKdeAgN6XhCTJfu4PErIh8sskYEDtphoqAfuK
pc97zADVxVMTiERa0CfB/uu5COjZd/efaPDmgpZwkln5Eg+TM9QtNn92u91wYCfUq8bgaQeEdlod
lKB93KiX3LXyM2t3YiOBmBxi8BctSTD6grrHd67BvQ20FRg4/Yo3AsUFqfZdXT0nDyJdnSQmH+Ow
CdD/bAWCgqUcjTS0vbUOikRsuMVdJy/Sk2mw9qnZyoQuyIOfztTMJCGh2DglOm9piRBvmafvy2ol
W736ornvPxj0DPycEOsnlWi9NJl2eQomXmPnjChiaR/2z7fboVpSTIXIM/D6I8H52VVa1WBXdkgE
pzDiSEFojaQTrmCSjc/FUACDMdrnMwjaPJNeNysqUnNLSrYn7Q3wQ1n6rvNQAXEl1b5N3aqy/xOZ
EVX10CSnMCwfxeRrBW9hVcxLoMcIXB7eu7wJAMzNA1DIoZohk77B3AOnHtnKRxDlz7+k0nbL33R4
5J3JKMUxG5U7wPxtIhLITrbdYMulQn6Aqy+4cwMr9GhUNzZCjKs05mZBuaAxX/UFba9ruCBCPwuT
M2Ut7ficRgZxJNw/jAHkuv2iGXVbbnqNekxt4aG3QuBLFi6s4J1+Rw2vgr/EVs51qALWWgpecLH9
BsT+d17x549asfpZLrWCRqj9kzJJbfc47BojOpG8JigZOBHF++BedWYM4VSX592G3bB93n4pklqM
965+AcFgOoV1sfIMgC8+nw0LvxRFK3IW0XAtRz6shQgeoL3Au+N5Iqi/IhAIxYkvpXLnudoDzBZB
aZpmm+n0y1EDqw6rt5FRDi6I0dnoId3p3wuEhLlXdcllGw/3qeLjhqXKBe3VY3Ld9hy0sHOq9g5Y
2n6pmtdYBXdP4mzd+KyOvG9qnChi8X2dV4Qy78uD166ngejKsdMZPxUeFGKfif6yOYo7r4VZ65KA
8Jz7UJOylFG/OuMzF6B6IyfcAA4S8cAvGSCE4bgjHIjwgquS9jBcy9/WuUgjTO1NRRZ9eZblMDFn
xhO1j46Mk5a575iix4e9l/hqxCYEoTkpGagJOuYmoNC2SodA20S861rF989tgmUR8o+6B/6HxB9K
rfbPg+B1RJi0jbmtoGpPf/gfH05p4/m4b55gXRomJj/OqzFmKZi5Obi0d8geBvP5XiD4cTaMANi/
sDKRUr3YcQi7IISGo68FClwEOjT+cWKfmrbIFSWLaTOS8+quH7mBxnpI6pSMm6FT7H6vK+P5G/sd
jB+/gG4nmZI=
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
