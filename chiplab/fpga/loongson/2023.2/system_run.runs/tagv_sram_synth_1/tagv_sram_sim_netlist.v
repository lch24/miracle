// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed May 13 19:56:55 2026
// Host        : loong-arch-mini running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lch/work/miracle/chiplab/fpga/loongson/2023.2/system_run.runs/tagv_sram_synth_1/tagv_sram_sim_netlist.v
// Design      : tagv_sram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tagv_sram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module tagv_sram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [20:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [20:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [20:0]dina;
  wire [20:0]douta;
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
  wire [20:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [20:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.08085 mW" *) 
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
  (* C_INIT_FILE = "tagv_sram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "21" *) 
  (* C_READ_WIDTH_B = "21" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "21" *) 
  (* C_WRITE_WIDTH_B = "21" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  tagv_sram_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[20:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[20:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20304)
`pragma protect data_block
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
rsZNzE16ooQYLKWe
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
