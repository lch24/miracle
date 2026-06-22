// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed May 13 19:56:56 2026
// Host        : loong-arch-mini running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lch/work/miracle/chiplab/fpga/loongson/2023.2/system_run.runs/data_bank_sram_synth_1/data_bank_sram_sim_netlist.v
// Design      : data_bank_sram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_bank_sram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module data_bank_sram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
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
  (* C_INIT_FILE = "data_bank_sram.mem" *) 
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
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  data_bank_sram_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19792)
`pragma protect data_block
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
XtrBGGyxklofA/WtvQ==
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
