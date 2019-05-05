// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sat May  4 15:36:18 2019
// Host        : catabit-UX430UAR running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_canny_edge_detection_0_1 -prefix
//               design_1_canny_edge_detection_0_1_ design_1_canny_edge_detection_0_1_stub.v
// Design      : design_1_canny_edge_detection_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "canny_edge_detection,Vivado 2017.4" *)
module design_1_canny_edge_detection_0_1(axis_in_TVALID, axis_in_TREADY, 
  axis_in_TDATA, axis_in_TKEEP, axis_in_TSTRB, axis_in_TUSER, axis_in_TLAST, axis_in_TID, 
  axis_in_TDEST, axis_out_TVALID, axis_out_TREADY, axis_out_TDATA, axis_out_TKEEP, 
  axis_out_TSTRB, axis_out_TUSER, axis_out_TLAST, axis_out_TID, axis_out_TDEST, ap_clk, 
  ap_rst_n)
/* synthesis syn_black_box black_box_pad_pin="axis_in_TVALID,axis_in_TREADY,axis_in_TDATA[23:0],axis_in_TKEEP[2:0],axis_in_TSTRB[2:0],axis_in_TUSER[0:0],axis_in_TLAST[0:0],axis_in_TID[0:0],axis_in_TDEST[0:0],axis_out_TVALID,axis_out_TREADY,axis_out_TDATA[7:0],axis_out_TKEEP[0:0],axis_out_TSTRB[0:0],axis_out_TUSER[0:0],axis_out_TLAST[0:0],axis_out_TID[0:0],axis_out_TDEST[0:0],ap_clk,ap_rst_n" */;
  input axis_in_TVALID;
  output axis_in_TREADY;
  input [23:0]axis_in_TDATA;
  input [2:0]axis_in_TKEEP;
  input [2:0]axis_in_TSTRB;
  input [0:0]axis_in_TUSER;
  input [0:0]axis_in_TLAST;
  input [0:0]axis_in_TID;
  input [0:0]axis_in_TDEST;
  output axis_out_TVALID;
  input axis_out_TREADY;
  output [7:0]axis_out_TDATA;
  output [0:0]axis_out_TKEEP;
  output [0:0]axis_out_TSTRB;
  output [0:0]axis_out_TUSER;
  output [0:0]axis_out_TLAST;
  output [0:0]axis_out_TID;
  output [0:0]axis_out_TDEST;
  input ap_clk;
  input ap_rst_n;
endmodule
