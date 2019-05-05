// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun May  5 14:02:14 2019
// Host        : catabit-UX430UAR running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/catabit/Zybo/SDCar/SDCarVivado/SDCarVivado.srcs/sources_1/bd/design_1/ip/design_1_pwmDriverAXI_0_0/design_1_pwmDriverAXI_0_0_sim_netlist.v
// Design      : design_1_pwmDriverAXI_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pwmDriverAXI_0_0,pwmRgbLed_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "pwmRgbLed_v1_0,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_pwmDriverAXI_0_0
   (pwm_out,
    reset_n,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [2:0]pwm_out;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW" *) input reset_n;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 5e+07, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 5e+07, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire [2:0]pwm_out;
  wire reset_n;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .pwm_out(pwm_out),
        .reset_n(reset_n),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "pwmRgbLed_v1_0" *) 
module design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rvalid,
    pwm_out,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    reset_n,
    s00_axi_araddr,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output s00_axi_rvalid;
  output [2:0]pwm_out;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input reset_n;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire [2:0]pwm_out;
  wire reset_n;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_WREADY),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0_S00_AXI pwmRgbLed_v1_0_S00_AXI_inst
       (.SR(axi_awready_i_1_n_0),
        .axi_arready_reg_0(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(axi_bvalid_i_1_n_0),
        .pwm_out(pwm_out),
        .reset_n(reset_n),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arready(S_AXI_ARREADY),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(S_AXI_AWREADY),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(S_AXI_WREADY),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "pwmRgbLed_v1_0_S00_AXI" *) 
module design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    pwm_out,
    s00_axi_rdata,
    SR,
    s00_axi_aclk,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wdata,
    reset_n,
    s00_axi_araddr,
    s00_axi_wstrb);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [2:0]pwm_out;
  output [31:0]s00_axi_rdata;
  input [0:0]SR;
  input s00_axi_aclk;
  input axi_wready_reg_0;
  input axi_arready_reg_0;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input reset_n;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]SR;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready_i_2_n_0;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire axi_wready_i_1_n_0;
  wire axi_wready_reg_0;
  wire \count[0][5]_i_2_n_0 ;
  wire \count[0][8]_i_2_n_0 ;
  wire \count[0][8]_i_3_n_0 ;
  wire \count[0][8]_i_4_n_0 ;
  wire [8:0]\count[0]_9 ;
  wire \count[1][5]_i_2_n_0 ;
  wire \count[1][8]_i_2_n_0 ;
  wire \count[1][8]_i_3_n_0 ;
  wire \count[1][8]_i_4_n_0 ;
  wire \count[1][8]_i_5_n_0 ;
  wire [8:0]\count[1]_11 ;
  wire \count[2][5]_i_2_n_0 ;
  wire \count[2][8]_i_2_n_0 ;
  wire \count[2][8]_i_3_n_0 ;
  wire [8:0]\count[2]_10 ;
  wire [8:0]\count_reg[0]_0 ;
  wire [8:0]\count_reg[1]_5 ;
  wire [8:0]\count_reg[2]_8 ;
  wire \half_duty[0][7]_i_2_n_0 ;
  wire \half_duty[0][7]_i_3_n_0 ;
  wire \half_duty[1][7]_i_2_n_0 ;
  wire \half_duty[2][7]_i_2_n_0 ;
  wire \half_duty_new[0][1]_i_1_n_0 ;
  wire \half_duty_new[0][2]_i_1_n_0 ;
  wire \half_duty_new[0][2]_i_2_n_0 ;
  wire \half_duty_new[0][2]_i_3_n_0 ;
  wire \half_duty_new[0][2]_i_4_n_0 ;
  wire \half_duty_new[0][2]_i_5_n_0 ;
  wire \half_duty_new[0][3]_i_1_n_0 ;
  wire \half_duty_new[0][3]_i_2_n_0 ;
  wire \half_duty_new[0][4]_i_1_n_0 ;
  wire \half_duty_new[0][4]_i_2_n_0 ;
  wire \half_duty_new[0][5]_i_1_n_0 ;
  wire \half_duty_new[0][5]_i_2_n_0 ;
  wire \half_duty_new[0][5]_i_3_n_0 ;
  wire \half_duty_new[0][5]_i_4_n_0 ;
  wire \half_duty_new[0][5]_i_5_n_0 ;
  wire \half_duty_new[0][5]_i_6_n_0 ;
  wire \half_duty_new[0][6]_i_1_n_0 ;
  wire \half_duty_new[0][6]_i_4_n_0 ;
  wire \half_duty_new[0][6]_i_5_n_0 ;
  wire \half_duty_new[0][7]_i_1_n_0 ;
  wire \half_duty_new[0][7]_i_2_n_0 ;
  wire \half_duty_new[0][7]_i_3_n_0 ;
  wire \half_duty_new[0][7]_i_4_n_0 ;
  wire \half_duty_new[0][7]_i_5_n_0 ;
  wire \half_duty_new[0][7]_i_6_n_0 ;
  wire \half_duty_new[0][7]_i_7_n_0 ;
  wire \half_duty_new[0][7]_i_8_n_0 ;
  wire \half_duty_new[1][1]_i_1_n_0 ;
  wire \half_duty_new[1][2]_i_1_n_0 ;
  wire \half_duty_new[1][2]_i_2_n_0 ;
  wire \half_duty_new[1][2]_i_3_n_0 ;
  wire \half_duty_new[1][2]_i_4_n_0 ;
  wire \half_duty_new[1][2]_i_5_n_0 ;
  wire \half_duty_new[1][3]_i_1_n_0 ;
  wire \half_duty_new[1][3]_i_2_n_0 ;
  wire \half_duty_new[1][4]_i_1_n_0 ;
  wire \half_duty_new[1][4]_i_2_n_0 ;
  wire \half_duty_new[1][5]_i_1_n_0 ;
  wire \half_duty_new[1][5]_i_2_n_0 ;
  wire \half_duty_new[1][5]_i_3_n_0 ;
  wire \half_duty_new[1][5]_i_4_n_0 ;
  wire \half_duty_new[1][5]_i_5_n_0 ;
  wire \half_duty_new[1][5]_i_6_n_0 ;
  wire \half_duty_new[1][6]_i_1_n_0 ;
  wire \half_duty_new[1][6]_i_4_n_0 ;
  wire \half_duty_new[1][6]_i_5_n_0 ;
  wire \half_duty_new[1][7]_i_1_n_0 ;
  wire \half_duty_new[1][7]_i_2_n_0 ;
  wire \half_duty_new[1][7]_i_3_n_0 ;
  wire \half_duty_new[1][7]_i_4_n_0 ;
  wire \half_duty_new[1][7]_i_5_n_0 ;
  wire \half_duty_new[1][7]_i_6_n_0 ;
  wire \half_duty_new[1][7]_i_7_n_0 ;
  wire \half_duty_new[1][7]_i_8_n_0 ;
  wire \half_duty_new[2][1]_i_1_n_0 ;
  wire \half_duty_new[2][2]_i_1_n_0 ;
  wire \half_duty_new[2][2]_i_2_n_0 ;
  wire \half_duty_new[2][2]_i_3_n_0 ;
  wire \half_duty_new[2][2]_i_4_n_0 ;
  wire \half_duty_new[2][2]_i_5_n_0 ;
  wire \half_duty_new[2][3]_i_1_n_0 ;
  wire \half_duty_new[2][3]_i_2_n_0 ;
  wire \half_duty_new[2][4]_i_1_n_0 ;
  wire \half_duty_new[2][4]_i_2_n_0 ;
  wire \half_duty_new[2][5]_i_1_n_0 ;
  wire \half_duty_new[2][5]_i_2_n_0 ;
  wire \half_duty_new[2][5]_i_3_n_0 ;
  wire \half_duty_new[2][5]_i_4_n_0 ;
  wire \half_duty_new[2][5]_i_5_n_0 ;
  wire \half_duty_new[2][5]_i_6_n_0 ;
  wire \half_duty_new[2][6]_i_1_n_0 ;
  wire \half_duty_new[2][6]_i_4_n_0 ;
  wire \half_duty_new[2][6]_i_5_n_0 ;
  wire \half_duty_new[2][7]_i_1_n_0 ;
  wire \half_duty_new[2][7]_i_2_n_0 ;
  wire \half_duty_new[2][7]_i_3_n_0 ;
  wire \half_duty_new[2][7]_i_4_n_0 ;
  wire \half_duty_new[2][7]_i_5_n_0 ;
  wire \half_duty_new[2][7]_i_6_n_0 ;
  wire \half_duty_new[2][7]_i_7_n_0 ;
  wire \half_duty_new[2][7]_i_8_n_0 ;
  wire [6:0]\half_duty_new_reg[0]10_in ;
  wire [22:1]\half_duty_new_reg[0]4 ;
  wire \half_duty_new_reg[0]4_carry__0_i_10_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_10_n_1 ;
  wire \half_duty_new_reg[0]4_carry__0_i_10_n_2 ;
  wire \half_duty_new_reg[0]4_carry__0_i_10_n_3 ;
  wire \half_duty_new_reg[0]4_carry__0_i_11_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_12_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_13_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_14_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_15_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_16_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_17_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_18_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_5_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_6_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_7_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_8_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_9_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_i_9_n_1 ;
  wire \half_duty_new_reg[0]4_carry__0_i_9_n_2 ;
  wire \half_duty_new_reg[0]4_carry__0_i_9_n_3 ;
  wire \half_duty_new_reg[0]4_carry__0_n_0 ;
  wire \half_duty_new_reg[0]4_carry__0_n_1 ;
  wire \half_duty_new_reg[0]4_carry__0_n_2 ;
  wire \half_duty_new_reg[0]4_carry__0_n_3 ;
  wire \half_duty_new_reg[0]4_carry__1_i_10_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_11_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_12_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_13_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_3_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_4_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_5_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_6_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_7_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_8_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_9_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_i_9_n_1 ;
  wire \half_duty_new_reg[0]4_carry__1_i_9_n_2 ;
  wire \half_duty_new_reg[0]4_carry__1_i_9_n_3 ;
  wire \half_duty_new_reg[0]4_carry__1_n_0 ;
  wire \half_duty_new_reg[0]4_carry__1_n_1 ;
  wire \half_duty_new_reg[0]4_carry__1_n_2 ;
  wire \half_duty_new_reg[0]4_carry__1_n_3 ;
  wire \half_duty_new_reg[0]4_carry__2_i_1_n_0 ;
  wire \half_duty_new_reg[0]4_carry__2_i_2_n_0 ;
  wire \half_duty_new_reg[0]4_carry__2_i_3_n_0 ;
  wire \half_duty_new_reg[0]4_carry__2_i_4_n_0 ;
  wire \half_duty_new_reg[0]4_carry__2_i_5_n_0 ;
  wire \half_duty_new_reg[0]4_carry__2_i_6_n_0 ;
  wire \half_duty_new_reg[0]4_carry__2_i_7_n_0 ;
  wire \half_duty_new_reg[0]4_carry__2_n_0 ;
  wire \half_duty_new_reg[0]4_carry__2_n_1 ;
  wire \half_duty_new_reg[0]4_carry__2_n_2 ;
  wire \half_duty_new_reg[0]4_carry__2_n_3 ;
  wire \half_duty_new_reg[0]4_carry_i_10_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_11_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_11_n_1 ;
  wire \half_duty_new_reg[0]4_carry_i_11_n_2 ;
  wire \half_duty_new_reg[0]4_carry_i_11_n_3 ;
  wire \half_duty_new_reg[0]4_carry_i_12_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_13_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_14_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_15_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_16_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_17_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_18_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_19_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_1_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_20_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_2_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_3_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_4_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_5_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_6_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_7_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_8_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_9_n_0 ;
  wire \half_duty_new_reg[0]4_carry_i_9_n_1 ;
  wire \half_duty_new_reg[0]4_carry_i_9_n_2 ;
  wire \half_duty_new_reg[0]4_carry_i_9_n_3 ;
  wire \half_duty_new_reg[0]4_carry_n_0 ;
  wire \half_duty_new_reg[0]4_carry_n_1 ;
  wire \half_duty_new_reg[0]4_carry_n_2 ;
  wire \half_duty_new_reg[0]4_carry_n_3 ;
  wire \half_duty_new_reg[0]50_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[0]50_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[0]50_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[0]50_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[0]50_carry__0_n_0 ;
  wire \half_duty_new_reg[0]50_carry__0_n_1 ;
  wire \half_duty_new_reg[0]50_carry__0_n_2 ;
  wire \half_duty_new_reg[0]50_carry__0_n_3 ;
  wire \half_duty_new_reg[0]50_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[0]50_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[0]50_carry__1_i_3_n_0 ;
  wire \half_duty_new_reg[0]50_carry__1_i_4_n_0 ;
  wire \half_duty_new_reg[0]50_carry__1_n_0 ;
  wire \half_duty_new_reg[0]50_carry__1_n_1 ;
  wire \half_duty_new_reg[0]50_carry__1_n_2 ;
  wire \half_duty_new_reg[0]50_carry__1_n_3 ;
  wire \half_duty_new_reg[0]50_carry__2_i_1_n_0 ;
  wire \half_duty_new_reg[0]50_carry__2_i_2_n_0 ;
  wire \half_duty_new_reg[0]50_carry__2_i_3_n_0 ;
  wire \half_duty_new_reg[0]50_carry__2_i_4_n_0 ;
  wire \half_duty_new_reg[0]50_carry__2_n_0 ;
  wire \half_duty_new_reg[0]50_carry__2_n_1 ;
  wire \half_duty_new_reg[0]50_carry__2_n_2 ;
  wire \half_duty_new_reg[0]50_carry__2_n_3 ;
  wire \half_duty_new_reg[0]50_carry__3_n_7 ;
  wire \half_duty_new_reg[0]50_carry_i_1_n_0 ;
  wire \half_duty_new_reg[0]50_carry_i_2_n_0 ;
  wire \half_duty_new_reg[0]50_carry_i_3_n_0 ;
  wire \half_duty_new_reg[0]50_carry_i_4_n_0 ;
  wire \half_duty_new_reg[0]50_carry_i_5_n_0 ;
  wire \half_duty_new_reg[0]50_carry_n_0 ;
  wire \half_duty_new_reg[0]50_carry_n_1 ;
  wire \half_duty_new_reg[0]50_carry_n_2 ;
  wire \half_duty_new_reg[0]50_carry_n_3 ;
  wire [18:8]\half_duty_new_reg[0]6 ;
  wire \half_duty_new_reg[0]6__26_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[0]6__26_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[0]6__26_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[0]6__26_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[0]6__26_carry__0_n_0 ;
  wire \half_duty_new_reg[0]6__26_carry__0_n_1 ;
  wire \half_duty_new_reg[0]6__26_carry__0_n_2 ;
  wire \half_duty_new_reg[0]6__26_carry__0_n_3 ;
  wire \half_duty_new_reg[0]6__26_carry__0_n_4 ;
  wire \half_duty_new_reg[0]6__26_carry__0_n_5 ;
  wire \half_duty_new_reg[0]6__26_carry__0_n_6 ;
  wire \half_duty_new_reg[0]6__26_carry__0_n_7 ;
  wire \half_duty_new_reg[0]6__26_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[0]6__26_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[0]6__26_carry__1_n_1 ;
  wire \half_duty_new_reg[0]6__26_carry__1_n_2 ;
  wire \half_duty_new_reg[0]6__26_carry__1_n_3 ;
  wire \half_duty_new_reg[0]6__26_carry__1_n_4 ;
  wire \half_duty_new_reg[0]6__26_carry__1_n_5 ;
  wire \half_duty_new_reg[0]6__26_carry__1_n_6 ;
  wire \half_duty_new_reg[0]6__26_carry__1_n_7 ;
  wire \half_duty_new_reg[0]6__26_carry_i_1_n_0 ;
  wire \half_duty_new_reg[0]6__26_carry_i_2_n_0 ;
  wire \half_duty_new_reg[0]6__26_carry_i_3_n_0 ;
  wire \half_duty_new_reg[0]6__26_carry_n_0 ;
  wire \half_duty_new_reg[0]6__26_carry_n_1 ;
  wire \half_duty_new_reg[0]6__26_carry_n_2 ;
  wire \half_duty_new_reg[0]6__26_carry_n_3 ;
  wire \half_duty_new_reg[0]6__26_carry_n_4 ;
  wire \half_duty_new_reg[0]6__26_carry_n_5 ;
  wire \half_duty_new_reg[0]6__26_carry_n_6 ;
  wire \half_duty_new_reg[0]6__53_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__0_i_5_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__0_i_6_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__0_i_7_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__0_i_8_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__0_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__0_n_1 ;
  wire \half_duty_new_reg[0]6__53_carry__0_n_2 ;
  wire \half_duty_new_reg[0]6__53_carry__0_n_3 ;
  wire \half_duty_new_reg[0]6__53_carry__0_n_4 ;
  wire \half_duty_new_reg[0]6__53_carry__0_n_5 ;
  wire \half_duty_new_reg[0]6__53_carry__0_n_6 ;
  wire \half_duty_new_reg[0]6__53_carry__0_n_7 ;
  wire \half_duty_new_reg[0]6__53_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__1_i_3_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__1_i_4_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__1_i_5_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__1_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry__1_n_1 ;
  wire \half_duty_new_reg[0]6__53_carry__1_n_2 ;
  wire \half_duty_new_reg[0]6__53_carry__1_n_3 ;
  wire \half_duty_new_reg[0]6__53_carry__1_n_4 ;
  wire \half_duty_new_reg[0]6__53_carry__1_n_5 ;
  wire \half_duty_new_reg[0]6__53_carry__1_n_6 ;
  wire \half_duty_new_reg[0]6__53_carry__1_n_7 ;
  wire \half_duty_new_reg[0]6__53_carry__2_n_3 ;
  wire \half_duty_new_reg[0]6__53_carry__2_n_6 ;
  wire \half_duty_new_reg[0]6__53_carry__2_n_7 ;
  wire \half_duty_new_reg[0]6__53_carry_i_1_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry_i_2_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry_i_3_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry_i_4_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry_i_5_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry_i_6_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry_i_7_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry_i_8_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry_n_0 ;
  wire \half_duty_new_reg[0]6__53_carry_n_1 ;
  wire \half_duty_new_reg[0]6__53_carry_n_2 ;
  wire \half_duty_new_reg[0]6__53_carry_n_3 ;
  wire \half_duty_new_reg[0]6__53_carry_n_4 ;
  wire \half_duty_new_reg[0]6__53_carry_n_5 ;
  wire \half_duty_new_reg[0]6__53_carry_n_6 ;
  wire \half_duty_new_reg[0]6_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[0]6_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[0]6_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[0]6_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[0]6_carry__0_n_0 ;
  wire \half_duty_new_reg[0]6_carry__0_n_1 ;
  wire \half_duty_new_reg[0]6_carry__0_n_2 ;
  wire \half_duty_new_reg[0]6_carry__0_n_3 ;
  wire \half_duty_new_reg[0]6_carry__0_n_4 ;
  wire \half_duty_new_reg[0]6_carry__0_n_5 ;
  wire \half_duty_new_reg[0]6_carry__0_n_6 ;
  wire \half_duty_new_reg[0]6_carry__0_n_7 ;
  wire \half_duty_new_reg[0]6_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[0]6_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[0]6_carry__1_n_1 ;
  wire \half_duty_new_reg[0]6_carry__1_n_3 ;
  wire \half_duty_new_reg[0]6_carry__1_n_6 ;
  wire \half_duty_new_reg[0]6_carry__1_n_7 ;
  wire \half_duty_new_reg[0]6_carry_i_1_n_0 ;
  wire \half_duty_new_reg[0]6_carry_i_2_n_0 ;
  wire \half_duty_new_reg[0]6_carry_i_3_n_0 ;
  wire \half_duty_new_reg[0]6_carry_n_0 ;
  wire \half_duty_new_reg[0]6_carry_n_1 ;
  wire \half_duty_new_reg[0]6_carry_n_2 ;
  wire \half_duty_new_reg[0]6_carry_n_3 ;
  wire \half_duty_new_reg[0]6_carry_n_4 ;
  wire \half_duty_new_reg[0]6_carry_n_5 ;
  wire \half_duty_new_reg[0]6_carry_n_6 ;
  wire \half_duty_new_reg[0]6_carry_n_7 ;
  wire \half_duty_new_reg[0]7 ;
  wire \half_duty_new_reg[0]7_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[0]7_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[0]7_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[0]7_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[0]7_carry__0_i_5_n_0 ;
  wire \half_duty_new_reg[0]7_carry__0_i_6_n_0 ;
  wire \half_duty_new_reg[0]7_carry__0_i_7_n_0 ;
  wire \half_duty_new_reg[0]7_carry__0_i_8_n_0 ;
  wire \half_duty_new_reg[0]7_carry__0_n_0 ;
  wire \half_duty_new_reg[0]7_carry__0_n_1 ;
  wire \half_duty_new_reg[0]7_carry__0_n_2 ;
  wire \half_duty_new_reg[0]7_carry__0_n_3 ;
  wire \half_duty_new_reg[0]7_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[0]7_carry_i_1_n_0 ;
  wire \half_duty_new_reg[0]7_carry_i_2_n_0 ;
  wire \half_duty_new_reg[0]7_carry_i_3_n_0 ;
  wire \half_duty_new_reg[0]7_carry_i_4_n_0 ;
  wire \half_duty_new_reg[0]7_carry_i_5_n_0 ;
  wire \half_duty_new_reg[0]7_carry_i_6_n_0 ;
  wire \half_duty_new_reg[0]7_carry_i_7_n_0 ;
  wire \half_duty_new_reg[0]7_carry_i_8_n_0 ;
  wire \half_duty_new_reg[0]7_carry_n_0 ;
  wire \half_duty_new_reg[0]7_carry_n_1 ;
  wire \half_duty_new_reg[0]7_carry_n_2 ;
  wire \half_duty_new_reg[0]7_carry_n_3 ;
  wire \half_duty_new_reg[0][6]_i_2_n_1 ;
  wire \half_duty_new_reg[0][6]_i_2_n_3 ;
  wire [7:0]\half_duty_new_reg[0]_1 ;
  wire [6:0]\half_duty_new_reg[1]10_in ;
  wire [22:1]\half_duty_new_reg[1]4 ;
  wire \half_duty_new_reg[1]4_carry__0_i_10_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_10_n_1 ;
  wire \half_duty_new_reg[1]4_carry__0_i_10_n_2 ;
  wire \half_duty_new_reg[1]4_carry__0_i_10_n_3 ;
  wire \half_duty_new_reg[1]4_carry__0_i_11_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_12_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_13_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_14_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_15_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_16_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_17_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_18_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_5_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_6_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_7_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_8_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_9_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_i_9_n_1 ;
  wire \half_duty_new_reg[1]4_carry__0_i_9_n_2 ;
  wire \half_duty_new_reg[1]4_carry__0_i_9_n_3 ;
  wire \half_duty_new_reg[1]4_carry__0_n_0 ;
  wire \half_duty_new_reg[1]4_carry__0_n_1 ;
  wire \half_duty_new_reg[1]4_carry__0_n_2 ;
  wire \half_duty_new_reg[1]4_carry__0_n_3 ;
  wire \half_duty_new_reg[1]4_carry__1_i_10_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_11_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_12_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_13_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_3_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_4_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_5_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_6_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_7_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_8_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_9_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_i_9_n_1 ;
  wire \half_duty_new_reg[1]4_carry__1_i_9_n_2 ;
  wire \half_duty_new_reg[1]4_carry__1_i_9_n_3 ;
  wire \half_duty_new_reg[1]4_carry__1_n_0 ;
  wire \half_duty_new_reg[1]4_carry__1_n_1 ;
  wire \half_duty_new_reg[1]4_carry__1_n_2 ;
  wire \half_duty_new_reg[1]4_carry__1_n_3 ;
  wire \half_duty_new_reg[1]4_carry__2_i_1_n_0 ;
  wire \half_duty_new_reg[1]4_carry__2_i_2_n_0 ;
  wire \half_duty_new_reg[1]4_carry__2_i_3_n_0 ;
  wire \half_duty_new_reg[1]4_carry__2_i_4_n_0 ;
  wire \half_duty_new_reg[1]4_carry__2_i_5_n_0 ;
  wire \half_duty_new_reg[1]4_carry__2_i_6_n_0 ;
  wire \half_duty_new_reg[1]4_carry__2_i_7_n_0 ;
  wire \half_duty_new_reg[1]4_carry__2_n_0 ;
  wire \half_duty_new_reg[1]4_carry__2_n_1 ;
  wire \half_duty_new_reg[1]4_carry__2_n_2 ;
  wire \half_duty_new_reg[1]4_carry__2_n_3 ;
  wire \half_duty_new_reg[1]4_carry_i_10_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_11_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_11_n_1 ;
  wire \half_duty_new_reg[1]4_carry_i_11_n_2 ;
  wire \half_duty_new_reg[1]4_carry_i_11_n_3 ;
  wire \half_duty_new_reg[1]4_carry_i_12_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_13_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_14_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_15_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_16_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_17_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_18_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_19_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_1_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_20_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_2_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_3_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_4_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_5_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_6_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_7_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_8_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_9_n_0 ;
  wire \half_duty_new_reg[1]4_carry_i_9_n_1 ;
  wire \half_duty_new_reg[1]4_carry_i_9_n_2 ;
  wire \half_duty_new_reg[1]4_carry_i_9_n_3 ;
  wire \half_duty_new_reg[1]4_carry_n_0 ;
  wire \half_duty_new_reg[1]4_carry_n_1 ;
  wire \half_duty_new_reg[1]4_carry_n_2 ;
  wire \half_duty_new_reg[1]4_carry_n_3 ;
  wire \half_duty_new_reg[1]50_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[1]50_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[1]50_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[1]50_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[1]50_carry__0_n_0 ;
  wire \half_duty_new_reg[1]50_carry__0_n_1 ;
  wire \half_duty_new_reg[1]50_carry__0_n_2 ;
  wire \half_duty_new_reg[1]50_carry__0_n_3 ;
  wire \half_duty_new_reg[1]50_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[1]50_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[1]50_carry__1_i_3_n_0 ;
  wire \half_duty_new_reg[1]50_carry__1_i_4_n_0 ;
  wire \half_duty_new_reg[1]50_carry__1_n_0 ;
  wire \half_duty_new_reg[1]50_carry__1_n_1 ;
  wire \half_duty_new_reg[1]50_carry__1_n_2 ;
  wire \half_duty_new_reg[1]50_carry__1_n_3 ;
  wire \half_duty_new_reg[1]50_carry__2_i_1_n_0 ;
  wire \half_duty_new_reg[1]50_carry__2_i_2_n_0 ;
  wire \half_duty_new_reg[1]50_carry__2_i_3_n_0 ;
  wire \half_duty_new_reg[1]50_carry__2_i_4_n_0 ;
  wire \half_duty_new_reg[1]50_carry__2_n_0 ;
  wire \half_duty_new_reg[1]50_carry__2_n_1 ;
  wire \half_duty_new_reg[1]50_carry__2_n_2 ;
  wire \half_duty_new_reg[1]50_carry__2_n_3 ;
  wire \half_duty_new_reg[1]50_carry__3_n_7 ;
  wire \half_duty_new_reg[1]50_carry_i_1_n_0 ;
  wire \half_duty_new_reg[1]50_carry_i_2_n_0 ;
  wire \half_duty_new_reg[1]50_carry_i_3_n_0 ;
  wire \half_duty_new_reg[1]50_carry_i_4_n_0 ;
  wire \half_duty_new_reg[1]50_carry_i_5_n_0 ;
  wire \half_duty_new_reg[1]50_carry_n_0 ;
  wire \half_duty_new_reg[1]50_carry_n_1 ;
  wire \half_duty_new_reg[1]50_carry_n_2 ;
  wire \half_duty_new_reg[1]50_carry_n_3 ;
  wire [18:8]\half_duty_new_reg[1]6 ;
  wire \half_duty_new_reg[1]6__26_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[1]6__26_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[1]6__26_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[1]6__26_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[1]6__26_carry__0_n_0 ;
  wire \half_duty_new_reg[1]6__26_carry__0_n_1 ;
  wire \half_duty_new_reg[1]6__26_carry__0_n_2 ;
  wire \half_duty_new_reg[1]6__26_carry__0_n_3 ;
  wire \half_duty_new_reg[1]6__26_carry__0_n_4 ;
  wire \half_duty_new_reg[1]6__26_carry__0_n_5 ;
  wire \half_duty_new_reg[1]6__26_carry__0_n_6 ;
  wire \half_duty_new_reg[1]6__26_carry__0_n_7 ;
  wire \half_duty_new_reg[1]6__26_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[1]6__26_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[1]6__26_carry__1_n_1 ;
  wire \half_duty_new_reg[1]6__26_carry__1_n_2 ;
  wire \half_duty_new_reg[1]6__26_carry__1_n_3 ;
  wire \half_duty_new_reg[1]6__26_carry__1_n_4 ;
  wire \half_duty_new_reg[1]6__26_carry__1_n_5 ;
  wire \half_duty_new_reg[1]6__26_carry__1_n_6 ;
  wire \half_duty_new_reg[1]6__26_carry__1_n_7 ;
  wire \half_duty_new_reg[1]6__26_carry_i_1_n_0 ;
  wire \half_duty_new_reg[1]6__26_carry_i_2_n_0 ;
  wire \half_duty_new_reg[1]6__26_carry_i_3_n_0 ;
  wire \half_duty_new_reg[1]6__26_carry_n_0 ;
  wire \half_duty_new_reg[1]6__26_carry_n_1 ;
  wire \half_duty_new_reg[1]6__26_carry_n_2 ;
  wire \half_duty_new_reg[1]6__26_carry_n_3 ;
  wire \half_duty_new_reg[1]6__26_carry_n_4 ;
  wire \half_duty_new_reg[1]6__26_carry_n_5 ;
  wire \half_duty_new_reg[1]6__26_carry_n_6 ;
  wire \half_duty_new_reg[1]6__53_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__0_i_5_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__0_i_6_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__0_i_7_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__0_i_8_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__0_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__0_n_1 ;
  wire \half_duty_new_reg[1]6__53_carry__0_n_2 ;
  wire \half_duty_new_reg[1]6__53_carry__0_n_3 ;
  wire \half_duty_new_reg[1]6__53_carry__0_n_4 ;
  wire \half_duty_new_reg[1]6__53_carry__0_n_5 ;
  wire \half_duty_new_reg[1]6__53_carry__0_n_6 ;
  wire \half_duty_new_reg[1]6__53_carry__0_n_7 ;
  wire \half_duty_new_reg[1]6__53_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__1_i_3_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__1_i_4_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__1_i_5_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__1_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry__1_n_1 ;
  wire \half_duty_new_reg[1]6__53_carry__1_n_2 ;
  wire \half_duty_new_reg[1]6__53_carry__1_n_3 ;
  wire \half_duty_new_reg[1]6__53_carry__1_n_4 ;
  wire \half_duty_new_reg[1]6__53_carry__1_n_5 ;
  wire \half_duty_new_reg[1]6__53_carry__1_n_6 ;
  wire \half_duty_new_reg[1]6__53_carry__1_n_7 ;
  wire \half_duty_new_reg[1]6__53_carry__2_n_3 ;
  wire \half_duty_new_reg[1]6__53_carry__2_n_6 ;
  wire \half_duty_new_reg[1]6__53_carry__2_n_7 ;
  wire \half_duty_new_reg[1]6__53_carry_i_1_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry_i_2_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry_i_3_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry_i_4_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry_i_5_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry_i_6_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry_i_7_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry_i_8_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry_n_0 ;
  wire \half_duty_new_reg[1]6__53_carry_n_1 ;
  wire \half_duty_new_reg[1]6__53_carry_n_2 ;
  wire \half_duty_new_reg[1]6__53_carry_n_3 ;
  wire \half_duty_new_reg[1]6__53_carry_n_4 ;
  wire \half_duty_new_reg[1]6__53_carry_n_5 ;
  wire \half_duty_new_reg[1]6__53_carry_n_6 ;
  wire \half_duty_new_reg[1]6_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[1]6_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[1]6_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[1]6_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[1]6_carry__0_n_0 ;
  wire \half_duty_new_reg[1]6_carry__0_n_1 ;
  wire \half_duty_new_reg[1]6_carry__0_n_2 ;
  wire \half_duty_new_reg[1]6_carry__0_n_3 ;
  wire \half_duty_new_reg[1]6_carry__0_n_4 ;
  wire \half_duty_new_reg[1]6_carry__0_n_5 ;
  wire \half_duty_new_reg[1]6_carry__0_n_6 ;
  wire \half_duty_new_reg[1]6_carry__0_n_7 ;
  wire \half_duty_new_reg[1]6_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[1]6_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[1]6_carry__1_n_1 ;
  wire \half_duty_new_reg[1]6_carry__1_n_3 ;
  wire \half_duty_new_reg[1]6_carry__1_n_6 ;
  wire \half_duty_new_reg[1]6_carry__1_n_7 ;
  wire \half_duty_new_reg[1]6_carry_i_1_n_0 ;
  wire \half_duty_new_reg[1]6_carry_i_2_n_0 ;
  wire \half_duty_new_reg[1]6_carry_i_3_n_0 ;
  wire \half_duty_new_reg[1]6_carry_n_0 ;
  wire \half_duty_new_reg[1]6_carry_n_1 ;
  wire \half_duty_new_reg[1]6_carry_n_2 ;
  wire \half_duty_new_reg[1]6_carry_n_3 ;
  wire \half_duty_new_reg[1]6_carry_n_4 ;
  wire \half_duty_new_reg[1]6_carry_n_5 ;
  wire \half_duty_new_reg[1]6_carry_n_6 ;
  wire \half_duty_new_reg[1]6_carry_n_7 ;
  wire \half_duty_new_reg[1]7 ;
  wire \half_duty_new_reg[1]7_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[1]7_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[1]7_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[1]7_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[1]7_carry__0_i_5_n_0 ;
  wire \half_duty_new_reg[1]7_carry__0_i_6_n_0 ;
  wire \half_duty_new_reg[1]7_carry__0_i_7_n_0 ;
  wire \half_duty_new_reg[1]7_carry__0_i_8_n_0 ;
  wire \half_duty_new_reg[1]7_carry__0_n_0 ;
  wire \half_duty_new_reg[1]7_carry__0_n_1 ;
  wire \half_duty_new_reg[1]7_carry__0_n_2 ;
  wire \half_duty_new_reg[1]7_carry__0_n_3 ;
  wire \half_duty_new_reg[1]7_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[1]7_carry_i_1_n_0 ;
  wire \half_duty_new_reg[1]7_carry_i_2_n_0 ;
  wire \half_duty_new_reg[1]7_carry_i_3_n_0 ;
  wire \half_duty_new_reg[1]7_carry_i_4_n_0 ;
  wire \half_duty_new_reg[1]7_carry_i_5_n_0 ;
  wire \half_duty_new_reg[1]7_carry_i_6_n_0 ;
  wire \half_duty_new_reg[1]7_carry_i_7_n_0 ;
  wire \half_duty_new_reg[1]7_carry_i_8_n_0 ;
  wire \half_duty_new_reg[1]7_carry_n_0 ;
  wire \half_duty_new_reg[1]7_carry_n_1 ;
  wire \half_duty_new_reg[1]7_carry_n_2 ;
  wire \half_duty_new_reg[1]7_carry_n_3 ;
  wire \half_duty_new_reg[1][6]_i_2_n_1 ;
  wire \half_duty_new_reg[1][6]_i_2_n_3 ;
  wire [7:0]\half_duty_new_reg[1]_3 ;
  wire [6:0]\half_duty_new_reg[2]10_in ;
  wire [22:1]\half_duty_new_reg[2]4 ;
  wire \half_duty_new_reg[2]4_carry__0_i_10_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_10_n_1 ;
  wire \half_duty_new_reg[2]4_carry__0_i_10_n_2 ;
  wire \half_duty_new_reg[2]4_carry__0_i_10_n_3 ;
  wire \half_duty_new_reg[2]4_carry__0_i_11_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_12_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_13_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_14_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_15_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_16_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_17_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_18_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_5_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_6_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_7_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_8_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_9_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_i_9_n_1 ;
  wire \half_duty_new_reg[2]4_carry__0_i_9_n_2 ;
  wire \half_duty_new_reg[2]4_carry__0_i_9_n_3 ;
  wire \half_duty_new_reg[2]4_carry__0_n_0 ;
  wire \half_duty_new_reg[2]4_carry__0_n_1 ;
  wire \half_duty_new_reg[2]4_carry__0_n_2 ;
  wire \half_duty_new_reg[2]4_carry__0_n_3 ;
  wire \half_duty_new_reg[2]4_carry__1_i_10_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_11_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_12_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_13_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_3_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_4_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_5_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_6_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_7_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_8_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_9_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_i_9_n_1 ;
  wire \half_duty_new_reg[2]4_carry__1_i_9_n_2 ;
  wire \half_duty_new_reg[2]4_carry__1_i_9_n_3 ;
  wire \half_duty_new_reg[2]4_carry__1_n_0 ;
  wire \half_duty_new_reg[2]4_carry__1_n_1 ;
  wire \half_duty_new_reg[2]4_carry__1_n_2 ;
  wire \half_duty_new_reg[2]4_carry__1_n_3 ;
  wire \half_duty_new_reg[2]4_carry__2_i_1_n_0 ;
  wire \half_duty_new_reg[2]4_carry__2_i_2_n_0 ;
  wire \half_duty_new_reg[2]4_carry__2_i_3_n_0 ;
  wire \half_duty_new_reg[2]4_carry__2_i_4_n_0 ;
  wire \half_duty_new_reg[2]4_carry__2_i_5_n_0 ;
  wire \half_duty_new_reg[2]4_carry__2_i_6_n_0 ;
  wire \half_duty_new_reg[2]4_carry__2_i_7_n_0 ;
  wire \half_duty_new_reg[2]4_carry__2_n_0 ;
  wire \half_duty_new_reg[2]4_carry__2_n_1 ;
  wire \half_duty_new_reg[2]4_carry__2_n_2 ;
  wire \half_duty_new_reg[2]4_carry__2_n_3 ;
  wire \half_duty_new_reg[2]4_carry_i_10_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_11_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_11_n_1 ;
  wire \half_duty_new_reg[2]4_carry_i_11_n_2 ;
  wire \half_duty_new_reg[2]4_carry_i_11_n_3 ;
  wire \half_duty_new_reg[2]4_carry_i_12_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_13_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_14_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_15_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_16_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_17_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_18_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_19_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_1_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_20_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_2_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_3_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_4_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_5_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_6_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_7_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_8_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_9_n_0 ;
  wire \half_duty_new_reg[2]4_carry_i_9_n_1 ;
  wire \half_duty_new_reg[2]4_carry_i_9_n_2 ;
  wire \half_duty_new_reg[2]4_carry_i_9_n_3 ;
  wire \half_duty_new_reg[2]4_carry_n_0 ;
  wire \half_duty_new_reg[2]4_carry_n_1 ;
  wire \half_duty_new_reg[2]4_carry_n_2 ;
  wire \half_duty_new_reg[2]4_carry_n_3 ;
  wire \half_duty_new_reg[2]50_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[2]50_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[2]50_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[2]50_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[2]50_carry__0_n_0 ;
  wire \half_duty_new_reg[2]50_carry__0_n_1 ;
  wire \half_duty_new_reg[2]50_carry__0_n_2 ;
  wire \half_duty_new_reg[2]50_carry__0_n_3 ;
  wire \half_duty_new_reg[2]50_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[2]50_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[2]50_carry__1_i_3_n_0 ;
  wire \half_duty_new_reg[2]50_carry__1_i_4_n_0 ;
  wire \half_duty_new_reg[2]50_carry__1_n_0 ;
  wire \half_duty_new_reg[2]50_carry__1_n_1 ;
  wire \half_duty_new_reg[2]50_carry__1_n_2 ;
  wire \half_duty_new_reg[2]50_carry__1_n_3 ;
  wire \half_duty_new_reg[2]50_carry__2_i_1_n_0 ;
  wire \half_duty_new_reg[2]50_carry__2_i_2_n_0 ;
  wire \half_duty_new_reg[2]50_carry__2_i_3_n_0 ;
  wire \half_duty_new_reg[2]50_carry__2_i_4_n_0 ;
  wire \half_duty_new_reg[2]50_carry__2_n_0 ;
  wire \half_duty_new_reg[2]50_carry__2_n_1 ;
  wire \half_duty_new_reg[2]50_carry__2_n_2 ;
  wire \half_duty_new_reg[2]50_carry__2_n_3 ;
  wire \half_duty_new_reg[2]50_carry__3_n_7 ;
  wire \half_duty_new_reg[2]50_carry_i_1_n_0 ;
  wire \half_duty_new_reg[2]50_carry_i_2_n_0 ;
  wire \half_duty_new_reg[2]50_carry_i_3_n_0 ;
  wire \half_duty_new_reg[2]50_carry_i_4_n_0 ;
  wire \half_duty_new_reg[2]50_carry_i_5_n_0 ;
  wire \half_duty_new_reg[2]50_carry_n_0 ;
  wire \half_duty_new_reg[2]50_carry_n_1 ;
  wire \half_duty_new_reg[2]50_carry_n_2 ;
  wire \half_duty_new_reg[2]50_carry_n_3 ;
  wire [18:8]\half_duty_new_reg[2]6 ;
  wire \half_duty_new_reg[2]6__26_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[2]6__26_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[2]6__26_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[2]6__26_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[2]6__26_carry__0_n_0 ;
  wire \half_duty_new_reg[2]6__26_carry__0_n_1 ;
  wire \half_duty_new_reg[2]6__26_carry__0_n_2 ;
  wire \half_duty_new_reg[2]6__26_carry__0_n_3 ;
  wire \half_duty_new_reg[2]6__26_carry__0_n_4 ;
  wire \half_duty_new_reg[2]6__26_carry__0_n_5 ;
  wire \half_duty_new_reg[2]6__26_carry__0_n_6 ;
  wire \half_duty_new_reg[2]6__26_carry__0_n_7 ;
  wire \half_duty_new_reg[2]6__26_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[2]6__26_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[2]6__26_carry__1_n_1 ;
  wire \half_duty_new_reg[2]6__26_carry__1_n_2 ;
  wire \half_duty_new_reg[2]6__26_carry__1_n_3 ;
  wire \half_duty_new_reg[2]6__26_carry__1_n_4 ;
  wire \half_duty_new_reg[2]6__26_carry__1_n_5 ;
  wire \half_duty_new_reg[2]6__26_carry__1_n_6 ;
  wire \half_duty_new_reg[2]6__26_carry__1_n_7 ;
  wire \half_duty_new_reg[2]6__26_carry_i_1_n_0 ;
  wire \half_duty_new_reg[2]6__26_carry_i_2_n_0 ;
  wire \half_duty_new_reg[2]6__26_carry_i_3_n_0 ;
  wire \half_duty_new_reg[2]6__26_carry_n_0 ;
  wire \half_duty_new_reg[2]6__26_carry_n_1 ;
  wire \half_duty_new_reg[2]6__26_carry_n_2 ;
  wire \half_duty_new_reg[2]6__26_carry_n_3 ;
  wire \half_duty_new_reg[2]6__26_carry_n_4 ;
  wire \half_duty_new_reg[2]6__26_carry_n_5 ;
  wire \half_duty_new_reg[2]6__26_carry_n_6 ;
  wire \half_duty_new_reg[2]6__53_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__0_i_5_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__0_i_6_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__0_i_7_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__0_i_8_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__0_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__0_n_1 ;
  wire \half_duty_new_reg[2]6__53_carry__0_n_2 ;
  wire \half_duty_new_reg[2]6__53_carry__0_n_3 ;
  wire \half_duty_new_reg[2]6__53_carry__0_n_4 ;
  wire \half_duty_new_reg[2]6__53_carry__0_n_5 ;
  wire \half_duty_new_reg[2]6__53_carry__0_n_6 ;
  wire \half_duty_new_reg[2]6__53_carry__0_n_7 ;
  wire \half_duty_new_reg[2]6__53_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__1_i_3_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__1_i_4_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__1_i_5_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__1_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry__1_n_1 ;
  wire \half_duty_new_reg[2]6__53_carry__1_n_2 ;
  wire \half_duty_new_reg[2]6__53_carry__1_n_3 ;
  wire \half_duty_new_reg[2]6__53_carry__1_n_4 ;
  wire \half_duty_new_reg[2]6__53_carry__1_n_5 ;
  wire \half_duty_new_reg[2]6__53_carry__1_n_6 ;
  wire \half_duty_new_reg[2]6__53_carry__1_n_7 ;
  wire \half_duty_new_reg[2]6__53_carry__2_n_3 ;
  wire \half_duty_new_reg[2]6__53_carry__2_n_6 ;
  wire \half_duty_new_reg[2]6__53_carry__2_n_7 ;
  wire \half_duty_new_reg[2]6__53_carry_i_1_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry_i_2_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry_i_3_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry_i_4_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry_i_5_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry_i_6_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry_i_7_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry_i_8_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry_n_0 ;
  wire \half_duty_new_reg[2]6__53_carry_n_1 ;
  wire \half_duty_new_reg[2]6__53_carry_n_2 ;
  wire \half_duty_new_reg[2]6__53_carry_n_3 ;
  wire \half_duty_new_reg[2]6__53_carry_n_4 ;
  wire \half_duty_new_reg[2]6__53_carry_n_5 ;
  wire \half_duty_new_reg[2]6__53_carry_n_6 ;
  wire \half_duty_new_reg[2]6_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[2]6_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[2]6_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[2]6_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[2]6_carry__0_n_0 ;
  wire \half_duty_new_reg[2]6_carry__0_n_1 ;
  wire \half_duty_new_reg[2]6_carry__0_n_2 ;
  wire \half_duty_new_reg[2]6_carry__0_n_3 ;
  wire \half_duty_new_reg[2]6_carry__0_n_4 ;
  wire \half_duty_new_reg[2]6_carry__0_n_5 ;
  wire \half_duty_new_reg[2]6_carry__0_n_6 ;
  wire \half_duty_new_reg[2]6_carry__0_n_7 ;
  wire \half_duty_new_reg[2]6_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[2]6_carry__1_i_2_n_0 ;
  wire \half_duty_new_reg[2]6_carry__1_n_1 ;
  wire \half_duty_new_reg[2]6_carry__1_n_3 ;
  wire \half_duty_new_reg[2]6_carry__1_n_6 ;
  wire \half_duty_new_reg[2]6_carry__1_n_7 ;
  wire \half_duty_new_reg[2]6_carry_i_1_n_0 ;
  wire \half_duty_new_reg[2]6_carry_i_2_n_0 ;
  wire \half_duty_new_reg[2]6_carry_i_3_n_0 ;
  wire \half_duty_new_reg[2]6_carry_n_0 ;
  wire \half_duty_new_reg[2]6_carry_n_1 ;
  wire \half_duty_new_reg[2]6_carry_n_2 ;
  wire \half_duty_new_reg[2]6_carry_n_3 ;
  wire \half_duty_new_reg[2]6_carry_n_4 ;
  wire \half_duty_new_reg[2]6_carry_n_5 ;
  wire \half_duty_new_reg[2]6_carry_n_6 ;
  wire \half_duty_new_reg[2]6_carry_n_7 ;
  wire \half_duty_new_reg[2]7 ;
  wire \half_duty_new_reg[2]7_carry__0_i_1_n_0 ;
  wire \half_duty_new_reg[2]7_carry__0_i_2_n_0 ;
  wire \half_duty_new_reg[2]7_carry__0_i_3_n_0 ;
  wire \half_duty_new_reg[2]7_carry__0_i_4_n_0 ;
  wire \half_duty_new_reg[2]7_carry__0_i_5_n_0 ;
  wire \half_duty_new_reg[2]7_carry__0_i_6_n_0 ;
  wire \half_duty_new_reg[2]7_carry__0_i_7_n_0 ;
  wire \half_duty_new_reg[2]7_carry__0_i_8_n_0 ;
  wire \half_duty_new_reg[2]7_carry__0_n_0 ;
  wire \half_duty_new_reg[2]7_carry__0_n_1 ;
  wire \half_duty_new_reg[2]7_carry__0_n_2 ;
  wire \half_duty_new_reg[2]7_carry__0_n_3 ;
  wire \half_duty_new_reg[2]7_carry__1_i_1_n_0 ;
  wire \half_duty_new_reg[2]7_carry_i_1_n_0 ;
  wire \half_duty_new_reg[2]7_carry_i_2_n_0 ;
  wire \half_duty_new_reg[2]7_carry_i_3_n_0 ;
  wire \half_duty_new_reg[2]7_carry_i_4_n_0 ;
  wire \half_duty_new_reg[2]7_carry_i_5_n_0 ;
  wire \half_duty_new_reg[2]7_carry_i_6_n_0 ;
  wire \half_duty_new_reg[2]7_carry_i_7_n_0 ;
  wire \half_duty_new_reg[2]7_carry_i_8_n_0 ;
  wire \half_duty_new_reg[2]7_carry_n_0 ;
  wire \half_duty_new_reg[2]7_carry_n_1 ;
  wire \half_duty_new_reg[2]7_carry_n_2 ;
  wire \half_duty_new_reg[2]7_carry_n_3 ;
  wire \half_duty_new_reg[2][6]_i_2_n_1 ;
  wire \half_duty_new_reg[2][6]_i_2_n_3 ;
  wire [7:0]\half_duty_new_reg[2]_6 ;
  wire \half_duty_reg[0]0 ;
  wire [7:0]\half_duty_reg[0]_2 ;
  wire \half_duty_reg[1]0 ;
  wire [7:0]\half_duty_reg[1]_4 ;
  wire \half_duty_reg[2]0 ;
  wire [7:0]\half_duty_reg[2]_7 ;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [2:0]pwm_out;
  wire pwm_out0;
  wire pwm_out01_in;
  wire pwm_out04_in;
  wire pwm_out0_carry_i_1_n_0;
  wire pwm_out0_carry_i_2_n_0;
  wire pwm_out0_carry_i_3_n_0;
  wire pwm_out0_carry_i_4_n_0;
  wire pwm_out0_carry_i_5_n_0;
  wire pwm_out0_carry_i_6_n_0;
  wire pwm_out0_carry_n_2;
  wire pwm_out0_carry_n_3;
  wire \pwm_out0_inferred__0/i__carry_n_2 ;
  wire \pwm_out0_inferred__0/i__carry_n_3 ;
  wire \pwm_out0_inferred__1/i__carry_n_2 ;
  wire \pwm_out0_inferred__1/i__carry_n_3 ;
  wire pwm_out1;
  wire pwm_out10_out;
  wire pwm_out11_out;
  wire pwm_out1_carry_i_1_n_0;
  wire pwm_out1_carry_i_2_n_0;
  wire pwm_out1_carry_i_3_n_0;
  wire pwm_out1_carry_n_2;
  wire pwm_out1_carry_n_3;
  wire \pwm_out1_inferred__1/i__carry_n_2 ;
  wire \pwm_out1_inferred__1/i__carry_n_3 ;
  wire \pwm_out1_inferred__3/i__carry_n_2 ;
  wire \pwm_out1_inferred__3/i__carry_n_3 ;
  wire \pwm_out[0]_i_1_n_0 ;
  wire \pwm_out[1]_i_1_n_0 ;
  wire \pwm_out[2]_i_1_n_0 ;
  wire \pwm_out[2]_i_2_n_0 ;
  wire [31:0]reg_data_out;
  wire reset_n;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_wren__2;
  wire [3:0]\NLW_half_duty_new_reg[0]4_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[0]4_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[0]4_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[0]4_carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[0]50_carry_O_UNCONNECTED ;
  wire [0:0]\NLW_half_duty_new_reg[0]50_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[0]50_carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[0]50_carry__3_O_UNCONNECTED ;
  wire [0:0]\NLW_half_duty_new_reg[0]6__26_carry_O_UNCONNECTED ;
  wire [3:3]\NLW_half_duty_new_reg[0]6__26_carry__1_CO_UNCONNECTED ;
  wire [0:0]\NLW_half_duty_new_reg[0]6__53_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[0]6__53_carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[0]6__53_carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[0]6_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[0]6_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[0]7_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[0]7_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[0]7_carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[0]7_carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[0][6]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[0][6]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[1]4_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[1]4_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[1]4_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[1]4_carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[1]50_carry_O_UNCONNECTED ;
  wire [0:0]\NLW_half_duty_new_reg[1]50_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[1]50_carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[1]50_carry__3_O_UNCONNECTED ;
  wire [0:0]\NLW_half_duty_new_reg[1]6__26_carry_O_UNCONNECTED ;
  wire [3:3]\NLW_half_duty_new_reg[1]6__26_carry__1_CO_UNCONNECTED ;
  wire [0:0]\NLW_half_duty_new_reg[1]6__53_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[1]6__53_carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[1]6__53_carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[1]6_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[1]6_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[1]7_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[1]7_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[1]7_carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[1]7_carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[1][6]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[1][6]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[2]4_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[2]4_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[2]4_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[2]4_carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[2]50_carry_O_UNCONNECTED ;
  wire [0:0]\NLW_half_duty_new_reg[2]50_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[2]50_carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[2]50_carry__3_O_UNCONNECTED ;
  wire [0:0]\NLW_half_duty_new_reg[2]6__26_carry_O_UNCONNECTED ;
  wire [3:3]\NLW_half_duty_new_reg[2]6__26_carry__1_CO_UNCONNECTED ;
  wire [0:0]\NLW_half_duty_new_reg[2]6__53_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[2]6__53_carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[2]6__53_carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[2]6_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[2]6_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[2]7_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[2]7_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[2]7_carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_half_duty_new_reg[2]7_carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[2][6]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[2][6]_i_2_O_UNCONNECTED ;
  wire [3:3]NLW_pwm_out0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_out0_carry_O_UNCONNECTED;
  wire [3:3]\NLW_pwm_out0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_pwm_out0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_pwm_out0_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_pwm_out0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:3]NLW_pwm_out1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_out1_carry_O_UNCONNECTED;
  wire [3:3]\NLW_pwm_out1_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_pwm_out1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_pwm_out1_inferred__3/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_pwm_out1_inferred__3/i__carry_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(SR));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(SR));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awready),
        .I4(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awready),
        .I4(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(s00_axi_awready),
        .R(SR));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_reg_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg2[0]),
        .I1(slv_reg3[0]),
        .I2(slv_reg0[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg2[10]),
        .I1(slv_reg3[10]),
        .I2(slv_reg0[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg2[11]),
        .I1(slv_reg3[11]),
        .I2(slv_reg0[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg2[12]),
        .I1(slv_reg3[12]),
        .I2(slv_reg0[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg2[13]),
        .I1(slv_reg3[13]),
        .I2(slv_reg0[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg2[14]),
        .I1(slv_reg3[14]),
        .I2(slv_reg0[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg2[15]),
        .I1(slv_reg3[15]),
        .I2(slv_reg0[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg2[16]),
        .I1(slv_reg3[16]),
        .I2(slv_reg0[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg2[17]),
        .I1(slv_reg3[17]),
        .I2(slv_reg0[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg2[18]),
        .I1(slv_reg3[18]),
        .I2(slv_reg0[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg2[19]),
        .I1(slv_reg3[19]),
        .I2(slv_reg0[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg2[1]),
        .I1(slv_reg3[1]),
        .I2(slv_reg0[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg2[20]),
        .I1(slv_reg3[20]),
        .I2(slv_reg0[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg2[21]),
        .I1(slv_reg3[21]),
        .I2(slv_reg0[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg2[22]),
        .I1(slv_reg3[22]),
        .I2(slv_reg0[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg2[23]),
        .I1(slv_reg3[23]),
        .I2(slv_reg0[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg2[24]),
        .I1(slv_reg3[24]),
        .I2(slv_reg0[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg2[25]),
        .I1(slv_reg3[25]),
        .I2(slv_reg0[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg2[26]),
        .I1(slv_reg3[26]),
        .I2(slv_reg0[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg2[27]),
        .I1(slv_reg3[27]),
        .I2(slv_reg0[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg2[28]),
        .I1(slv_reg3[28]),
        .I2(slv_reg0[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg2[29]),
        .I1(slv_reg3[29]),
        .I2(slv_reg0[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg2[2]),
        .I1(slv_reg3[2]),
        .I2(slv_reg0[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg2[30]),
        .I1(slv_reg3[30]),
        .I2(slv_reg0[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg2[31]),
        .I1(slv_reg3[31]),
        .I2(slv_reg0[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg2[3]),
        .I1(slv_reg3[3]),
        .I2(slv_reg0[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg2[4]),
        .I1(slv_reg3[4]),
        .I2(slv_reg0[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg2[5]),
        .I1(slv_reg3[5]),
        .I2(slv_reg0[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg2[6]),
        .I1(slv_reg3[6]),
        .I2(slv_reg0[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg2[7]),
        .I1(slv_reg3[7]),
        .I2(slv_reg0[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg2[8]),
        .I1(slv_reg3[8]),
        .I2(slv_reg0[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg2[9]),
        .I1(slv_reg3[9]),
        .I2(slv_reg0[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(SR));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_reg_0),
        .Q(s00_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[0][0]_i_1 
       (.I0(\count[0][8]_i_3_n_0 ),
        .I1(\count_reg[0]_0 [0]),
        .O(\count[0]_9 [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count[0][1]_i_1 
       (.I0(\count_reg[0]_0 [1]),
        .I1(\count_reg[0]_0 [0]),
        .I2(\count[0][8]_i_3_n_0 ),
        .O(\count[0]_9 [1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \count[0][2]_i_1 
       (.I0(\count_reg[0]_0 [0]),
        .I1(\count_reg[0]_0 [1]),
        .I2(\count_reg[0]_0 [2]),
        .I3(\count[0][8]_i_3_n_0 ),
        .O(\count[0]_9 [2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \count[0][3]_i_1 
       (.I0(\count[0][8]_i_3_n_0 ),
        .I1(\count_reg[0]_0 [2]),
        .I2(\count_reg[0]_0 [1]),
        .I3(\count_reg[0]_0 [0]),
        .I4(\count_reg[0]_0 [3]),
        .O(\count[0]_9 [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \count[0][4]_i_1 
       (.I0(\count[0][8]_i_3_n_0 ),
        .I1(\count_reg[0]_0 [0]),
        .I2(\count_reg[0]_0 [1]),
        .I3(\count_reg[0]_0 [2]),
        .I4(\count_reg[0]_0 [3]),
        .I5(\count_reg[0]_0 [4]),
        .O(\count[0]_9 [4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \count[0][5]_i_1 
       (.I0(\count[0][5]_i_2_n_0 ),
        .I1(\count[0][8]_i_3_n_0 ),
        .I2(\count_reg[0]_0 [5]),
        .O(\count[0]_9 [5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \count[0][5]_i_2 
       (.I0(\count_reg[0]_0 [0]),
        .I1(\count_reg[0]_0 [1]),
        .I2(\count_reg[0]_0 [2]),
        .I3(\count_reg[0]_0 [3]),
        .I4(\count_reg[0]_0 [4]),
        .O(\count[0][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \count[0][6]_i_1 
       (.I0(\count[0][8]_i_2_n_0 ),
        .I1(\count[0][8]_i_3_n_0 ),
        .I2(\count_reg[0]_0 [6]),
        .O(\count[0]_9 [6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \count[0][7]_i_1 
       (.I0(\count[0][8]_i_2_n_0 ),
        .I1(\count_reg[0]_0 [6]),
        .I2(\count[0][8]_i_3_n_0 ),
        .I3(\count_reg[0]_0 [7]),
        .O(\count[0]_9 [7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \count[0][8]_i_1 
       (.I0(\count_reg[0]_0 [6]),
        .I1(\count[0][8]_i_2_n_0 ),
        .I2(\count_reg[0]_0 [7]),
        .I3(\count[0][8]_i_3_n_0 ),
        .I4(\count_reg[0]_0 [8]),
        .O(\count[0]_9 [8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[0][8]_i_2 
       (.I0(\count_reg[0]_0 [5]),
        .I1(\count_reg[0]_0 [4]),
        .I2(\count_reg[0]_0 [3]),
        .I3(\count_reg[0]_0 [2]),
        .I4(\count_reg[0]_0 [1]),
        .I5(\count_reg[0]_0 [0]),
        .O(\count[0][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFFF)) 
    \count[0][8]_i_3 
       (.I0(\half_duty[0][7]_i_2_n_0 ),
        .I1(\count_reg[0]_0 [0]),
        .I2(\count_reg[0]_0 [1]),
        .I3(\count_reg[0]_0 [2]),
        .I4(\count_reg[0]_0 [4]),
        .I5(\count[0][8]_i_4_n_0 ),
        .O(\count[0][8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \count[0][8]_i_4 
       (.I0(\count_reg[0]_0 [6]),
        .I1(\count_reg[0]_0 [8]),
        .O(\count[0][8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[1][0]_i_1 
       (.I0(\count[1][8]_i_3_n_0 ),
        .I1(\count_reg[1]_5 [0]),
        .O(\count[1]_11 [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count[1][1]_i_1 
       (.I0(\count[1][8]_i_3_n_0 ),
        .I1(\count_reg[1]_5 [0]),
        .I2(\count_reg[1]_5 [1]),
        .O(\count[1]_11 [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \count[1][2]_i_1 
       (.I0(\count[1][8]_i_3_n_0 ),
        .I1(\count_reg[1]_5 [0]),
        .I2(\count_reg[1]_5 [1]),
        .I3(\count_reg[1]_5 [2]),
        .O(\count[1]_11 [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \count[1][3]_i_1 
       (.I0(\count[1][8]_i_3_n_0 ),
        .I1(\count_reg[1]_5 [1]),
        .I2(\count_reg[1]_5 [0]),
        .I3(\count_reg[1]_5 [2]),
        .I4(\count_reg[1]_5 [3]),
        .O(\count[1]_11 [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \count[1][4]_i_1 
       (.I0(\count[1][8]_i_3_n_0 ),
        .I1(\count_reg[1]_5 [3]),
        .I2(\count_reg[1]_5 [2]),
        .I3(\count_reg[1]_5 [0]),
        .I4(\count_reg[1]_5 [1]),
        .I5(\count_reg[1]_5 [4]),
        .O(\count[1]_11 [4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \count[1][5]_i_1 
       (.I0(\count[1][5]_i_2_n_0 ),
        .I1(\count[1][8]_i_3_n_0 ),
        .I2(\count_reg[1]_5 [5]),
        .O(\count[1]_11 [5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \count[1][5]_i_2 
       (.I0(\count_reg[1]_5 [4]),
        .I1(\count_reg[1]_5 [3]),
        .I2(\count_reg[1]_5 [2]),
        .I3(\count_reg[1]_5 [0]),
        .I4(\count_reg[1]_5 [1]),
        .O(\count[1][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \count[1][6]_i_1 
       (.I0(\count[1][8]_i_2_n_0 ),
        .I1(\count[1][8]_i_3_n_0 ),
        .I2(\count_reg[1]_5 [6]),
        .O(\count[1]_11 [6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hD020)) 
    \count[1][7]_i_1 
       (.I0(\count_reg[1]_5 [6]),
        .I1(\count[1][8]_i_2_n_0 ),
        .I2(\count[1][8]_i_3_n_0 ),
        .I3(\count_reg[1]_5 [7]),
        .O(\count[1]_11 [7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBF004000)) 
    \count[1][8]_i_1 
       (.I0(\count[1][8]_i_2_n_0 ),
        .I1(\count_reg[1]_5 [6]),
        .I2(\count_reg[1]_5 [7]),
        .I3(\count[1][8]_i_3_n_0 ),
        .I4(\count_reg[1]_5 [8]),
        .O(\count[1]_11 [8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[1][8]_i_2 
       (.I0(\count_reg[1]_5 [1]),
        .I1(\count_reg[1]_5 [0]),
        .I2(\count_reg[1]_5 [2]),
        .I3(\count_reg[1]_5 [3]),
        .I4(\count_reg[1]_5 [4]),
        .I5(\count_reg[1]_5 [5]),
        .O(\count[1][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \count[1][8]_i_3 
       (.I0(\count[0][8]_i_4_n_0 ),
        .I1(\count_reg[0]_0 [3]),
        .I2(\count_reg[0]_0 [7]),
        .I3(\count[1][8]_i_4_n_0 ),
        .I4(\count[1][8]_i_5_n_0 ),
        .I5(\count_reg[0]_0 [5]),
        .O(\count[1][8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[1][8]_i_4 
       (.I0(\count_reg[0]_0 [1]),
        .I1(\count_reg[0]_0 [0]),
        .O(\count[1][8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[1][8]_i_5 
       (.I0(\count_reg[0]_0 [4]),
        .I1(\count_reg[0]_0 [2]),
        .O(\count[1][8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2][0]_i_1 
       (.I0(\count[2][8]_i_3_n_0 ),
        .I1(\count_reg[2]_8 [0]),
        .O(\count[2]_10 [0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count[2][1]_i_1 
       (.I0(\count[2][8]_i_3_n_0 ),
        .I1(\count_reg[2]_8 [0]),
        .I2(\count_reg[2]_8 [1]),
        .O(\count[2]_10 [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \count[2][2]_i_1 
       (.I0(\count[2][8]_i_3_n_0 ),
        .I1(\count_reg[2]_8 [0]),
        .I2(\count_reg[2]_8 [1]),
        .I3(\count_reg[2]_8 [2]),
        .O(\count[2]_10 [2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \count[2][3]_i_1 
       (.I0(\count[2][8]_i_3_n_0 ),
        .I1(\count_reg[2]_8 [1]),
        .I2(\count_reg[2]_8 [0]),
        .I3(\count_reg[2]_8 [2]),
        .I4(\count_reg[2]_8 [3]),
        .O(\count[2]_10 [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \count[2][4]_i_1 
       (.I0(\count[2][8]_i_3_n_0 ),
        .I1(\count_reg[2]_8 [3]),
        .I2(\count_reg[2]_8 [2]),
        .I3(\count_reg[2]_8 [0]),
        .I4(\count_reg[2]_8 [1]),
        .I5(\count_reg[2]_8 [4]),
        .O(\count[2]_10 [4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \count[2][5]_i_1 
       (.I0(\count[2][5]_i_2_n_0 ),
        .I1(\count[2][8]_i_3_n_0 ),
        .I2(\count_reg[2]_8 [5]),
        .O(\count[2]_10 [5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \count[2][5]_i_2 
       (.I0(\count_reg[2]_8 [4]),
        .I1(\count_reg[2]_8 [3]),
        .I2(\count_reg[2]_8 [2]),
        .I3(\count_reg[2]_8 [0]),
        .I4(\count_reg[2]_8 [1]),
        .O(\count[2][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \count[2][6]_i_1 
       (.I0(\count[2][8]_i_2_n_0 ),
        .I1(\count[2][8]_i_3_n_0 ),
        .I2(\count_reg[2]_8 [6]),
        .O(\count[2]_10 [6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hD020)) 
    \count[2][7]_i_1 
       (.I0(\count_reg[2]_8 [6]),
        .I1(\count[2][8]_i_2_n_0 ),
        .I2(\count[2][8]_i_3_n_0 ),
        .I3(\count_reg[2]_8 [7]),
        .O(\count[2]_10 [7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBF004000)) 
    \count[2][8]_i_1 
       (.I0(\count[2][8]_i_2_n_0 ),
        .I1(\count_reg[2]_8 [6]),
        .I2(\count_reg[2]_8 [7]),
        .I3(\count[2][8]_i_3_n_0 ),
        .I4(\count_reg[2]_8 [8]),
        .O(\count[2]_10 [8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[2][8]_i_2 
       (.I0(\count_reg[2]_8 [1]),
        .I1(\count_reg[2]_8 [0]),
        .I2(\count_reg[2]_8 [2]),
        .I3(\count_reg[2]_8 [3]),
        .I4(\count_reg[2]_8 [4]),
        .I5(\count_reg[2]_8 [5]),
        .O(\count[2][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \count[2][8]_i_3 
       (.I0(\count_reg[0]_0 [7]),
        .I1(\count_reg[0]_0 [5]),
        .I2(\count_reg[0]_0 [3]),
        .I3(\count_reg[0]_0 [6]),
        .I4(\count_reg[0]_0 [8]),
        .I5(\half_duty[2][7]_i_2_n_0 ),
        .O(\count[2][8]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[0]_9 [0]),
        .Q(\count_reg[0]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[0]_9 [1]),
        .Q(\count_reg[0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[0]_9 [2]),
        .Q(\count_reg[0]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[0]_9 [3]),
        .Q(\count_reg[0]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[0]_9 [4]),
        .Q(\count_reg[0]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[0]_9 [5]),
        .Q(\count_reg[0]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[0]_9 [6]),
        .Q(\count_reg[0]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[0]_9 [7]),
        .Q(\count_reg[0]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[0]_9 [8]),
        .Q(\count_reg[0]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[1]_11 [0]),
        .Q(\count_reg[1]_5 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[1]_11 [1]),
        .Q(\count_reg[1]_5 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[1]_11 [2]),
        .Q(\count_reg[1]_5 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[1]_11 [3]),
        .Q(\count_reg[1]_5 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[1]_11 [4]),
        .Q(\count_reg[1]_5 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[1]_11 [5]),
        .Q(\count_reg[1]_5 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[1]_11 [6]),
        .Q(\count_reg[1]_5 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[1]_11 [7]),
        .Q(\count_reg[1]_5 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[1]_11 [8]),
        .Q(\count_reg[1]_5 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[2]_10 [0]),
        .Q(\count_reg[2]_8 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[2]_10 [1]),
        .Q(\count_reg[2]_8 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[2]_10 [2]),
        .Q(\count_reg[2]_8 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[2]_10 [3]),
        .Q(\count_reg[2]_8 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[2]_10 [4]),
        .Q(\count_reg[2]_8 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[2]_10 [5]),
        .Q(\count_reg[2]_8 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[2]_10 [6]),
        .Q(\count_reg[2]_8 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[2]_10 [7]),
        .Q(\count_reg[2]_8 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2][8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\count[2]_10 [8]),
        .Q(\count_reg[2]_8 [8]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \half_duty[0][7]_i_1 
       (.I0(\half_duty[0][7]_i_2_n_0 ),
        .I1(reset_n),
        .I2(\count_reg[0]_0 [4]),
        .I3(\count_reg[0]_0 [8]),
        .I4(\count_reg[0]_0 [6]),
        .I5(\half_duty[0][7]_i_3_n_0 ),
        .O(\half_duty_reg[0]0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \half_duty[0][7]_i_2 
       (.I0(\count_reg[0]_0 [7]),
        .I1(\count_reg[0]_0 [5]),
        .I2(\count_reg[0]_0 [3]),
        .O(\half_duty[0][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \half_duty[0][7]_i_3 
       (.I0(\count_reg[0]_0 [0]),
        .I1(\count_reg[0]_0 [1]),
        .I2(\count_reg[0]_0 [2]),
        .O(\half_duty[0][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \half_duty[1][7]_i_1 
       (.I0(\half_duty[1][7]_i_2_n_0 ),
        .I1(reset_n),
        .I2(\count_reg[0]_0 [7]),
        .I3(\count_reg[0]_0 [3]),
        .I4(\count_reg[0]_0 [5]),
        .O(\half_duty_reg[1]0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \half_duty[1][7]_i_2 
       (.I0(\count_reg[0]_0 [6]),
        .I1(\count_reg[0]_0 [8]),
        .I2(\count_reg[0]_0 [4]),
        .I3(\count_reg[0]_0 [2]),
        .I4(\count_reg[0]_0 [0]),
        .I5(\count_reg[0]_0 [1]),
        .O(\half_duty[1][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \half_duty[2][7]_i_1 
       (.I0(\count_reg[0]_0 [8]),
        .I1(reset_n),
        .I2(\count_reg[0]_0 [6]),
        .I3(\half_duty[2][7]_i_2_n_0 ),
        .I4(\half_duty[0][7]_i_2_n_0 ),
        .O(\half_duty_reg[2]0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \half_duty[2][7]_i_2 
       (.I0(\count_reg[0]_0 [1]),
        .I1(\count_reg[0]_0 [0]),
        .I2(\count_reg[0]_0 [2]),
        .I3(\count_reg[0]_0 [4]),
        .O(\half_duty[2][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFF4700B8)) 
    \half_duty_new[0][0]_i_1 
       (.I0(\half_duty_new_reg[0]6__53_carry_n_4 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6 [8]),
        .I3(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .I4(\half_duty_new[0][2]_i_4_n_0 ),
        .O(\half_duty_new_reg[0]10_in [0]));
  LUT6 #(
    .INIT(64'hD20FD22DF02DF0F0)) 
    \half_duty_new[0][1]_i_1 
       (.I0(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .I2(\half_duty_new[0][2]_i_3_n_0 ),
        .I3(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .I4(\half_duty_new[0][2]_i_5_n_0 ),
        .I5(\half_duty_new[0][2]_i_4_n_0 ),
        .O(\half_duty_new[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h636969C9696969CC)) 
    \half_duty_new[0][2]_i_1 
       (.I0(\half_duty_new[0][7]_i_2_n_0 ),
        .I1(\half_duty_new[0][2]_i_2_n_0 ),
        .I2(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .I3(\half_duty_new[0][2]_i_3_n_0 ),
        .I4(\half_duty_new[0][2]_i_4_n_0 ),
        .I5(\half_duty_new[0][2]_i_5_n_0 ),
        .O(\half_duty_new[0][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[0][2]_i_2 
       (.I0(\half_duty_new_reg[0]4 [3]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]6__53_carry__0_n_5 ),
        .I3(\half_duty_new_reg[0]7 ),
        .I4(\half_duty_new_reg[0]6 [11]),
        .O(\half_duty_new[0][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[0][2]_i_3 
       (.I0(\half_duty_new_reg[0]4 [2]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]6__53_carry__0_n_6 ),
        .I3(\half_duty_new_reg[0]7 ),
        .I4(\half_duty_new_reg[0]6 [10]),
        .O(\half_duty_new[0][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[0][2]_i_4 
       (.I0(\half_duty_new_reg[0]4 [1]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]6__53_carry__0_n_7 ),
        .I3(\half_duty_new_reg[0]7 ),
        .I4(\half_duty_new_reg[0]6 [9]),
        .O(\half_duty_new[0][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \half_duty_new[0][2]_i_5 
       (.I0(\half_duty_new_reg[0]6__53_carry_n_4 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6 [8]),
        .O(\half_duty_new[0][2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFD02)) 
    \half_duty_new[0][3]_i_1 
       (.I0(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .I2(\half_duty_new[0][3]_i_2_n_0 ),
        .I3(\half_duty_new_reg[0]10_in [3]),
        .O(\half_duty_new[0][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20040005)) 
    \half_duty_new[0][3]_i_2 
       (.I0(\half_duty_new[0][2]_i_2_n_0 ),
        .I1(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .I2(\half_duty_new[0][2]_i_3_n_0 ),
        .I3(\half_duty_new[0][2]_i_4_n_0 ),
        .I4(\half_duty_new[0][2]_i_5_n_0 ),
        .O(\half_duty_new[0][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF0100FE)) 
    \half_duty_new[0][3]_i_3 
       (.I0(\half_duty_new[0][2]_i_3_n_0 ),
        .I1(\half_duty_new_reg[0]4_carry_i_4_n_0 ),
        .I2(\half_duty_new[0][2]_i_2_n_0 ),
        .I3(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .I4(\half_duty_new_reg[0]4_carry_i_10_n_0 ),
        .O(\half_duty_new_reg[0]10_in [3]));
  LUT4 #(
    .INIT(16'hFD02)) 
    \half_duty_new[0][4]_i_1 
       (.I0(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .I2(\half_duty_new[0][4]_i_2_n_0 ),
        .I3(\half_duty_new_reg[0]10_in [4]),
        .O(\half_duty_new[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000405)) 
    \half_duty_new[0][4]_i_2 
       (.I0(\half_duty_new_reg[0]4_carry_i_10_n_0 ),
        .I1(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .I2(\half_duty_new[0][2]_i_2_n_0 ),
        .I3(\half_duty_new[0][2]_i_5_n_0 ),
        .I4(\half_duty_new[0][2]_i_4_n_0 ),
        .I5(\half_duty_new[0][2]_i_3_n_0 ),
        .O(\half_duty_new[0][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00010000FFFE)) 
    \half_duty_new[0][4]_i_3 
       (.I0(\half_duty_new[0][2]_i_2_n_0 ),
        .I1(\half_duty_new_reg[0]4_carry_i_4_n_0 ),
        .I2(\half_duty_new[0][2]_i_3_n_0 ),
        .I3(\half_duty_new_reg[0]4_carry_i_10_n_0 ),
        .I4(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .I5(\half_duty_new[0][7]_i_7_n_0 ),
        .O(\half_duty_new_reg[0]10_in [4]));
  LUT6 #(
    .INIT(64'hE1E1E1E1E1E11EE1)) 
    \half_duty_new[0][5]_i_1 
       (.I0(\half_duty_new[0][5]_i_2_n_0 ),
        .I1(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .I2(\half_duty_new[0][5]_i_3_n_0 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .I5(\half_duty_new[0][5]_i_4_n_0 ),
        .O(\half_duty_new[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \half_duty_new[0][5]_i_2 
       (.I0(\half_duty_new_reg[0]4_carry_i_10_n_0 ),
        .I1(\half_duty_new[0][2]_i_3_n_0 ),
        .I2(\half_duty_new[0][2]_i_4_n_0 ),
        .I3(\half_duty_new[0][2]_i_5_n_0 ),
        .I4(\half_duty_new[0][2]_i_2_n_0 ),
        .I5(\half_duty_new[0][7]_i_7_n_0 ),
        .O(\half_duty_new[0][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[0][5]_i_3 
       (.I0(\half_duty_new_reg[0]4 [6]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]6__53_carry__1_n_6 ),
        .I3(\half_duty_new_reg[0]7 ),
        .I4(\half_duty_new_reg[0]6 [14]),
        .O(\half_duty_new[0][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000220020)) 
    \half_duty_new[0][5]_i_4 
       (.I0(\half_duty_new[0][5]_i_5_n_0 ),
        .I1(\half_duty_new[0][7]_i_7_n_0 ),
        .I2(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .I3(\half_duty_new_reg[0]4_carry_i_10_n_0 ),
        .I4(\half_duty_new[0][5]_i_6_n_0 ),
        .I5(\half_duty_new[0][2]_i_2_n_0 ),
        .O(\half_duty_new[0][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2022200045444555)) 
    \half_duty_new[0][5]_i_5 
       (.I0(\half_duty_new[0][2]_i_3_n_0 ),
        .I1(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .I2(\half_duty_new_reg[0]6__53_carry_n_4 ),
        .I3(\half_duty_new_reg[0]7 ),
        .I4(\half_duty_new_reg[0]6 [8]),
        .I5(\half_duty_new[0][2]_i_4_n_0 ),
        .O(\half_duty_new[0][5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000047)) 
    \half_duty_new[0][5]_i_6 
       (.I0(\half_duty_new_reg[0]6__53_carry_n_4 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6 [8]),
        .I3(\half_duty_new[0][2]_i_4_n_0 ),
        .I4(\half_duty_new[0][2]_i_3_n_0 ),
        .O(\half_duty_new[0][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFD02)) 
    \half_duty_new[0][6]_i_1 
       (.I0(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .I2(\half_duty_new[0][7]_i_3_n_0 ),
        .I3(\half_duty_new_reg[0]10_in [6]),
        .O(\half_duty_new[0][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF20D)) 
    \half_duty_new[0][6]_i_3 
       (.I0(\half_duty_new[0][5]_i_2_n_0 ),
        .I1(\half_duty_new[0][5]_i_3_n_0 ),
        .I2(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .I3(\half_duty_new[0][7]_i_5_n_0 ),
        .O(\half_duty_new_reg[0]10_in [6]));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new[0][6]_i_4 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new[0][6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new[0][6]_i_5 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new[0][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5AD25AD2A5D22DA5)) 
    \half_duty_new[0][7]_i_1 
       (.I0(\half_duty_new[0][7]_i_2_n_0 ),
        .I1(\half_duty_new[0][7]_i_3_n_0 ),
        .I2(\half_duty_new[0][7]_i_4_n_0 ),
        .I3(\half_duty_new[0][7]_i_5_n_0 ),
        .I4(\half_duty_new[0][7]_i_6_n_0 ),
        .I5(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .O(\half_duty_new[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new[0][7]_i_2 
       (.I0(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .O(\half_duty_new[0][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000220020)) 
    \half_duty_new[0][7]_i_3 
       (.I0(\half_duty_new[0][3]_i_2_n_0 ),
        .I1(\half_duty_new[0][5]_i_3_n_0 ),
        .I2(\half_duty_new_reg[0]4_carry__2_n_0 ),
        .I3(\half_duty_new[0][7]_i_7_n_0 ),
        .I4(\half_duty_new[0][7]_i_8_n_0 ),
        .I5(\half_duty_new_reg[0]4_carry_i_10_n_0 ),
        .O(\half_duty_new[0][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[0][7]_i_4 
       (.I0(\half_duty_new_reg[0]4 [8]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]6__53_carry__1_n_4 ),
        .I3(\half_duty_new_reg[0]7 ),
        .I4(\half_duty_new_reg[0]6 [16]),
        .O(\half_duty_new[0][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[0][7]_i_5 
       (.I0(\half_duty_new_reg[0]4 [7]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]6__53_carry__1_n_5 ),
        .I3(\half_duty_new_reg[0]7 ),
        .I4(\half_duty_new_reg[0]6 [15]),
        .O(\half_duty_new[0][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \half_duty_new[0][7]_i_6 
       (.I0(\half_duty_new[0][5]_i_2_n_0 ),
        .I1(\half_duty_new_reg[0]6 [14]),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]6__53_carry__1_n_6 ),
        .I4(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I5(\half_duty_new_reg[0]4 [6]),
        .O(\half_duty_new[0][7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[0][7]_i_7 
       (.I0(\half_duty_new_reg[0]4 [5]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]6__53_carry__1_n_7 ),
        .I3(\half_duty_new_reg[0]7 ),
        .I4(\half_duty_new_reg[0]6 [13]),
        .O(\half_duty_new[0][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011101)) 
    \half_duty_new[0][7]_i_8 
       (.I0(\half_duty_new[0][2]_i_3_n_0 ),
        .I1(\half_duty_new[0][2]_i_4_n_0 ),
        .I2(\half_duty_new_reg[0]6 [8]),
        .I3(\half_duty_new_reg[0]7 ),
        .I4(\half_duty_new_reg[0]6__53_carry_n_4 ),
        .I5(\half_duty_new[0][2]_i_2_n_0 ),
        .O(\half_duty_new[0][7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFF4700B8)) 
    \half_duty_new[1][0]_i_1 
       (.I0(\half_duty_new_reg[1]6__53_carry_n_4 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6 [8]),
        .I3(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .I4(\half_duty_new[1][2]_i_4_n_0 ),
        .O(\half_duty_new_reg[1]10_in [0]));
  LUT6 #(
    .INIT(64'hD20FD22DF02DF0F0)) 
    \half_duty_new[1][1]_i_1 
       (.I0(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .I2(\half_duty_new[1][2]_i_3_n_0 ),
        .I3(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .I4(\half_duty_new[1][2]_i_5_n_0 ),
        .I5(\half_duty_new[1][2]_i_4_n_0 ),
        .O(\half_duty_new[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h636969C9696969CC)) 
    \half_duty_new[1][2]_i_1 
       (.I0(\half_duty_new[1][7]_i_2_n_0 ),
        .I1(\half_duty_new[1][2]_i_2_n_0 ),
        .I2(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .I3(\half_duty_new[1][2]_i_3_n_0 ),
        .I4(\half_duty_new[1][2]_i_4_n_0 ),
        .I5(\half_duty_new[1][2]_i_5_n_0 ),
        .O(\half_duty_new[1][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[1][2]_i_2 
       (.I0(\half_duty_new_reg[1]4 [3]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]6__53_carry__0_n_5 ),
        .I3(\half_duty_new_reg[1]7 ),
        .I4(\half_duty_new_reg[1]6 [11]),
        .O(\half_duty_new[1][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[1][2]_i_3 
       (.I0(\half_duty_new_reg[1]4 [2]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]6__53_carry__0_n_6 ),
        .I3(\half_duty_new_reg[1]7 ),
        .I4(\half_duty_new_reg[1]6 [10]),
        .O(\half_duty_new[1][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[1][2]_i_4 
       (.I0(\half_duty_new_reg[1]4 [1]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]6__53_carry__0_n_7 ),
        .I3(\half_duty_new_reg[1]7 ),
        .I4(\half_duty_new_reg[1]6 [9]),
        .O(\half_duty_new[1][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \half_duty_new[1][2]_i_5 
       (.I0(\half_duty_new_reg[1]6__53_carry_n_4 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6 [8]),
        .O(\half_duty_new[1][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFD02)) 
    \half_duty_new[1][3]_i_1 
       (.I0(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .I2(\half_duty_new[1][3]_i_2_n_0 ),
        .I3(\half_duty_new_reg[1]10_in [3]),
        .O(\half_duty_new[1][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20040005)) 
    \half_duty_new[1][3]_i_2 
       (.I0(\half_duty_new[1][2]_i_2_n_0 ),
        .I1(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .I2(\half_duty_new[1][2]_i_3_n_0 ),
        .I3(\half_duty_new[1][2]_i_4_n_0 ),
        .I4(\half_duty_new[1][2]_i_5_n_0 ),
        .O(\half_duty_new[1][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF0100FE)) 
    \half_duty_new[1][3]_i_3 
       (.I0(\half_duty_new[1][2]_i_3_n_0 ),
        .I1(\half_duty_new_reg[1]4_carry_i_4_n_0 ),
        .I2(\half_duty_new[1][2]_i_2_n_0 ),
        .I3(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .I4(\half_duty_new_reg[1]4_carry_i_10_n_0 ),
        .O(\half_duty_new_reg[1]10_in [3]));
  LUT4 #(
    .INIT(16'hFD02)) 
    \half_duty_new[1][4]_i_1 
       (.I0(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .I2(\half_duty_new[1][4]_i_2_n_0 ),
        .I3(\half_duty_new_reg[1]10_in [4]),
        .O(\half_duty_new[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000405)) 
    \half_duty_new[1][4]_i_2 
       (.I0(\half_duty_new_reg[1]4_carry_i_10_n_0 ),
        .I1(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .I2(\half_duty_new[1][2]_i_2_n_0 ),
        .I3(\half_duty_new[1][2]_i_5_n_0 ),
        .I4(\half_duty_new[1][2]_i_4_n_0 ),
        .I5(\half_duty_new[1][2]_i_3_n_0 ),
        .O(\half_duty_new[1][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00010000FFFE)) 
    \half_duty_new[1][4]_i_3 
       (.I0(\half_duty_new[1][2]_i_2_n_0 ),
        .I1(\half_duty_new_reg[1]4_carry_i_4_n_0 ),
        .I2(\half_duty_new[1][2]_i_3_n_0 ),
        .I3(\half_duty_new_reg[1]4_carry_i_10_n_0 ),
        .I4(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .I5(\half_duty_new[1][7]_i_7_n_0 ),
        .O(\half_duty_new_reg[1]10_in [4]));
  LUT6 #(
    .INIT(64'hE1E1E1E1E1E11EE1)) 
    \half_duty_new[1][5]_i_1 
       (.I0(\half_duty_new[1][5]_i_2_n_0 ),
        .I1(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .I2(\half_duty_new[1][5]_i_3_n_0 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .I5(\half_duty_new[1][5]_i_4_n_0 ),
        .O(\half_duty_new[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \half_duty_new[1][5]_i_2 
       (.I0(\half_duty_new_reg[1]4_carry_i_10_n_0 ),
        .I1(\half_duty_new[1][2]_i_3_n_0 ),
        .I2(\half_duty_new[1][2]_i_4_n_0 ),
        .I3(\half_duty_new[1][2]_i_5_n_0 ),
        .I4(\half_duty_new[1][2]_i_2_n_0 ),
        .I5(\half_duty_new[1][7]_i_7_n_0 ),
        .O(\half_duty_new[1][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[1][5]_i_3 
       (.I0(\half_duty_new_reg[1]4 [6]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]6__53_carry__1_n_6 ),
        .I3(\half_duty_new_reg[1]7 ),
        .I4(\half_duty_new_reg[1]6 [14]),
        .O(\half_duty_new[1][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000220020)) 
    \half_duty_new[1][5]_i_4 
       (.I0(\half_duty_new[1][5]_i_5_n_0 ),
        .I1(\half_duty_new[1][7]_i_7_n_0 ),
        .I2(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .I3(\half_duty_new_reg[1]4_carry_i_10_n_0 ),
        .I4(\half_duty_new[1][5]_i_6_n_0 ),
        .I5(\half_duty_new[1][2]_i_2_n_0 ),
        .O(\half_duty_new[1][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2022200045444555)) 
    \half_duty_new[1][5]_i_5 
       (.I0(\half_duty_new[1][2]_i_3_n_0 ),
        .I1(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .I2(\half_duty_new_reg[1]6__53_carry_n_4 ),
        .I3(\half_duty_new_reg[1]7 ),
        .I4(\half_duty_new_reg[1]6 [8]),
        .I5(\half_duty_new[1][2]_i_4_n_0 ),
        .O(\half_duty_new[1][5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000047)) 
    \half_duty_new[1][5]_i_6 
       (.I0(\half_duty_new_reg[1]6__53_carry_n_4 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6 [8]),
        .I3(\half_duty_new[1][2]_i_4_n_0 ),
        .I4(\half_duty_new[1][2]_i_3_n_0 ),
        .O(\half_duty_new[1][5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFD02)) 
    \half_duty_new[1][6]_i_1 
       (.I0(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .I2(\half_duty_new[1][7]_i_3_n_0 ),
        .I3(\half_duty_new_reg[1]10_in [6]),
        .O(\half_duty_new[1][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF20D)) 
    \half_duty_new[1][6]_i_3 
       (.I0(\half_duty_new[1][5]_i_2_n_0 ),
        .I1(\half_duty_new[1][5]_i_3_n_0 ),
        .I2(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .I3(\half_duty_new[1][7]_i_5_n_0 ),
        .O(\half_duty_new_reg[1]10_in [6]));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new[1][6]_i_4 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new[1][6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new[1][6]_i_5 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new[1][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5AD25AD2A5D22DA5)) 
    \half_duty_new[1][7]_i_1 
       (.I0(\half_duty_new[1][7]_i_2_n_0 ),
        .I1(\half_duty_new[1][7]_i_3_n_0 ),
        .I2(\half_duty_new[1][7]_i_4_n_0 ),
        .I3(\half_duty_new[1][7]_i_5_n_0 ),
        .I4(\half_duty_new[1][7]_i_6_n_0 ),
        .I5(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .O(\half_duty_new[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new[1][7]_i_2 
       (.I0(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .O(\half_duty_new[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000220020)) 
    \half_duty_new[1][7]_i_3 
       (.I0(\half_duty_new[1][3]_i_2_n_0 ),
        .I1(\half_duty_new[1][5]_i_3_n_0 ),
        .I2(\half_duty_new_reg[1]4_carry__2_n_0 ),
        .I3(\half_duty_new[1][7]_i_7_n_0 ),
        .I4(\half_duty_new[1][7]_i_8_n_0 ),
        .I5(\half_duty_new_reg[1]4_carry_i_10_n_0 ),
        .O(\half_duty_new[1][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[1][7]_i_4 
       (.I0(\half_duty_new_reg[1]4 [8]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]6__53_carry__1_n_4 ),
        .I3(\half_duty_new_reg[1]7 ),
        .I4(\half_duty_new_reg[1]6 [16]),
        .O(\half_duty_new[1][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[1][7]_i_5 
       (.I0(\half_duty_new_reg[1]4 [7]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]6__53_carry__1_n_5 ),
        .I3(\half_duty_new_reg[1]7 ),
        .I4(\half_duty_new_reg[1]6 [15]),
        .O(\half_duty_new[1][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \half_duty_new[1][7]_i_6 
       (.I0(\half_duty_new[1][5]_i_2_n_0 ),
        .I1(\half_duty_new_reg[1]6 [14]),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]6__53_carry__1_n_6 ),
        .I4(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I5(\half_duty_new_reg[1]4 [6]),
        .O(\half_duty_new[1][7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[1][7]_i_7 
       (.I0(\half_duty_new_reg[1]4 [5]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]6__53_carry__1_n_7 ),
        .I3(\half_duty_new_reg[1]7 ),
        .I4(\half_duty_new_reg[1]6 [13]),
        .O(\half_duty_new[1][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011101)) 
    \half_duty_new[1][7]_i_8 
       (.I0(\half_duty_new[1][2]_i_3_n_0 ),
        .I1(\half_duty_new[1][2]_i_4_n_0 ),
        .I2(\half_duty_new_reg[1]6 [8]),
        .I3(\half_duty_new_reg[1]7 ),
        .I4(\half_duty_new_reg[1]6__53_carry_n_4 ),
        .I5(\half_duty_new[1][2]_i_2_n_0 ),
        .O(\half_duty_new[1][7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF4700B8)) 
    \half_duty_new[2][0]_i_1 
       (.I0(\half_duty_new_reg[2]6__53_carry_n_4 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6 [8]),
        .I3(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .I4(\half_duty_new[2][2]_i_4_n_0 ),
        .O(\half_duty_new_reg[2]10_in [0]));
  LUT6 #(
    .INIT(64'hD20FD22DF02DF0F0)) 
    \half_duty_new[2][1]_i_1 
       (.I0(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .I2(\half_duty_new[2][2]_i_3_n_0 ),
        .I3(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .I4(\half_duty_new[2][2]_i_5_n_0 ),
        .I5(\half_duty_new[2][2]_i_4_n_0 ),
        .O(\half_duty_new[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h636969C9696969CC)) 
    \half_duty_new[2][2]_i_1 
       (.I0(\half_duty_new[2][7]_i_2_n_0 ),
        .I1(\half_duty_new[2][2]_i_2_n_0 ),
        .I2(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .I3(\half_duty_new[2][2]_i_3_n_0 ),
        .I4(\half_duty_new[2][2]_i_4_n_0 ),
        .I5(\half_duty_new[2][2]_i_5_n_0 ),
        .O(\half_duty_new[2][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[2][2]_i_2 
       (.I0(\half_duty_new_reg[2]4 [3]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]6__53_carry__0_n_5 ),
        .I3(\half_duty_new_reg[2]7 ),
        .I4(\half_duty_new_reg[2]6 [11]),
        .O(\half_duty_new[2][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[2][2]_i_3 
       (.I0(\half_duty_new_reg[2]4 [2]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]6__53_carry__0_n_6 ),
        .I3(\half_duty_new_reg[2]7 ),
        .I4(\half_duty_new_reg[2]6 [10]),
        .O(\half_duty_new[2][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[2][2]_i_4 
       (.I0(\half_duty_new_reg[2]4 [1]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]6__53_carry__0_n_7 ),
        .I3(\half_duty_new_reg[2]7 ),
        .I4(\half_duty_new_reg[2]6 [9]),
        .O(\half_duty_new[2][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \half_duty_new[2][2]_i_5 
       (.I0(\half_duty_new_reg[2]6__53_carry_n_4 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6 [8]),
        .O(\half_duty_new[2][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFD02)) 
    \half_duty_new[2][3]_i_1 
       (.I0(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .I2(\half_duty_new[2][3]_i_2_n_0 ),
        .I3(\half_duty_new_reg[2]10_in [3]),
        .O(\half_duty_new[2][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20040005)) 
    \half_duty_new[2][3]_i_2 
       (.I0(\half_duty_new[2][2]_i_2_n_0 ),
        .I1(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .I2(\half_duty_new[2][2]_i_3_n_0 ),
        .I3(\half_duty_new[2][2]_i_4_n_0 ),
        .I4(\half_duty_new[2][2]_i_5_n_0 ),
        .O(\half_duty_new[2][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF0100FE)) 
    \half_duty_new[2][3]_i_3 
       (.I0(\half_duty_new[2][2]_i_3_n_0 ),
        .I1(\half_duty_new_reg[2]4_carry_i_4_n_0 ),
        .I2(\half_duty_new[2][2]_i_2_n_0 ),
        .I3(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .I4(\half_duty_new_reg[2]4_carry_i_10_n_0 ),
        .O(\half_duty_new_reg[2]10_in [3]));
  LUT4 #(
    .INIT(16'hFD02)) 
    \half_duty_new[2][4]_i_1 
       (.I0(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .I2(\half_duty_new[2][4]_i_2_n_0 ),
        .I3(\half_duty_new_reg[2]10_in [4]),
        .O(\half_duty_new[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000405)) 
    \half_duty_new[2][4]_i_2 
       (.I0(\half_duty_new_reg[2]4_carry_i_10_n_0 ),
        .I1(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .I2(\half_duty_new[2][2]_i_2_n_0 ),
        .I3(\half_duty_new[2][2]_i_5_n_0 ),
        .I4(\half_duty_new[2][2]_i_4_n_0 ),
        .I5(\half_duty_new[2][2]_i_3_n_0 ),
        .O(\half_duty_new[2][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00010000FFFE)) 
    \half_duty_new[2][4]_i_3 
       (.I0(\half_duty_new[2][2]_i_2_n_0 ),
        .I1(\half_duty_new_reg[2]4_carry_i_4_n_0 ),
        .I2(\half_duty_new[2][2]_i_3_n_0 ),
        .I3(\half_duty_new_reg[2]4_carry_i_10_n_0 ),
        .I4(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .I5(\half_duty_new[2][7]_i_7_n_0 ),
        .O(\half_duty_new_reg[2]10_in [4]));
  LUT6 #(
    .INIT(64'hE1E1E1E1E1E11EE1)) 
    \half_duty_new[2][5]_i_1 
       (.I0(\half_duty_new[2][5]_i_2_n_0 ),
        .I1(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .I2(\half_duty_new[2][5]_i_3_n_0 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .I5(\half_duty_new[2][5]_i_4_n_0 ),
        .O(\half_duty_new[2][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \half_duty_new[2][5]_i_2 
       (.I0(\half_duty_new_reg[2]4_carry_i_10_n_0 ),
        .I1(\half_duty_new[2][2]_i_3_n_0 ),
        .I2(\half_duty_new[2][2]_i_4_n_0 ),
        .I3(\half_duty_new[2][2]_i_5_n_0 ),
        .I4(\half_duty_new[2][2]_i_2_n_0 ),
        .I5(\half_duty_new[2][7]_i_7_n_0 ),
        .O(\half_duty_new[2][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[2][5]_i_3 
       (.I0(\half_duty_new_reg[2]4 [6]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]6__53_carry__1_n_6 ),
        .I3(\half_duty_new_reg[2]7 ),
        .I4(\half_duty_new_reg[2]6 [14]),
        .O(\half_duty_new[2][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000220020)) 
    \half_duty_new[2][5]_i_4 
       (.I0(\half_duty_new[2][5]_i_5_n_0 ),
        .I1(\half_duty_new[2][7]_i_7_n_0 ),
        .I2(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .I3(\half_duty_new_reg[2]4_carry_i_10_n_0 ),
        .I4(\half_duty_new[2][5]_i_6_n_0 ),
        .I5(\half_duty_new[2][2]_i_2_n_0 ),
        .O(\half_duty_new[2][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2022200045444555)) 
    \half_duty_new[2][5]_i_5 
       (.I0(\half_duty_new[2][2]_i_3_n_0 ),
        .I1(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .I2(\half_duty_new_reg[2]6__53_carry_n_4 ),
        .I3(\half_duty_new_reg[2]7 ),
        .I4(\half_duty_new_reg[2]6 [8]),
        .I5(\half_duty_new[2][2]_i_4_n_0 ),
        .O(\half_duty_new[2][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000047)) 
    \half_duty_new[2][5]_i_6 
       (.I0(\half_duty_new_reg[2]6__53_carry_n_4 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6 [8]),
        .I3(\half_duty_new[2][2]_i_4_n_0 ),
        .I4(\half_duty_new[2][2]_i_3_n_0 ),
        .O(\half_duty_new[2][5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFD02)) 
    \half_duty_new[2][6]_i_1 
       (.I0(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .I2(\half_duty_new[2][7]_i_3_n_0 ),
        .I3(\half_duty_new_reg[2]10_in [6]),
        .O(\half_duty_new[2][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF20D)) 
    \half_duty_new[2][6]_i_3 
       (.I0(\half_duty_new[2][5]_i_2_n_0 ),
        .I1(\half_duty_new[2][5]_i_3_n_0 ),
        .I2(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .I3(\half_duty_new[2][7]_i_5_n_0 ),
        .O(\half_duty_new_reg[2]10_in [6]));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new[2][6]_i_4 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new[2][6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new[2][6]_i_5 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new[2][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5AD25AD2A5D22DA5)) 
    \half_duty_new[2][7]_i_1 
       (.I0(\half_duty_new[2][7]_i_2_n_0 ),
        .I1(\half_duty_new[2][7]_i_3_n_0 ),
        .I2(\half_duty_new[2][7]_i_4_n_0 ),
        .I3(\half_duty_new[2][7]_i_5_n_0 ),
        .I4(\half_duty_new[2][7]_i_6_n_0 ),
        .I5(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .O(\half_duty_new[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new[2][7]_i_2 
       (.I0(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .O(\half_duty_new[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000220020)) 
    \half_duty_new[2][7]_i_3 
       (.I0(\half_duty_new[2][3]_i_2_n_0 ),
        .I1(\half_duty_new[2][5]_i_3_n_0 ),
        .I2(\half_duty_new_reg[2]4_carry__2_n_0 ),
        .I3(\half_duty_new[2][7]_i_7_n_0 ),
        .I4(\half_duty_new[2][7]_i_8_n_0 ),
        .I5(\half_duty_new_reg[2]4_carry_i_10_n_0 ),
        .O(\half_duty_new[2][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[2][7]_i_4 
       (.I0(\half_duty_new_reg[2]4 [8]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]6__53_carry__1_n_4 ),
        .I3(\half_duty_new_reg[2]7 ),
        .I4(\half_duty_new_reg[2]6 [16]),
        .O(\half_duty_new[2][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[2][7]_i_5 
       (.I0(\half_duty_new_reg[2]4 [7]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]6__53_carry__1_n_5 ),
        .I3(\half_duty_new_reg[2]7 ),
        .I4(\half_duty_new_reg[2]6 [15]),
        .O(\half_duty_new[2][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \half_duty_new[2][7]_i_6 
       (.I0(\half_duty_new[2][5]_i_2_n_0 ),
        .I1(\half_duty_new_reg[2]6 [14]),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]6__53_carry__1_n_6 ),
        .I4(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I5(\half_duty_new_reg[2]4 [6]),
        .O(\half_duty_new[2][7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new[2][7]_i_7 
       (.I0(\half_duty_new_reg[2]4 [5]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]6__53_carry__1_n_7 ),
        .I3(\half_duty_new_reg[2]7 ),
        .I4(\half_duty_new_reg[2]6 [13]),
        .O(\half_duty_new[2][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011101)) 
    \half_duty_new[2][7]_i_8 
       (.I0(\half_duty_new[2][2]_i_3_n_0 ),
        .I1(\half_duty_new[2][2]_i_4_n_0 ),
        .I2(\half_duty_new_reg[2]6 [8]),
        .I3(\half_duty_new_reg[2]7 ),
        .I4(\half_duty_new_reg[2]6__53_carry_n_4 ),
        .I5(\half_duty_new[2][2]_i_2_n_0 ),
        .O(\half_duty_new[2][7]_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[0]4_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[0]4_carry_n_0 ,\half_duty_new_reg[0]4_carry_n_1 ,\half_duty_new_reg[0]4_carry_n_2 ,\half_duty_new_reg[0]4_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\half_duty_new_reg[0]4_carry_i_1_n_0 ,\half_duty_new_reg[0]4_carry_i_2_n_0 ,\half_duty_new_reg[0]4_carry_i_3_n_0 ,\half_duty_new_reg[0]4_carry_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[0]4_carry_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[0]4_carry_i_5_n_0 ,\half_duty_new_reg[0]4_carry_i_6_n_0 ,\half_duty_new_reg[0]4_carry_i_7_n_0 ,\half_duty_new_reg[0]4_carry_i_8_n_0 }));
  CARRY4 \half_duty_new_reg[0]4_carry__0 
       (.CI(\half_duty_new_reg[0]4_carry_n_0 ),
        .CO({\half_duty_new_reg[0]4_carry__0_n_0 ,\half_duty_new_reg[0]4_carry__0_n_1 ,\half_duty_new_reg[0]4_carry__0_n_2 ,\half_duty_new_reg[0]4_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[0]4_carry__0_i_1_n_0 ,\half_duty_new_reg[0]4_carry__0_i_2_n_0 ,\half_duty_new_reg[0]4_carry__0_i_3_n_0 ,\half_duty_new_reg[0]4_carry__0_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[0]4_carry__0_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[0]4_carry__0_i_5_n_0 ,\half_duty_new_reg[0]4_carry__0_i_6_n_0 ,\half_duty_new_reg[0]4_carry__0_i_7_n_0 ,\half_duty_new_reg[0]4_carry__0_i_8_n_0 }));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[0]4_carry__0_i_1 
       (.I0(\half_duty_new_reg[0]4 [14]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[0]4 [15]),
        .O(\half_duty_new_reg[0]4_carry__0_i_1_n_0 ));
  CARRY4 \half_duty_new_reg[0]4_carry__0_i_10 
       (.CI(\half_duty_new_reg[0]4_carry_i_9_n_0 ),
        .CO({\half_duty_new_reg[0]4_carry__0_i_10_n_0 ,\half_duty_new_reg[0]4_carry__0_i_10_n_1 ,\half_duty_new_reg[0]4_carry__0_i_10_n_2 ,\half_duty_new_reg[0]4_carry__0_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[0]4 [12:9]),
        .S({\half_duty_new_reg[0]4_carry__0_i_15_n_0 ,\half_duty_new_reg[0]4_carry__0_i_16_n_0 ,\half_duty_new_reg[0]4_carry__0_i_17_n_0 ,\half_duty_new_reg[0]4_carry__0_i_18_n_0 }));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry__0_i_11 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry__0_i_12 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry__0_i_13 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry__0_i_14 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry__0_i_15 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry__0_i_16 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry__0_i_17 
       (.I0(\half_duty_new_reg[0]6 [18]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__0_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry__0_i_18 
       (.I0(\half_duty_new_reg[0]6 [17]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_7 ),
        .O(\half_duty_new_reg[0]4_carry__0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[0]4_carry__0_i_2 
       (.I0(\half_duty_new_reg[0]4 [12]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[0]4 [13]),
        .O(\half_duty_new_reg[0]4_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCF8B8BCFCC8B88)) 
    \half_duty_new_reg[0]4_carry__0_i_3 
       (.I0(\half_duty_new_reg[0]4 [10]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]6 [18]),
        .I4(\half_duty_new_reg[0]4 [11]),
        .I5(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .O(\half_duty_new_reg[0]4_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEFEFEAEAEA)) 
    \half_duty_new_reg[0]4_carry__0_i_4 
       (.I0(\half_duty_new[0][7]_i_4_n_0 ),
        .I1(\half_duty_new_reg[0]4 [9]),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_7 ),
        .I4(\half_duty_new_reg[0]7 ),
        .I5(\half_duty_new_reg[0]6 [17]),
        .O(\half_duty_new_reg[0]4_carry__0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[0]4_carry__0_i_5 
       (.I0(\half_duty_new_reg[0]4 [15]),
        .I1(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[0]4 [14]),
        .O(\half_duty_new_reg[0]4_carry__0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[0]4_carry__0_i_6 
       (.I0(\half_duty_new_reg[0]4 [13]),
        .I1(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[0]4 [12]),
        .O(\half_duty_new_reg[0]4_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF053333FF05)) 
    \half_duty_new_reg[0]4_carry__0_i_7 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]4 [11]),
        .I2(\half_duty_new_reg[0]6 [18]),
        .I3(\half_duty_new_reg[0]7 ),
        .I4(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I5(\half_duty_new_reg[0]4 [10]),
        .O(\half_duty_new_reg[0]4_carry__0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \half_duty_new_reg[0]4_carry__0_i_8 
       (.I0(\half_duty_new_reg[0]6 [17]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_7 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[0]4 [9]),
        .I5(\half_duty_new[0][7]_i_4_n_0 ),
        .O(\half_duty_new_reg[0]4_carry__0_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[0]4_carry__0_i_9 
       (.CI(\half_duty_new_reg[0]4_carry__0_i_10_n_0 ),
        .CO({\half_duty_new_reg[0]4_carry__0_i_9_n_0 ,\half_duty_new_reg[0]4_carry__0_i_9_n_1 ,\half_duty_new_reg[0]4_carry__0_i_9_n_2 ,\half_duty_new_reg[0]4_carry__0_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[0]4 [16:13]),
        .S({\half_duty_new_reg[0]4_carry__0_i_11_n_0 ,\half_duty_new_reg[0]4_carry__0_i_12_n_0 ,\half_duty_new_reg[0]4_carry__0_i_13_n_0 ,\half_duty_new_reg[0]4_carry__0_i_14_n_0 }));
  CARRY4 \half_duty_new_reg[0]4_carry__1 
       (.CI(\half_duty_new_reg[0]4_carry__0_n_0 ),
        .CO({\half_duty_new_reg[0]4_carry__1_n_0 ,\half_duty_new_reg[0]4_carry__1_n_1 ,\half_duty_new_reg[0]4_carry__1_n_2 ,\half_duty_new_reg[0]4_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[0]4_carry__1_i_1_n_0 ,\half_duty_new_reg[0]4_carry__1_i_2_n_0 ,\half_duty_new_reg[0]4_carry__1_i_3_n_0 ,\half_duty_new_reg[0]4_carry__1_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[0]4_carry__1_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[0]4_carry__1_i_5_n_0 ,\half_duty_new_reg[0]4_carry__1_i_6_n_0 ,\half_duty_new_reg[0]4_carry__1_i_7_n_0 ,\half_duty_new_reg[0]4_carry__1_i_8_n_0 }));
  LUT5 #(
    .INIT(32'h8B88CFCC)) 
    \half_duty_new_reg[0]4_carry__1_i_1 
       (.I0(\half_duty_new_reg[0]4 [22]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .O(\half_duty_new_reg[0]4_carry__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry__1_i_10 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__1_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry__1_i_11 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__1_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry__1_i_12 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__1_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry__1_i_13 
       (.I0(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__1_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[0]4_carry__1_i_2 
       (.I0(\half_duty_new_reg[0]4 [20]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[0]4 [21]),
        .O(\half_duty_new_reg[0]4_carry__1_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[0]4_carry__1_i_3 
       (.I0(\half_duty_new_reg[0]4 [18]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[0]4 [19]),
        .O(\half_duty_new_reg[0]4_carry__1_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[0]4_carry__1_i_4 
       (.I0(\half_duty_new_reg[0]4 [16]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[0]4 [17]),
        .O(\half_duty_new_reg[0]4_carry__1_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00F3AAF3)) 
    \half_duty_new_reg[0]4_carry__1_i_5 
       (.I0(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[0]4 [22]),
        .O(\half_duty_new_reg[0]4_carry__1_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[0]4_carry__1_i_6 
       (.I0(\half_duty_new_reg[0]4 [21]),
        .I1(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[0]4 [20]),
        .O(\half_duty_new_reg[0]4_carry__1_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[0]4_carry__1_i_7 
       (.I0(\half_duty_new_reg[0]4 [19]),
        .I1(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[0]4 [18]),
        .O(\half_duty_new_reg[0]4_carry__1_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[0]4_carry__1_i_8 
       (.I0(\half_duty_new_reg[0]4 [17]),
        .I1(\half_duty_new_reg[0]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[0]7 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[0]4 [16]),
        .O(\half_duty_new_reg[0]4_carry__1_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[0]4_carry__1_i_9 
       (.CI(\half_duty_new_reg[0]4_carry__0_i_9_n_0 ),
        .CO({\half_duty_new_reg[0]4_carry__1_i_9_n_0 ,\half_duty_new_reg[0]4_carry__1_i_9_n_1 ,\half_duty_new_reg[0]4_carry__1_i_9_n_2 ,\half_duty_new_reg[0]4_carry__1_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[0]4 [20:17]),
        .S({\half_duty_new_reg[0]4_carry__1_i_10_n_0 ,\half_duty_new_reg[0]4_carry__1_i_11_n_0 ,\half_duty_new_reg[0]4_carry__1_i_12_n_0 ,\half_duty_new_reg[0]4_carry__1_i_13_n_0 }));
  CARRY4 \half_duty_new_reg[0]4_carry__2 
       (.CI(\half_duty_new_reg[0]4_carry__1_n_0 ),
        .CO({\half_duty_new_reg[0]4_carry__2_n_0 ,\half_duty_new_reg[0]4_carry__2_n_1 ,\half_duty_new_reg[0]4_carry__2_n_2 ,\half_duty_new_reg[0]4_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\half_duty_new_reg[0]4_carry__2_i_1_n_0 ,\half_duty_new_reg[0]4_carry__2_i_2_n_0 ,\half_duty_new_reg[0]4_carry__2_i_3_n_0 }),
        .O(\NLW_half_duty_new_reg[0]4_carry__2_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[0]4_carry__2_i_4_n_0 ,\half_duty_new_reg[0]4_carry__2_i_5_n_0 ,\half_duty_new_reg[0]4_carry__2_i_6_n_0 ,\half_duty_new_reg[0]4_carry__2_i_7_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new_reg[0]4_carry__2_i_1 
       (.I0(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .O(\half_duty_new_reg[0]4_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new_reg[0]4_carry__2_i_2 
       (.I0(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .O(\half_duty_new_reg[0]4_carry__2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new_reg[0]4_carry__2_i_3 
       (.I0(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .O(\half_duty_new_reg[0]4_carry__2_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new_reg[0]4_carry__2_i_4 
       (.I0(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__2_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new_reg[0]4_carry__2_i_5 
       (.I0(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__2_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new_reg[0]4_carry__2_i_6 
       (.I0(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__2_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new_reg[0]4_carry__2_i_7 
       (.I0(\half_duty_new_reg[0][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]4_carry__2_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEFEFEAEAEA)) 
    \half_duty_new_reg[0]4_carry_i_1 
       (.I0(\half_duty_new[0][5]_i_3_n_0 ),
        .I1(\half_duty_new_reg[0]4 [7]),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[0]6__53_carry__1_n_5 ),
        .I4(\half_duty_new_reg[0]7 ),
        .I5(\half_duty_new_reg[0]6 [15]),
        .O(\half_duty_new_reg[0]4_carry_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new_reg[0]4_carry_i_10 
       (.I0(\half_duty_new_reg[0]4 [4]),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[0]6__53_carry__0_n_4 ),
        .I3(\half_duty_new_reg[0]7 ),
        .I4(\half_duty_new_reg[0]6 [12]),
        .O(\half_duty_new_reg[0]4_carry_i_10_n_0 ));
  CARRY4 \half_duty_new_reg[0]4_carry_i_11 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[0]4_carry_i_11_n_0 ,\half_duty_new_reg[0]4_carry_i_11_n_1 ,\half_duty_new_reg[0]4_carry_i_11_n_2 ,\half_duty_new_reg[0]4_carry_i_11_n_3 }),
        .CYINIT(\half_duty_new_reg[0]4_carry_i_16_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[0]4 [4:1]),
        .S({\half_duty_new_reg[0]4_carry_i_17_n_0 ,\half_duty_new_reg[0]4_carry_i_18_n_0 ,\half_duty_new_reg[0]4_carry_i_19_n_0 ,\half_duty_new_reg[0]4_carry_i_20_n_0 }));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry_i_12 
       (.I0(\half_duty_new_reg[0]6 [16]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__1_n_4 ),
        .O(\half_duty_new_reg[0]4_carry_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry_i_13 
       (.I0(\half_duty_new_reg[0]6 [15]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__1_n_5 ),
        .O(\half_duty_new_reg[0]4_carry_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry_i_14 
       (.I0(\half_duty_new_reg[0]6 [14]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__1_n_6 ),
        .O(\half_duty_new_reg[0]4_carry_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry_i_15 
       (.I0(\half_duty_new_reg[0]6 [13]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__1_n_7 ),
        .O(\half_duty_new_reg[0]4_carry_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry_i_16 
       (.I0(\half_duty_new_reg[0]6 [8]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry_n_4 ),
        .O(\half_duty_new_reg[0]4_carry_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry_i_17 
       (.I0(\half_duty_new_reg[0]6 [12]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__0_n_4 ),
        .O(\half_duty_new_reg[0]4_carry_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry_i_18 
       (.I0(\half_duty_new_reg[0]6 [11]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__0_n_5 ),
        .O(\half_duty_new_reg[0]4_carry_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry_i_19 
       (.I0(\half_duty_new_reg[0]6 [10]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__0_n_6 ),
        .O(\half_duty_new_reg[0]4_carry_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEFEFEAEAEA)) 
    \half_duty_new_reg[0]4_carry_i_2 
       (.I0(\half_duty_new_reg[0]4_carry_i_10_n_0 ),
        .I1(\half_duty_new_reg[0]4 [5]),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[0]6__53_carry__1_n_7 ),
        .I4(\half_duty_new_reg[0]7 ),
        .I5(\half_duty_new_reg[0]6 [13]),
        .O(\half_duty_new_reg[0]4_carry_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[0]4_carry_i_20 
       (.I0(\half_duty_new_reg[0]6 [9]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__0_n_7 ),
        .O(\half_duty_new_reg[0]4_carry_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEFEFEAEAEA)) 
    \half_duty_new_reg[0]4_carry_i_3 
       (.I0(\half_duty_new[0][2]_i_3_n_0 ),
        .I1(\half_duty_new_reg[0]4 [3]),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[0]6__53_carry__0_n_5 ),
        .I4(\half_duty_new_reg[0]7 ),
        .I5(\half_duty_new_reg[0]6 [11]),
        .O(\half_duty_new_reg[0]4_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \half_duty_new_reg[0]4_carry_i_4 
       (.I0(\half_duty_new_reg[0]6 [9]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__0_n_7 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[0]4 [1]),
        .I5(\half_duty_new[0][2]_i_5_n_0 ),
        .O(\half_duty_new_reg[0]4_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \half_duty_new_reg[0]4_carry_i_5 
       (.I0(\half_duty_new_reg[0]6 [15]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__1_n_5 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[0]4 [7]),
        .I5(\half_duty_new[0][5]_i_3_n_0 ),
        .O(\half_duty_new_reg[0]4_carry_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \half_duty_new_reg[0]4_carry_i_6 
       (.I0(\half_duty_new_reg[0]6 [13]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__1_n_7 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[0]4 [5]),
        .I5(\half_duty_new_reg[0]4_carry_i_10_n_0 ),
        .O(\half_duty_new_reg[0]4_carry_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \half_duty_new_reg[0]4_carry_i_7 
       (.I0(\half_duty_new_reg[0]6 [11]),
        .I1(\half_duty_new_reg[0]7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__0_n_5 ),
        .I3(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[0]4 [3]),
        .I5(\half_duty_new[0][2]_i_3_n_0 ),
        .O(\half_duty_new_reg[0]4_carry_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1015101010151515)) 
    \half_duty_new_reg[0]4_carry_i_8 
       (.I0(\half_duty_new[0][2]_i_5_n_0 ),
        .I1(\half_duty_new_reg[0]4 [1]),
        .I2(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[0]6__53_carry__0_n_7 ),
        .I4(\half_duty_new_reg[0]7 ),
        .I5(\half_duty_new_reg[0]6 [9]),
        .O(\half_duty_new_reg[0]4_carry_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[0]4_carry_i_9 
       (.CI(\half_duty_new_reg[0]4_carry_i_11_n_0 ),
        .CO({\half_duty_new_reg[0]4_carry_i_9_n_0 ,\half_duty_new_reg[0]4_carry_i_9_n_1 ,\half_duty_new_reg[0]4_carry_i_9_n_2 ,\half_duty_new_reg[0]4_carry_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[0]4 [8:5]),
        .S({\half_duty_new_reg[0]4_carry_i_12_n_0 ,\half_duty_new_reg[0]4_carry_i_13_n_0 ,\half_duty_new_reg[0]4_carry_i_14_n_0 ,\half_duty_new_reg[0]4_carry_i_15_n_0 }));
  CARRY4 \half_duty_new_reg[0]50_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[0]50_carry_n_0 ,\half_duty_new_reg[0]50_carry_n_1 ,\half_duty_new_reg[0]50_carry_n_2 ,\half_duty_new_reg[0]50_carry_n_3 }),
        .CYINIT(\half_duty_new_reg[0]50_carry_i_1_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_half_duty_new_reg[0]50_carry_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[0]50_carry_i_2_n_0 ,\half_duty_new_reg[0]50_carry_i_3_n_0 ,\half_duty_new_reg[0]50_carry_i_4_n_0 ,\half_duty_new_reg[0]50_carry_i_5_n_0 }));
  CARRY4 \half_duty_new_reg[0]50_carry__0 
       (.CI(\half_duty_new_reg[0]50_carry_n_0 ),
        .CO({\half_duty_new_reg[0]50_carry__0_n_0 ,\half_duty_new_reg[0]50_carry__0_n_1 ,\half_duty_new_reg[0]50_carry__0_n_2 ,\half_duty_new_reg[0]50_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\half_duty_new_reg[0]6 [10:8],\NLW_half_duty_new_reg[0]50_carry__0_O_UNCONNECTED [0]}),
        .S({\half_duty_new_reg[0]50_carry__0_i_1_n_0 ,\half_duty_new_reg[0]50_carry__0_i_2_n_0 ,\half_duty_new_reg[0]50_carry__0_i_3_n_0 ,\half_duty_new_reg[0]50_carry__0_i_4_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry__0_i_1 
       (.I0(\half_duty_new_reg[0]6__53_carry__0_n_6 ),
        .O(\half_duty_new_reg[0]50_carry__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry__0_i_2 
       (.I0(\half_duty_new_reg[0]6__53_carry__0_n_7 ),
        .O(\half_duty_new_reg[0]50_carry__0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry__0_i_3 
       (.I0(\half_duty_new_reg[0]6__53_carry_n_4 ),
        .O(\half_duty_new_reg[0]50_carry__0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry__0_i_4 
       (.I0(\half_duty_new_reg[0]6__53_carry_n_5 ),
        .O(\half_duty_new_reg[0]50_carry__0_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[0]50_carry__1 
       (.CI(\half_duty_new_reg[0]50_carry__0_n_0 ),
        .CO({\half_duty_new_reg[0]50_carry__1_n_0 ,\half_duty_new_reg[0]50_carry__1_n_1 ,\half_duty_new_reg[0]50_carry__1_n_2 ,\half_duty_new_reg[0]50_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[0]6 [14:11]),
        .S({\half_duty_new_reg[0]50_carry__1_i_1_n_0 ,\half_duty_new_reg[0]50_carry__1_i_2_n_0 ,\half_duty_new_reg[0]50_carry__1_i_3_n_0 ,\half_duty_new_reg[0]50_carry__1_i_4_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry__1_i_1 
       (.I0(\half_duty_new_reg[0]6__53_carry__1_n_6 ),
        .O(\half_duty_new_reg[0]50_carry__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry__1_i_2 
       (.I0(\half_duty_new_reg[0]6__53_carry__1_n_7 ),
        .O(\half_duty_new_reg[0]50_carry__1_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry__1_i_3 
       (.I0(\half_duty_new_reg[0]6__53_carry__0_n_4 ),
        .O(\half_duty_new_reg[0]50_carry__1_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry__1_i_4 
       (.I0(\half_duty_new_reg[0]6__53_carry__0_n_5 ),
        .O(\half_duty_new_reg[0]50_carry__1_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[0]50_carry__2 
       (.CI(\half_duty_new_reg[0]50_carry__1_n_0 ),
        .CO({\half_duty_new_reg[0]50_carry__2_n_0 ,\half_duty_new_reg[0]50_carry__2_n_1 ,\half_duty_new_reg[0]50_carry__2_n_2 ,\half_duty_new_reg[0]50_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[0]6 [18:15]),
        .S({\half_duty_new_reg[0]50_carry__2_i_1_n_0 ,\half_duty_new_reg[0]50_carry__2_i_2_n_0 ,\half_duty_new_reg[0]50_carry__2_i_3_n_0 ,\half_duty_new_reg[0]50_carry__2_i_4_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry__2_i_1 
       (.I0(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]50_carry__2_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry__2_i_2 
       (.I0(\half_duty_new_reg[0]6__53_carry__2_n_7 ),
        .O(\half_duty_new_reg[0]50_carry__2_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry__2_i_3 
       (.I0(\half_duty_new_reg[0]6__53_carry__1_n_4 ),
        .O(\half_duty_new_reg[0]50_carry__2_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry__2_i_4 
       (.I0(\half_duty_new_reg[0]6__53_carry__1_n_5 ),
        .O(\half_duty_new_reg[0]50_carry__2_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[0]50_carry__3 
       (.CI(\half_duty_new_reg[0]50_carry__2_n_0 ),
        .CO(\NLW_half_duty_new_reg[0]50_carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_half_duty_new_reg[0]50_carry__3_O_UNCONNECTED [3:1],\half_duty_new_reg[0]50_carry__3_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry_i_1 
       (.I0(slv_reg0[0]),
        .O(\half_duty_new_reg[0]50_carry_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry_i_2 
       (.I0(\half_duty_new_reg[0]6__53_carry_n_6 ),
        .O(\half_duty_new_reg[0]50_carry_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \half_duty_new_reg[0]50_carry_i_3 
       (.I0(\half_duty_new_reg[0]6_carry_n_6 ),
        .I1(slv_reg0[3]),
        .I2(slv_reg0[2]),
        .I3(slv_reg0[0]),
        .O(\half_duty_new_reg[0]50_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[0]50_carry_i_4 
       (.I0(slv_reg0[2]),
        .I1(slv_reg0[0]),
        .O(\half_duty_new_reg[0]50_carry_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]50_carry_i_5 
       (.I0(slv_reg0[1]),
        .O(\half_duty_new_reg[0]50_carry_i_5_n_0 ));
  CARRY4 \half_duty_new_reg[0]6__26_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[0]6__26_carry_n_0 ,\half_duty_new_reg[0]6__26_carry_n_1 ,\half_duty_new_reg[0]6__26_carry_n_2 ,\half_duty_new_reg[0]6__26_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({slv_reg0[0],1'b0,1'b0,1'b1}),
        .O({\half_duty_new_reg[0]6__26_carry_n_4 ,\half_duty_new_reg[0]6__26_carry_n_5 ,\half_duty_new_reg[0]6__26_carry_n_6 ,\NLW_half_duty_new_reg[0]6__26_carry_O_UNCONNECTED [0]}),
        .S({\half_duty_new_reg[0]6__26_carry_i_1_n_0 ,\half_duty_new_reg[0]6__26_carry_i_2_n_0 ,\half_duty_new_reg[0]6__26_carry_i_3_n_0 ,slv_reg0[0]}));
  CARRY4 \half_duty_new_reg[0]6__26_carry__0 
       (.CI(\half_duty_new_reg[0]6__26_carry_n_0 ),
        .CO({\half_duty_new_reg[0]6__26_carry__0_n_0 ,\half_duty_new_reg[0]6__26_carry__0_n_1 ,\half_duty_new_reg[0]6__26_carry__0_n_2 ,\half_duty_new_reg[0]6__26_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(slv_reg0[4:1]),
        .O({\half_duty_new_reg[0]6__26_carry__0_n_4 ,\half_duty_new_reg[0]6__26_carry__0_n_5 ,\half_duty_new_reg[0]6__26_carry__0_n_6 ,\half_duty_new_reg[0]6__26_carry__0_n_7 }),
        .S({\half_duty_new_reg[0]6__26_carry__0_i_1_n_0 ,\half_duty_new_reg[0]6__26_carry__0_i_2_n_0 ,\half_duty_new_reg[0]6__26_carry__0_i_3_n_0 ,\half_duty_new_reg[0]6__26_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[0]6__26_carry__0_i_1 
       (.I0(slv_reg0[4]),
        .I1(slv_reg0[7]),
        .O(\half_duty_new_reg[0]6__26_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[0]6__26_carry__0_i_2 
       (.I0(slv_reg0[3]),
        .I1(slv_reg0[6]),
        .O(\half_duty_new_reg[0]6__26_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[0]6__26_carry__0_i_3 
       (.I0(slv_reg0[2]),
        .I1(slv_reg0[5]),
        .O(\half_duty_new_reg[0]6__26_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[0]6__26_carry__0_i_4 
       (.I0(slv_reg0[1]),
        .I1(slv_reg0[4]),
        .O(\half_duty_new_reg[0]6__26_carry__0_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[0]6__26_carry__1 
       (.CI(\half_duty_new_reg[0]6__26_carry__0_n_0 ),
        .CO({\NLW_half_duty_new_reg[0]6__26_carry__1_CO_UNCONNECTED [3],\half_duty_new_reg[0]6__26_carry__1_n_1 ,\half_duty_new_reg[0]6__26_carry__1_n_2 ,\half_duty_new_reg[0]6__26_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,slv_reg0[7:6],1'b0}),
        .O({\half_duty_new_reg[0]6__26_carry__1_n_4 ,\half_duty_new_reg[0]6__26_carry__1_n_5 ,\half_duty_new_reg[0]6__26_carry__1_n_6 ,\half_duty_new_reg[0]6__26_carry__1_n_7 }),
        .S({1'b1,\half_duty_new_reg[0]6__26_carry__1_i_1_n_0 ,\half_duty_new_reg[0]6__26_carry__1_i_2_n_0 ,slv_reg0[5]}));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]6__26_carry__1_i_1 
       (.I0(slv_reg0[7]),
        .O(\half_duty_new_reg[0]6__26_carry__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]6__26_carry__1_i_2 
       (.I0(slv_reg0[6]),
        .O(\half_duty_new_reg[0]6__26_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[0]6__26_carry_i_1 
       (.I0(slv_reg0[0]),
        .I1(slv_reg0[3]),
        .O(\half_duty_new_reg[0]6__26_carry_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]6__26_carry_i_2 
       (.I0(slv_reg0[2]),
        .O(\half_duty_new_reg[0]6__26_carry_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]6__26_carry_i_3 
       (.I0(slv_reg0[1]),
        .O(\half_duty_new_reg[0]6__26_carry_i_3_n_0 ));
  CARRY4 \half_duty_new_reg[0]6__53_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[0]6__53_carry_n_0 ,\half_duty_new_reg[0]6__53_carry_n_1 ,\half_duty_new_reg[0]6__53_carry_n_2 ,\half_duty_new_reg[0]6__53_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[0]6__53_carry_i_1_n_0 ,\half_duty_new_reg[0]6__53_carry_i_2_n_0 ,\half_duty_new_reg[0]6__53_carry_i_3_n_0 ,\half_duty_new_reg[0]6__53_carry_i_4_n_0 }),
        .O({\half_duty_new_reg[0]6__53_carry_n_4 ,\half_duty_new_reg[0]6__53_carry_n_5 ,\half_duty_new_reg[0]6__53_carry_n_6 ,\NLW_half_duty_new_reg[0]6__53_carry_O_UNCONNECTED [0]}),
        .S({\half_duty_new_reg[0]6__53_carry_i_5_n_0 ,\half_duty_new_reg[0]6__53_carry_i_6_n_0 ,\half_duty_new_reg[0]6__53_carry_i_7_n_0 ,\half_duty_new_reg[0]6__53_carry_i_8_n_0 }));
  CARRY4 \half_duty_new_reg[0]6__53_carry__0 
       (.CI(\half_duty_new_reg[0]6__53_carry_n_0 ),
        .CO({\half_duty_new_reg[0]6__53_carry__0_n_0 ,\half_duty_new_reg[0]6__53_carry__0_n_1 ,\half_duty_new_reg[0]6__53_carry__0_n_2 ,\half_duty_new_reg[0]6__53_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[0]6__53_carry__0_i_1_n_0 ,\half_duty_new_reg[0]6__53_carry__0_i_2_n_0 ,\half_duty_new_reg[0]6__53_carry__0_i_3_n_0 ,\half_duty_new_reg[0]6__53_carry__0_i_4_n_0 }),
        .O({\half_duty_new_reg[0]6__53_carry__0_n_4 ,\half_duty_new_reg[0]6__53_carry__0_n_5 ,\half_duty_new_reg[0]6__53_carry__0_n_6 ,\half_duty_new_reg[0]6__53_carry__0_n_7 }),
        .S({\half_duty_new_reg[0]6__53_carry__0_i_5_n_0 ,\half_duty_new_reg[0]6__53_carry__0_i_6_n_0 ,\half_duty_new_reg[0]6__53_carry__0_i_7_n_0 ,\half_duty_new_reg[0]6__53_carry__0_i_8_n_0 }));
  (* HLUTNM = "lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[0]6__53_carry__0_i_1 
       (.I0(\half_duty_new_reg[0]6_carry__0_n_4 ),
        .I1(\half_duty_new_reg[0]6__26_carry__0_n_6 ),
        .O(\half_duty_new_reg[0]6__53_carry__0_i_1_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[0]6__53_carry__0_i_2 
       (.I0(\half_duty_new_reg[0]6_carry__0_n_5 ),
        .I1(\half_duty_new_reg[0]6__26_carry__0_n_7 ),
        .O(\half_duty_new_reg[0]6__53_carry__0_i_2_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \half_duty_new_reg[0]6__53_carry__0_i_3 
       (.I0(\half_duty_new_reg[0]6_carry__0_n_6 ),
        .I1(slv_reg0[7]),
        .I2(\half_duty_new_reg[0]6__26_carry_n_4 ),
        .O(\half_duty_new_reg[0]6__53_carry__0_i_3_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \half_duty_new_reg[0]6__53_carry__0_i_4 
       (.I0(\half_duty_new_reg[0]6_carry__0_n_7 ),
        .I1(slv_reg0[6]),
        .I2(\half_duty_new_reg[0]6__26_carry_n_5 ),
        .O(\half_duty_new_reg[0]6__53_carry__0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \half_duty_new_reg[0]6__53_carry__0_i_5 
       (.I0(\half_duty_new_reg[0]6__53_carry__0_i_1_n_0 ),
        .I1(\half_duty_new_reg[0]6__26_carry__0_n_5 ),
        .I2(\half_duty_new_reg[0]6_carry__1_n_7 ),
        .O(\half_duty_new_reg[0]6__53_carry__0_i_5_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \half_duty_new_reg[0]6__53_carry__0_i_6 
       (.I0(\half_duty_new_reg[0]6_carry__0_n_4 ),
        .I1(\half_duty_new_reg[0]6__26_carry__0_n_6 ),
        .I2(\half_duty_new_reg[0]6__53_carry__0_i_2_n_0 ),
        .O(\half_duty_new_reg[0]6__53_carry__0_i_6_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \half_duty_new_reg[0]6__53_carry__0_i_7 
       (.I0(\half_duty_new_reg[0]6_carry__0_n_5 ),
        .I1(\half_duty_new_reg[0]6__26_carry__0_n_7 ),
        .I2(\half_duty_new_reg[0]6__53_carry__0_i_3_n_0 ),
        .O(\half_duty_new_reg[0]6__53_carry__0_i_7_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \half_duty_new_reg[0]6__53_carry__0_i_8 
       (.I0(\half_duty_new_reg[0]6_carry__0_n_6 ),
        .I1(slv_reg0[7]),
        .I2(\half_duty_new_reg[0]6__26_carry_n_4 ),
        .I3(\half_duty_new_reg[0]6__53_carry__0_i_4_n_0 ),
        .O(\half_duty_new_reg[0]6__53_carry__0_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[0]6__53_carry__1 
       (.CI(\half_duty_new_reg[0]6__53_carry__0_n_0 ),
        .CO({\half_duty_new_reg[0]6__53_carry__1_n_0 ,\half_duty_new_reg[0]6__53_carry__1_n_1 ,\half_duty_new_reg[0]6__53_carry__1_n_2 ,\half_duty_new_reg[0]6__53_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\half_duty_new_reg[0]6__26_carry__1_n_6 ,\half_duty_new_reg[0]6__53_carry__1_i_1_n_0 ,\half_duty_new_reg[0]6__53_carry__1_i_2_n_0 }),
        .O({\half_duty_new_reg[0]6__53_carry__1_n_4 ,\half_duty_new_reg[0]6__53_carry__1_n_5 ,\half_duty_new_reg[0]6__53_carry__1_n_6 ,\half_duty_new_reg[0]6__53_carry__1_n_7 }),
        .S({\half_duty_new_reg[0]6__26_carry__1_n_5 ,\half_duty_new_reg[0]6__53_carry__1_i_3_n_0 ,\half_duty_new_reg[0]6__53_carry__1_i_4_n_0 ,\half_duty_new_reg[0]6__53_carry__1_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[0]6__53_carry__1_i_1 
       (.I0(\half_duty_new_reg[0]6__26_carry__0_n_4 ),
        .I1(\half_duty_new_reg[0]6_carry__1_n_6 ),
        .O(\half_duty_new_reg[0]6__53_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[0]6__53_carry__1_i_2 
       (.I0(\half_duty_new_reg[0]6_carry__1_n_7 ),
        .I1(\half_duty_new_reg[0]6__26_carry__0_n_5 ),
        .O(\half_duty_new_reg[0]6__53_carry__1_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \half_duty_new_reg[0]6__53_carry__1_i_3 
       (.I0(\half_duty_new_reg[0]6_carry__1_n_1 ),
        .I1(\half_duty_new_reg[0]6__26_carry__1_n_7 ),
        .I2(\half_duty_new_reg[0]6__26_carry__1_n_6 ),
        .O(\half_duty_new_reg[0]6__53_carry__1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \half_duty_new_reg[0]6__53_carry__1_i_4 
       (.I0(\half_duty_new_reg[0]6_carry__1_n_6 ),
        .I1(\half_duty_new_reg[0]6__26_carry__0_n_4 ),
        .I2(\half_duty_new_reg[0]6__26_carry__1_n_7 ),
        .I3(\half_duty_new_reg[0]6_carry__1_n_1 ),
        .O(\half_duty_new_reg[0]6__53_carry__1_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \half_duty_new_reg[0]6__53_carry__1_i_5 
       (.I0(\half_duty_new_reg[0]6__26_carry__0_n_5 ),
        .I1(\half_duty_new_reg[0]6_carry__1_n_7 ),
        .I2(\half_duty_new_reg[0]6__26_carry__0_n_4 ),
        .I3(\half_duty_new_reg[0]6_carry__1_n_6 ),
        .O(\half_duty_new_reg[0]6__53_carry__1_i_5_n_0 ));
  CARRY4 \half_duty_new_reg[0]6__53_carry__2 
       (.CI(\half_duty_new_reg[0]6__53_carry__1_n_0 ),
        .CO({\NLW_half_duty_new_reg[0]6__53_carry__2_CO_UNCONNECTED [3:1],\half_duty_new_reg[0]6__53_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\half_duty_new_reg[0]6__26_carry__1_n_4 }),
        .O({\NLW_half_duty_new_reg[0]6__53_carry__2_O_UNCONNECTED [3:2],\half_duty_new_reg[0]6__53_carry__2_n_6 ,\half_duty_new_reg[0]6__53_carry__2_n_7 }),
        .S({1'b0,1'b0,\half_duty_new_reg[0]6__26_carry__1_n_4 ,\half_duty_new_reg[0]6__26_carry__1_n_4 }));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \half_duty_new_reg[0]6__53_carry_i_1 
       (.I0(\half_duty_new_reg[0]6_carry_n_4 ),
        .I1(slv_reg0[5]),
        .I2(\half_duty_new_reg[0]6__26_carry_n_6 ),
        .O(\half_duty_new_reg[0]6__53_carry_i_1_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \half_duty_new_reg[0]6__53_carry_i_2 
       (.I0(\half_duty_new_reg[0]6_carry_n_5 ),
        .I1(slv_reg0[4]),
        .I2(\half_duty_new_reg[0]6_carry_n_7 ),
        .O(\half_duty_new_reg[0]6__53_carry_i_2_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[0]6__53_carry_i_3 
       (.I0(slv_reg0[3]),
        .I1(\half_duty_new_reg[0]6_carry_n_6 ),
        .O(\half_duty_new_reg[0]6__53_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[0]6__53_carry_i_4 
       (.I0(slv_reg0[2]),
        .I1(slv_reg0[0]),
        .O(\half_duty_new_reg[0]6__53_carry_i_4_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \half_duty_new_reg[0]6__53_carry_i_5 
       (.I0(\half_duty_new_reg[0]6_carry__0_n_7 ),
        .I1(slv_reg0[6]),
        .I2(\half_duty_new_reg[0]6__26_carry_n_5 ),
        .I3(\half_duty_new_reg[0]6__53_carry_i_1_n_0 ),
        .O(\half_duty_new_reg[0]6__53_carry_i_5_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \half_duty_new_reg[0]6__53_carry_i_6 
       (.I0(\half_duty_new_reg[0]6_carry_n_4 ),
        .I1(slv_reg0[5]),
        .I2(\half_duty_new_reg[0]6__26_carry_n_6 ),
        .I3(\half_duty_new_reg[0]6__53_carry_i_2_n_0 ),
        .O(\half_duty_new_reg[0]6__53_carry_i_6_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \half_duty_new_reg[0]6__53_carry_i_7 
       (.I0(\half_duty_new_reg[0]6_carry_n_5 ),
        .I1(slv_reg0[4]),
        .I2(\half_duty_new_reg[0]6_carry_n_7 ),
        .I3(\half_duty_new_reg[0]6__53_carry_i_3_n_0 ),
        .O(\half_duty_new_reg[0]6__53_carry_i_7_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \half_duty_new_reg[0]6__53_carry_i_8 
       (.I0(slv_reg0[3]),
        .I1(\half_duty_new_reg[0]6_carry_n_6 ),
        .I2(slv_reg0[0]),
        .I3(slv_reg0[2]),
        .O(\half_duty_new_reg[0]6__53_carry_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[0]6_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[0]6_carry_n_0 ,\half_duty_new_reg[0]6_carry_n_1 ,\half_duty_new_reg[0]6_carry_n_2 ,\half_duty_new_reg[0]6_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({slv_reg0[1:0],1'b0,1'b1}),
        .O({\half_duty_new_reg[0]6_carry_n_4 ,\half_duty_new_reg[0]6_carry_n_5 ,\half_duty_new_reg[0]6_carry_n_6 ,\half_duty_new_reg[0]6_carry_n_7 }),
        .S({\half_duty_new_reg[0]6_carry_i_1_n_0 ,\half_duty_new_reg[0]6_carry_i_2_n_0 ,\half_duty_new_reg[0]6_carry_i_3_n_0 ,slv_reg0[0]}));
  CARRY4 \half_duty_new_reg[0]6_carry__0 
       (.CI(\half_duty_new_reg[0]6_carry_n_0 ),
        .CO({\half_duty_new_reg[0]6_carry__0_n_0 ,\half_duty_new_reg[0]6_carry__0_n_1 ,\half_duty_new_reg[0]6_carry__0_n_2 ,\half_duty_new_reg[0]6_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({slv_reg0[7],slv_reg0[4:2]}),
        .O({\half_duty_new_reg[0]6_carry__0_n_4 ,\half_duty_new_reg[0]6_carry__0_n_5 ,\half_duty_new_reg[0]6_carry__0_n_6 ,\half_duty_new_reg[0]6_carry__0_n_7 }),
        .S({\half_duty_new_reg[0]6_carry__0_i_1_n_0 ,\half_duty_new_reg[0]6_carry__0_i_2_n_0 ,\half_duty_new_reg[0]6_carry__0_i_3_n_0 ,\half_duty_new_reg[0]6_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \half_duty_new_reg[0]6_carry__0_i_1 
       (.I0(slv_reg0[7]),
        .I1(slv_reg0[5]),
        .O(\half_duty_new_reg[0]6_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[0]6_carry__0_i_2 
       (.I0(slv_reg0[4]),
        .I1(slv_reg0[6]),
        .O(\half_duty_new_reg[0]6_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[0]6_carry__0_i_3 
       (.I0(slv_reg0[3]),
        .I1(slv_reg0[5]),
        .O(\half_duty_new_reg[0]6_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[0]6_carry__0_i_4 
       (.I0(slv_reg0[2]),
        .I1(slv_reg0[4]),
        .O(\half_duty_new_reg[0]6_carry__0_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[0]6_carry__1 
       (.CI(\half_duty_new_reg[0]6_carry__0_n_0 ),
        .CO({\NLW_half_duty_new_reg[0]6_carry__1_CO_UNCONNECTED [3],\half_duty_new_reg[0]6_carry__1_n_1 ,\NLW_half_duty_new_reg[0]6_carry__1_CO_UNCONNECTED [1],\half_duty_new_reg[0]6_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,slv_reg0[7:6]}),
        .O({\NLW_half_duty_new_reg[0]6_carry__1_O_UNCONNECTED [3:2],\half_duty_new_reg[0]6_carry__1_n_6 ,\half_duty_new_reg[0]6_carry__1_n_7 }),
        .S({1'b0,1'b1,\half_duty_new_reg[0]6_carry__1_i_1_n_0 ,\half_duty_new_reg[0]6_carry__1_i_2_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]6_carry__1_i_1 
       (.I0(slv_reg0[7]),
        .O(\half_duty_new_reg[0]6_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[0]6_carry__1_i_2 
       (.I0(slv_reg0[7]),
        .I1(slv_reg0[6]),
        .O(\half_duty_new_reg[0]6_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[0]6_carry_i_1 
       (.I0(slv_reg0[1]),
        .I1(slv_reg0[3]),
        .O(\half_duty_new_reg[0]6_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[0]6_carry_i_2 
       (.I0(slv_reg0[2]),
        .I1(slv_reg0[0]),
        .O(\half_duty_new_reg[0]6_carry_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]6_carry_i_3 
       (.I0(slv_reg0[1]),
        .O(\half_duty_new_reg[0]6_carry_i_3_n_0 ));
  CARRY4 \half_duty_new_reg[0]7_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[0]7_carry_n_0 ,\half_duty_new_reg[0]7_carry_n_1 ,\half_duty_new_reg[0]7_carry_n_2 ,\half_duty_new_reg[0]7_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\half_duty_new_reg[0]7_carry_i_1_n_0 ,\half_duty_new_reg[0]7_carry_i_2_n_0 ,\half_duty_new_reg[0]7_carry_i_3_n_0 ,\half_duty_new_reg[0]7_carry_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[0]7_carry_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[0]7_carry_i_5_n_0 ,\half_duty_new_reg[0]7_carry_i_6_n_0 ,\half_duty_new_reg[0]7_carry_i_7_n_0 ,\half_duty_new_reg[0]7_carry_i_8_n_0 }));
  CARRY4 \half_duty_new_reg[0]7_carry__0 
       (.CI(\half_duty_new_reg[0]7_carry_n_0 ),
        .CO({\half_duty_new_reg[0]7_carry__0_n_0 ,\half_duty_new_reg[0]7_carry__0_n_1 ,\half_duty_new_reg[0]7_carry__0_n_2 ,\half_duty_new_reg[0]7_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[0]7_carry__0_i_1_n_0 ,\half_duty_new_reg[0]7_carry__0_i_2_n_0 ,\half_duty_new_reg[0]7_carry__0_i_3_n_0 ,\half_duty_new_reg[0]7_carry__0_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[0]7_carry__0_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[0]7_carry__0_i_5_n_0 ,\half_duty_new_reg[0]7_carry__0_i_6_n_0 ,\half_duty_new_reg[0]7_carry__0_i_7_n_0 ,\half_duty_new_reg[0]7_carry__0_i_8_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[0]7_carry__0_i_1 
       (.I0(\half_duty_new_reg[0]6__53_carry__1_n_4 ),
        .I1(\half_duty_new_reg[0]6__53_carry__2_n_7 ),
        .O(\half_duty_new_reg[0]7_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[0]7_carry__0_i_2 
       (.I0(\half_duty_new_reg[0]6__53_carry__1_n_6 ),
        .I1(\half_duty_new_reg[0]6__53_carry__1_n_5 ),
        .O(\half_duty_new_reg[0]7_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[0]7_carry__0_i_3 
       (.I0(\half_duty_new_reg[0]6__53_carry__0_n_4 ),
        .I1(\half_duty_new_reg[0]6__53_carry__1_n_7 ),
        .O(\half_duty_new_reg[0]7_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[0]7_carry__0_i_4 
       (.I0(\half_duty_new_reg[0]6__53_carry__0_n_6 ),
        .I1(\half_duty_new_reg[0]6__53_carry__0_n_5 ),
        .O(\half_duty_new_reg[0]7_carry__0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[0]7_carry__0_i_5 
       (.I0(\half_duty_new_reg[0]6__53_carry__2_n_7 ),
        .I1(\half_duty_new_reg[0]6__53_carry__1_n_4 ),
        .O(\half_duty_new_reg[0]7_carry__0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[0]7_carry__0_i_6 
       (.I0(\half_duty_new_reg[0]6__53_carry__1_n_5 ),
        .I1(\half_duty_new_reg[0]6__53_carry__1_n_6 ),
        .O(\half_duty_new_reg[0]7_carry__0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[0]7_carry__0_i_7 
       (.I0(\half_duty_new_reg[0]6__53_carry__1_n_7 ),
        .I1(\half_duty_new_reg[0]6__53_carry__0_n_4 ),
        .O(\half_duty_new_reg[0]7_carry__0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[0]7_carry__0_i_8 
       (.I0(\half_duty_new_reg[0]6__53_carry__0_n_5 ),
        .I1(\half_duty_new_reg[0]6__53_carry__0_n_6 ),
        .O(\half_duty_new_reg[0]7_carry__0_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[0]7_carry__1 
       (.CI(\half_duty_new_reg[0]7_carry__0_n_0 ),
        .CO({\NLW_half_duty_new_reg[0]7_carry__1_CO_UNCONNECTED [3:1],\half_duty_new_reg[0]7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_half_duty_new_reg[0]7_carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\half_duty_new_reg[0]7_carry__1_i_1_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[0]7_carry__1_i_1 
       (.I0(\half_duty_new_reg[0]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[0]7_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[0]7_carry_i_1 
       (.I0(\half_duty_new_reg[0]6__53_carry_n_4 ),
        .I1(\half_duty_new_reg[0]6__53_carry__0_n_7 ),
        .O(\half_duty_new_reg[0]7_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[0]7_carry_i_2 
       (.I0(\half_duty_new_reg[0]6__53_carry_n_6 ),
        .I1(\half_duty_new_reg[0]6__53_carry_n_5 ),
        .O(\half_duty_new_reg[0]7_carry_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE77E)) 
    \half_duty_new_reg[0]7_carry_i_3 
       (.I0(slv_reg0[0]),
        .I1(slv_reg0[2]),
        .I2(slv_reg0[3]),
        .I3(\half_duty_new_reg[0]6_carry_n_6 ),
        .O(\half_duty_new_reg[0]7_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[0]7_carry_i_4 
       (.I0(slv_reg0[0]),
        .I1(slv_reg0[1]),
        .O(\half_duty_new_reg[0]7_carry_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[0]7_carry_i_5 
       (.I0(\half_duty_new_reg[0]6__53_carry__0_n_7 ),
        .I1(\half_duty_new_reg[0]6__53_carry_n_4 ),
        .O(\half_duty_new_reg[0]7_carry_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[0]7_carry_i_6 
       (.I0(\half_duty_new_reg[0]6__53_carry_n_5 ),
        .I1(\half_duty_new_reg[0]6__53_carry_n_6 ),
        .O(\half_duty_new_reg[0]7_carry_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6009)) 
    \half_duty_new_reg[0]7_carry_i_7 
       (.I0(\half_duty_new_reg[0]6_carry_n_6 ),
        .I1(slv_reg0[3]),
        .I2(slv_reg0[2]),
        .I3(slv_reg0[0]),
        .O(\half_duty_new_reg[0]7_carry_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[0]7_carry_i_8 
       (.I0(slv_reg0[1]),
        .I1(slv_reg0[0]),
        .O(\half_duty_new_reg[0]7_carry_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new_reg[0]10_in [0]),
        .Q(\half_duty_new_reg[0]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[0][1]_i_1_n_0 ),
        .Q(\half_duty_new_reg[0]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[0][2]_i_1_n_0 ),
        .Q(\half_duty_new_reg[0]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[0][3]_i_1_n_0 ),
        .Q(\half_duty_new_reg[0]_1 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[0][4]_i_1_n_0 ),
        .Q(\half_duty_new_reg[0]_1 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[0][5]_i_1_n_0 ),
        .Q(\half_duty_new_reg[0]_1 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[0][6]_i_1_n_0 ),
        .Q(\half_duty_new_reg[0]_1 [6]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[0][6]_i_2 
       (.CI(\half_duty_new_reg[0]4_carry__1_i_9_n_0 ),
        .CO({\NLW_half_duty_new_reg[0][6]_i_2_CO_UNCONNECTED [3],\half_duty_new_reg[0][6]_i_2_n_1 ,\NLW_half_duty_new_reg[0][6]_i_2_CO_UNCONNECTED [1],\half_duty_new_reg[0][6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_half_duty_new_reg[0][6]_i_2_O_UNCONNECTED [3:2],\half_duty_new_reg[0]4 [22:21]}),
        .S({1'b0,1'b1,\half_duty_new[0][6]_i_4_n_0 ,\half_duty_new[0][6]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[0][7]_i_1_n_0 ),
        .Q(\half_duty_new_reg[0]_1 [7]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[1]4_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[1]4_carry_n_0 ,\half_duty_new_reg[1]4_carry_n_1 ,\half_duty_new_reg[1]4_carry_n_2 ,\half_duty_new_reg[1]4_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\half_duty_new_reg[1]4_carry_i_1_n_0 ,\half_duty_new_reg[1]4_carry_i_2_n_0 ,\half_duty_new_reg[1]4_carry_i_3_n_0 ,\half_duty_new_reg[1]4_carry_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[1]4_carry_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[1]4_carry_i_5_n_0 ,\half_duty_new_reg[1]4_carry_i_6_n_0 ,\half_duty_new_reg[1]4_carry_i_7_n_0 ,\half_duty_new_reg[1]4_carry_i_8_n_0 }));
  CARRY4 \half_duty_new_reg[1]4_carry__0 
       (.CI(\half_duty_new_reg[1]4_carry_n_0 ),
        .CO({\half_duty_new_reg[1]4_carry__0_n_0 ,\half_duty_new_reg[1]4_carry__0_n_1 ,\half_duty_new_reg[1]4_carry__0_n_2 ,\half_duty_new_reg[1]4_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[1]4_carry__0_i_1_n_0 ,\half_duty_new_reg[1]4_carry__0_i_2_n_0 ,\half_duty_new_reg[1]4_carry__0_i_3_n_0 ,\half_duty_new_reg[1]4_carry__0_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[1]4_carry__0_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[1]4_carry__0_i_5_n_0 ,\half_duty_new_reg[1]4_carry__0_i_6_n_0 ,\half_duty_new_reg[1]4_carry__0_i_7_n_0 ,\half_duty_new_reg[1]4_carry__0_i_8_n_0 }));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[1]4_carry__0_i_1 
       (.I0(\half_duty_new_reg[1]4 [14]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[1]4 [15]),
        .O(\half_duty_new_reg[1]4_carry__0_i_1_n_0 ));
  CARRY4 \half_duty_new_reg[1]4_carry__0_i_10 
       (.CI(\half_duty_new_reg[1]4_carry_i_9_n_0 ),
        .CO({\half_duty_new_reg[1]4_carry__0_i_10_n_0 ,\half_duty_new_reg[1]4_carry__0_i_10_n_1 ,\half_duty_new_reg[1]4_carry__0_i_10_n_2 ,\half_duty_new_reg[1]4_carry__0_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[1]4 [12:9]),
        .S({\half_duty_new_reg[1]4_carry__0_i_15_n_0 ,\half_duty_new_reg[1]4_carry__0_i_16_n_0 ,\half_duty_new_reg[1]4_carry__0_i_17_n_0 ,\half_duty_new_reg[1]4_carry__0_i_18_n_0 }));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry__0_i_11 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry__0_i_12 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry__0_i_13 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry__0_i_14 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry__0_i_15 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry__0_i_16 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry__0_i_17 
       (.I0(\half_duty_new_reg[1]6 [18]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__0_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry__0_i_18 
       (.I0(\half_duty_new_reg[1]6 [17]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_7 ),
        .O(\half_duty_new_reg[1]4_carry__0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[1]4_carry__0_i_2 
       (.I0(\half_duty_new_reg[1]4 [12]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[1]4 [13]),
        .O(\half_duty_new_reg[1]4_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCF8B8BCFCC8B88)) 
    \half_duty_new_reg[1]4_carry__0_i_3 
       (.I0(\half_duty_new_reg[1]4 [10]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]6 [18]),
        .I4(\half_duty_new_reg[1]4 [11]),
        .I5(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .O(\half_duty_new_reg[1]4_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEFEFEAEAEA)) 
    \half_duty_new_reg[1]4_carry__0_i_4 
       (.I0(\half_duty_new[1][7]_i_4_n_0 ),
        .I1(\half_duty_new_reg[1]4 [9]),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_7 ),
        .I4(\half_duty_new_reg[1]7 ),
        .I5(\half_duty_new_reg[1]6 [17]),
        .O(\half_duty_new_reg[1]4_carry__0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[1]4_carry__0_i_5 
       (.I0(\half_duty_new_reg[1]4 [15]),
        .I1(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[1]4 [14]),
        .O(\half_duty_new_reg[1]4_carry__0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[1]4_carry__0_i_6 
       (.I0(\half_duty_new_reg[1]4 [13]),
        .I1(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[1]4 [12]),
        .O(\half_duty_new_reg[1]4_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF053333FF05)) 
    \half_duty_new_reg[1]4_carry__0_i_7 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]4 [11]),
        .I2(\half_duty_new_reg[1]6 [18]),
        .I3(\half_duty_new_reg[1]7 ),
        .I4(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I5(\half_duty_new_reg[1]4 [10]),
        .O(\half_duty_new_reg[1]4_carry__0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \half_duty_new_reg[1]4_carry__0_i_8 
       (.I0(\half_duty_new_reg[1]6 [17]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_7 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[1]4 [9]),
        .I5(\half_duty_new[1][7]_i_4_n_0 ),
        .O(\half_duty_new_reg[1]4_carry__0_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[1]4_carry__0_i_9 
       (.CI(\half_duty_new_reg[1]4_carry__0_i_10_n_0 ),
        .CO({\half_duty_new_reg[1]4_carry__0_i_9_n_0 ,\half_duty_new_reg[1]4_carry__0_i_9_n_1 ,\half_duty_new_reg[1]4_carry__0_i_9_n_2 ,\half_duty_new_reg[1]4_carry__0_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[1]4 [16:13]),
        .S({\half_duty_new_reg[1]4_carry__0_i_11_n_0 ,\half_duty_new_reg[1]4_carry__0_i_12_n_0 ,\half_duty_new_reg[1]4_carry__0_i_13_n_0 ,\half_duty_new_reg[1]4_carry__0_i_14_n_0 }));
  CARRY4 \half_duty_new_reg[1]4_carry__1 
       (.CI(\half_duty_new_reg[1]4_carry__0_n_0 ),
        .CO({\half_duty_new_reg[1]4_carry__1_n_0 ,\half_duty_new_reg[1]4_carry__1_n_1 ,\half_duty_new_reg[1]4_carry__1_n_2 ,\half_duty_new_reg[1]4_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[1]4_carry__1_i_1_n_0 ,\half_duty_new_reg[1]4_carry__1_i_2_n_0 ,\half_duty_new_reg[1]4_carry__1_i_3_n_0 ,\half_duty_new_reg[1]4_carry__1_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[1]4_carry__1_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[1]4_carry__1_i_5_n_0 ,\half_duty_new_reg[1]4_carry__1_i_6_n_0 ,\half_duty_new_reg[1]4_carry__1_i_7_n_0 ,\half_duty_new_reg[1]4_carry__1_i_8_n_0 }));
  LUT5 #(
    .INIT(32'h8B88CFCC)) 
    \half_duty_new_reg[1]4_carry__1_i_1 
       (.I0(\half_duty_new_reg[1]4 [22]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .O(\half_duty_new_reg[1]4_carry__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry__1_i_10 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__1_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry__1_i_11 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__1_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry__1_i_12 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__1_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry__1_i_13 
       (.I0(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__1_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[1]4_carry__1_i_2 
       (.I0(\half_duty_new_reg[1]4 [20]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[1]4 [21]),
        .O(\half_duty_new_reg[1]4_carry__1_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[1]4_carry__1_i_3 
       (.I0(\half_duty_new_reg[1]4 [18]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[1]4 [19]),
        .O(\half_duty_new_reg[1]4_carry__1_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[1]4_carry__1_i_4 
       (.I0(\half_duty_new_reg[1]4 [16]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[1]4 [17]),
        .O(\half_duty_new_reg[1]4_carry__1_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00F3AAF3)) 
    \half_duty_new_reg[1]4_carry__1_i_5 
       (.I0(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[1]4 [22]),
        .O(\half_duty_new_reg[1]4_carry__1_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[1]4_carry__1_i_6 
       (.I0(\half_duty_new_reg[1]4 [21]),
        .I1(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[1]4 [20]),
        .O(\half_duty_new_reg[1]4_carry__1_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[1]4_carry__1_i_7 
       (.I0(\half_duty_new_reg[1]4 [19]),
        .I1(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[1]4 [18]),
        .O(\half_duty_new_reg[1]4_carry__1_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[1]4_carry__1_i_8 
       (.I0(\half_duty_new_reg[1]4 [17]),
        .I1(\half_duty_new_reg[1]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[1]7 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[1]4 [16]),
        .O(\half_duty_new_reg[1]4_carry__1_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[1]4_carry__1_i_9 
       (.CI(\half_duty_new_reg[1]4_carry__0_i_9_n_0 ),
        .CO({\half_duty_new_reg[1]4_carry__1_i_9_n_0 ,\half_duty_new_reg[1]4_carry__1_i_9_n_1 ,\half_duty_new_reg[1]4_carry__1_i_9_n_2 ,\half_duty_new_reg[1]4_carry__1_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[1]4 [20:17]),
        .S({\half_duty_new_reg[1]4_carry__1_i_10_n_0 ,\half_duty_new_reg[1]4_carry__1_i_11_n_0 ,\half_duty_new_reg[1]4_carry__1_i_12_n_0 ,\half_duty_new_reg[1]4_carry__1_i_13_n_0 }));
  CARRY4 \half_duty_new_reg[1]4_carry__2 
       (.CI(\half_duty_new_reg[1]4_carry__1_n_0 ),
        .CO({\half_duty_new_reg[1]4_carry__2_n_0 ,\half_duty_new_reg[1]4_carry__2_n_1 ,\half_duty_new_reg[1]4_carry__2_n_2 ,\half_duty_new_reg[1]4_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\half_duty_new_reg[1]4_carry__2_i_1_n_0 ,\half_duty_new_reg[1]4_carry__2_i_2_n_0 ,\half_duty_new_reg[1]4_carry__2_i_3_n_0 }),
        .O(\NLW_half_duty_new_reg[1]4_carry__2_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[1]4_carry__2_i_4_n_0 ,\half_duty_new_reg[1]4_carry__2_i_5_n_0 ,\half_duty_new_reg[1]4_carry__2_i_6_n_0 ,\half_duty_new_reg[1]4_carry__2_i_7_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new_reg[1]4_carry__2_i_1 
       (.I0(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .O(\half_duty_new_reg[1]4_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new_reg[1]4_carry__2_i_2 
       (.I0(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .O(\half_duty_new_reg[1]4_carry__2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new_reg[1]4_carry__2_i_3 
       (.I0(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .O(\half_duty_new_reg[1]4_carry__2_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new_reg[1]4_carry__2_i_4 
       (.I0(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__2_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new_reg[1]4_carry__2_i_5 
       (.I0(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__2_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new_reg[1]4_carry__2_i_6 
       (.I0(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__2_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new_reg[1]4_carry__2_i_7 
       (.I0(\half_duty_new_reg[1][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]4_carry__2_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEFEFEAEAEA)) 
    \half_duty_new_reg[1]4_carry_i_1 
       (.I0(\half_duty_new[1][5]_i_3_n_0 ),
        .I1(\half_duty_new_reg[1]4 [7]),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[1]6__53_carry__1_n_5 ),
        .I4(\half_duty_new_reg[1]7 ),
        .I5(\half_duty_new_reg[1]6 [15]),
        .O(\half_duty_new_reg[1]4_carry_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new_reg[1]4_carry_i_10 
       (.I0(\half_duty_new_reg[1]4 [4]),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[1]6__53_carry__0_n_4 ),
        .I3(\half_duty_new_reg[1]7 ),
        .I4(\half_duty_new_reg[1]6 [12]),
        .O(\half_duty_new_reg[1]4_carry_i_10_n_0 ));
  CARRY4 \half_duty_new_reg[1]4_carry_i_11 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[1]4_carry_i_11_n_0 ,\half_duty_new_reg[1]4_carry_i_11_n_1 ,\half_duty_new_reg[1]4_carry_i_11_n_2 ,\half_duty_new_reg[1]4_carry_i_11_n_3 }),
        .CYINIT(\half_duty_new_reg[1]4_carry_i_16_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[1]4 [4:1]),
        .S({\half_duty_new_reg[1]4_carry_i_17_n_0 ,\half_duty_new_reg[1]4_carry_i_18_n_0 ,\half_duty_new_reg[1]4_carry_i_19_n_0 ,\half_duty_new_reg[1]4_carry_i_20_n_0 }));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry_i_12 
       (.I0(\half_duty_new_reg[1]6 [16]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__1_n_4 ),
        .O(\half_duty_new_reg[1]4_carry_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry_i_13 
       (.I0(\half_duty_new_reg[1]6 [15]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__1_n_5 ),
        .O(\half_duty_new_reg[1]4_carry_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry_i_14 
       (.I0(\half_duty_new_reg[1]6 [14]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__1_n_6 ),
        .O(\half_duty_new_reg[1]4_carry_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry_i_15 
       (.I0(\half_duty_new_reg[1]6 [13]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__1_n_7 ),
        .O(\half_duty_new_reg[1]4_carry_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry_i_16 
       (.I0(\half_duty_new_reg[1]6 [8]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry_n_4 ),
        .O(\half_duty_new_reg[1]4_carry_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry_i_17 
       (.I0(\half_duty_new_reg[1]6 [12]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__0_n_4 ),
        .O(\half_duty_new_reg[1]4_carry_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry_i_18 
       (.I0(\half_duty_new_reg[1]6 [11]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__0_n_5 ),
        .O(\half_duty_new_reg[1]4_carry_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry_i_19 
       (.I0(\half_duty_new_reg[1]6 [10]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__0_n_6 ),
        .O(\half_duty_new_reg[1]4_carry_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEFEFEAEAEA)) 
    \half_duty_new_reg[1]4_carry_i_2 
       (.I0(\half_duty_new_reg[1]4_carry_i_10_n_0 ),
        .I1(\half_duty_new_reg[1]4 [5]),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[1]6__53_carry__1_n_7 ),
        .I4(\half_duty_new_reg[1]7 ),
        .I5(\half_duty_new_reg[1]6 [13]),
        .O(\half_duty_new_reg[1]4_carry_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[1]4_carry_i_20 
       (.I0(\half_duty_new_reg[1]6 [9]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__0_n_7 ),
        .O(\half_duty_new_reg[1]4_carry_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEFEFEAEAEA)) 
    \half_duty_new_reg[1]4_carry_i_3 
       (.I0(\half_duty_new[1][2]_i_3_n_0 ),
        .I1(\half_duty_new_reg[1]4 [3]),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[1]6__53_carry__0_n_5 ),
        .I4(\half_duty_new_reg[1]7 ),
        .I5(\half_duty_new_reg[1]6 [11]),
        .O(\half_duty_new_reg[1]4_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \half_duty_new_reg[1]4_carry_i_4 
       (.I0(\half_duty_new_reg[1]6 [9]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__0_n_7 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[1]4 [1]),
        .I5(\half_duty_new[1][2]_i_5_n_0 ),
        .O(\half_duty_new_reg[1]4_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \half_duty_new_reg[1]4_carry_i_5 
       (.I0(\half_duty_new_reg[1]6 [15]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__1_n_5 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[1]4 [7]),
        .I5(\half_duty_new[1][5]_i_3_n_0 ),
        .O(\half_duty_new_reg[1]4_carry_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \half_duty_new_reg[1]4_carry_i_6 
       (.I0(\half_duty_new_reg[1]6 [13]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__1_n_7 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[1]4 [5]),
        .I5(\half_duty_new_reg[1]4_carry_i_10_n_0 ),
        .O(\half_duty_new_reg[1]4_carry_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \half_duty_new_reg[1]4_carry_i_7 
       (.I0(\half_duty_new_reg[1]6 [11]),
        .I1(\half_duty_new_reg[1]7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__0_n_5 ),
        .I3(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[1]4 [3]),
        .I5(\half_duty_new[1][2]_i_3_n_0 ),
        .O(\half_duty_new_reg[1]4_carry_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1015101010151515)) 
    \half_duty_new_reg[1]4_carry_i_8 
       (.I0(\half_duty_new[1][2]_i_5_n_0 ),
        .I1(\half_duty_new_reg[1]4 [1]),
        .I2(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[1]6__53_carry__0_n_7 ),
        .I4(\half_duty_new_reg[1]7 ),
        .I5(\half_duty_new_reg[1]6 [9]),
        .O(\half_duty_new_reg[1]4_carry_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[1]4_carry_i_9 
       (.CI(\half_duty_new_reg[1]4_carry_i_11_n_0 ),
        .CO({\half_duty_new_reg[1]4_carry_i_9_n_0 ,\half_duty_new_reg[1]4_carry_i_9_n_1 ,\half_duty_new_reg[1]4_carry_i_9_n_2 ,\half_duty_new_reg[1]4_carry_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[1]4 [8:5]),
        .S({\half_duty_new_reg[1]4_carry_i_12_n_0 ,\half_duty_new_reg[1]4_carry_i_13_n_0 ,\half_duty_new_reg[1]4_carry_i_14_n_0 ,\half_duty_new_reg[1]4_carry_i_15_n_0 }));
  CARRY4 \half_duty_new_reg[1]50_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[1]50_carry_n_0 ,\half_duty_new_reg[1]50_carry_n_1 ,\half_duty_new_reg[1]50_carry_n_2 ,\half_duty_new_reg[1]50_carry_n_3 }),
        .CYINIT(\half_duty_new_reg[1]50_carry_i_1_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_half_duty_new_reg[1]50_carry_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[1]50_carry_i_2_n_0 ,\half_duty_new_reg[1]50_carry_i_3_n_0 ,\half_duty_new_reg[1]50_carry_i_4_n_0 ,\half_duty_new_reg[1]50_carry_i_5_n_0 }));
  CARRY4 \half_duty_new_reg[1]50_carry__0 
       (.CI(\half_duty_new_reg[1]50_carry_n_0 ),
        .CO({\half_duty_new_reg[1]50_carry__0_n_0 ,\half_duty_new_reg[1]50_carry__0_n_1 ,\half_duty_new_reg[1]50_carry__0_n_2 ,\half_duty_new_reg[1]50_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\half_duty_new_reg[1]6 [10:8],\NLW_half_duty_new_reg[1]50_carry__0_O_UNCONNECTED [0]}),
        .S({\half_duty_new_reg[1]50_carry__0_i_1_n_0 ,\half_duty_new_reg[1]50_carry__0_i_2_n_0 ,\half_duty_new_reg[1]50_carry__0_i_3_n_0 ,\half_duty_new_reg[1]50_carry__0_i_4_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry__0_i_1 
       (.I0(\half_duty_new_reg[1]6__53_carry__0_n_6 ),
        .O(\half_duty_new_reg[1]50_carry__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry__0_i_2 
       (.I0(\half_duty_new_reg[1]6__53_carry__0_n_7 ),
        .O(\half_duty_new_reg[1]50_carry__0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry__0_i_3 
       (.I0(\half_duty_new_reg[1]6__53_carry_n_4 ),
        .O(\half_duty_new_reg[1]50_carry__0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry__0_i_4 
       (.I0(\half_duty_new_reg[1]6__53_carry_n_5 ),
        .O(\half_duty_new_reg[1]50_carry__0_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[1]50_carry__1 
       (.CI(\half_duty_new_reg[1]50_carry__0_n_0 ),
        .CO({\half_duty_new_reg[1]50_carry__1_n_0 ,\half_duty_new_reg[1]50_carry__1_n_1 ,\half_duty_new_reg[1]50_carry__1_n_2 ,\half_duty_new_reg[1]50_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[1]6 [14:11]),
        .S({\half_duty_new_reg[1]50_carry__1_i_1_n_0 ,\half_duty_new_reg[1]50_carry__1_i_2_n_0 ,\half_duty_new_reg[1]50_carry__1_i_3_n_0 ,\half_duty_new_reg[1]50_carry__1_i_4_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry__1_i_1 
       (.I0(\half_duty_new_reg[1]6__53_carry__1_n_6 ),
        .O(\half_duty_new_reg[1]50_carry__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry__1_i_2 
       (.I0(\half_duty_new_reg[1]6__53_carry__1_n_7 ),
        .O(\half_duty_new_reg[1]50_carry__1_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry__1_i_3 
       (.I0(\half_duty_new_reg[1]6__53_carry__0_n_4 ),
        .O(\half_duty_new_reg[1]50_carry__1_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry__1_i_4 
       (.I0(\half_duty_new_reg[1]6__53_carry__0_n_5 ),
        .O(\half_duty_new_reg[1]50_carry__1_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[1]50_carry__2 
       (.CI(\half_duty_new_reg[1]50_carry__1_n_0 ),
        .CO({\half_duty_new_reg[1]50_carry__2_n_0 ,\half_duty_new_reg[1]50_carry__2_n_1 ,\half_duty_new_reg[1]50_carry__2_n_2 ,\half_duty_new_reg[1]50_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[1]6 [18:15]),
        .S({\half_duty_new_reg[1]50_carry__2_i_1_n_0 ,\half_duty_new_reg[1]50_carry__2_i_2_n_0 ,\half_duty_new_reg[1]50_carry__2_i_3_n_0 ,\half_duty_new_reg[1]50_carry__2_i_4_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry__2_i_1 
       (.I0(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]50_carry__2_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry__2_i_2 
       (.I0(\half_duty_new_reg[1]6__53_carry__2_n_7 ),
        .O(\half_duty_new_reg[1]50_carry__2_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry__2_i_3 
       (.I0(\half_duty_new_reg[1]6__53_carry__1_n_4 ),
        .O(\half_duty_new_reg[1]50_carry__2_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry__2_i_4 
       (.I0(\half_duty_new_reg[1]6__53_carry__1_n_5 ),
        .O(\half_duty_new_reg[1]50_carry__2_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[1]50_carry__3 
       (.CI(\half_duty_new_reg[1]50_carry__2_n_0 ),
        .CO(\NLW_half_duty_new_reg[1]50_carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_half_duty_new_reg[1]50_carry__3_O_UNCONNECTED [3:1],\half_duty_new_reg[1]50_carry__3_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry_i_1 
       (.I0(slv_reg0[8]),
        .O(\half_duty_new_reg[1]50_carry_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry_i_2 
       (.I0(\half_duty_new_reg[1]6__53_carry_n_6 ),
        .O(\half_duty_new_reg[1]50_carry_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \half_duty_new_reg[1]50_carry_i_3 
       (.I0(\half_duty_new_reg[1]6_carry_n_6 ),
        .I1(slv_reg0[11]),
        .I2(slv_reg0[10]),
        .I3(slv_reg0[8]),
        .O(\half_duty_new_reg[1]50_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[1]50_carry_i_4 
       (.I0(slv_reg0[10]),
        .I1(slv_reg0[8]),
        .O(\half_duty_new_reg[1]50_carry_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]50_carry_i_5 
       (.I0(slv_reg0[9]),
        .O(\half_duty_new_reg[1]50_carry_i_5_n_0 ));
  CARRY4 \half_duty_new_reg[1]6__26_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[1]6__26_carry_n_0 ,\half_duty_new_reg[1]6__26_carry_n_1 ,\half_duty_new_reg[1]6__26_carry_n_2 ,\half_duty_new_reg[1]6__26_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({slv_reg0[8],1'b0,1'b0,1'b1}),
        .O({\half_duty_new_reg[1]6__26_carry_n_4 ,\half_duty_new_reg[1]6__26_carry_n_5 ,\half_duty_new_reg[1]6__26_carry_n_6 ,\NLW_half_duty_new_reg[1]6__26_carry_O_UNCONNECTED [0]}),
        .S({\half_duty_new_reg[1]6__26_carry_i_1_n_0 ,\half_duty_new_reg[1]6__26_carry_i_2_n_0 ,\half_duty_new_reg[1]6__26_carry_i_3_n_0 ,slv_reg0[8]}));
  CARRY4 \half_duty_new_reg[1]6__26_carry__0 
       (.CI(\half_duty_new_reg[1]6__26_carry_n_0 ),
        .CO({\half_duty_new_reg[1]6__26_carry__0_n_0 ,\half_duty_new_reg[1]6__26_carry__0_n_1 ,\half_duty_new_reg[1]6__26_carry__0_n_2 ,\half_duty_new_reg[1]6__26_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(slv_reg0[12:9]),
        .O({\half_duty_new_reg[1]6__26_carry__0_n_4 ,\half_duty_new_reg[1]6__26_carry__0_n_5 ,\half_duty_new_reg[1]6__26_carry__0_n_6 ,\half_duty_new_reg[1]6__26_carry__0_n_7 }),
        .S({\half_duty_new_reg[1]6__26_carry__0_i_1_n_0 ,\half_duty_new_reg[1]6__26_carry__0_i_2_n_0 ,\half_duty_new_reg[1]6__26_carry__0_i_3_n_0 ,\half_duty_new_reg[1]6__26_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[1]6__26_carry__0_i_1 
       (.I0(slv_reg0[12]),
        .I1(slv_reg0[15]),
        .O(\half_duty_new_reg[1]6__26_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[1]6__26_carry__0_i_2 
       (.I0(slv_reg0[11]),
        .I1(slv_reg0[14]),
        .O(\half_duty_new_reg[1]6__26_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[1]6__26_carry__0_i_3 
       (.I0(slv_reg0[10]),
        .I1(slv_reg0[13]),
        .O(\half_duty_new_reg[1]6__26_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[1]6__26_carry__0_i_4 
       (.I0(slv_reg0[9]),
        .I1(slv_reg0[12]),
        .O(\half_duty_new_reg[1]6__26_carry__0_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[1]6__26_carry__1 
       (.CI(\half_duty_new_reg[1]6__26_carry__0_n_0 ),
        .CO({\NLW_half_duty_new_reg[1]6__26_carry__1_CO_UNCONNECTED [3],\half_duty_new_reg[1]6__26_carry__1_n_1 ,\half_duty_new_reg[1]6__26_carry__1_n_2 ,\half_duty_new_reg[1]6__26_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,slv_reg0[15:14],1'b0}),
        .O({\half_duty_new_reg[1]6__26_carry__1_n_4 ,\half_duty_new_reg[1]6__26_carry__1_n_5 ,\half_duty_new_reg[1]6__26_carry__1_n_6 ,\half_duty_new_reg[1]6__26_carry__1_n_7 }),
        .S({1'b1,\half_duty_new_reg[1]6__26_carry__1_i_1_n_0 ,\half_duty_new_reg[1]6__26_carry__1_i_2_n_0 ,slv_reg0[13]}));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]6__26_carry__1_i_1 
       (.I0(slv_reg0[15]),
        .O(\half_duty_new_reg[1]6__26_carry__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]6__26_carry__1_i_2 
       (.I0(slv_reg0[14]),
        .O(\half_duty_new_reg[1]6__26_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[1]6__26_carry_i_1 
       (.I0(slv_reg0[8]),
        .I1(slv_reg0[11]),
        .O(\half_duty_new_reg[1]6__26_carry_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]6__26_carry_i_2 
       (.I0(slv_reg0[10]),
        .O(\half_duty_new_reg[1]6__26_carry_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]6__26_carry_i_3 
       (.I0(slv_reg0[9]),
        .O(\half_duty_new_reg[1]6__26_carry_i_3_n_0 ));
  CARRY4 \half_duty_new_reg[1]6__53_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[1]6__53_carry_n_0 ,\half_duty_new_reg[1]6__53_carry_n_1 ,\half_duty_new_reg[1]6__53_carry_n_2 ,\half_duty_new_reg[1]6__53_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[1]6__53_carry_i_1_n_0 ,\half_duty_new_reg[1]6__53_carry_i_2_n_0 ,\half_duty_new_reg[1]6__53_carry_i_3_n_0 ,\half_duty_new_reg[1]6__53_carry_i_4_n_0 }),
        .O({\half_duty_new_reg[1]6__53_carry_n_4 ,\half_duty_new_reg[1]6__53_carry_n_5 ,\half_duty_new_reg[1]6__53_carry_n_6 ,\NLW_half_duty_new_reg[1]6__53_carry_O_UNCONNECTED [0]}),
        .S({\half_duty_new_reg[1]6__53_carry_i_5_n_0 ,\half_duty_new_reg[1]6__53_carry_i_6_n_0 ,\half_duty_new_reg[1]6__53_carry_i_7_n_0 ,\half_duty_new_reg[1]6__53_carry_i_8_n_0 }));
  CARRY4 \half_duty_new_reg[1]6__53_carry__0 
       (.CI(\half_duty_new_reg[1]6__53_carry_n_0 ),
        .CO({\half_duty_new_reg[1]6__53_carry__0_n_0 ,\half_duty_new_reg[1]6__53_carry__0_n_1 ,\half_duty_new_reg[1]6__53_carry__0_n_2 ,\half_duty_new_reg[1]6__53_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[1]6__53_carry__0_i_1_n_0 ,\half_duty_new_reg[1]6__53_carry__0_i_2_n_0 ,\half_duty_new_reg[1]6__53_carry__0_i_3_n_0 ,\half_duty_new_reg[1]6__53_carry__0_i_4_n_0 }),
        .O({\half_duty_new_reg[1]6__53_carry__0_n_4 ,\half_duty_new_reg[1]6__53_carry__0_n_5 ,\half_duty_new_reg[1]6__53_carry__0_n_6 ,\half_duty_new_reg[1]6__53_carry__0_n_7 }),
        .S({\half_duty_new_reg[1]6__53_carry__0_i_5_n_0 ,\half_duty_new_reg[1]6__53_carry__0_i_6_n_0 ,\half_duty_new_reg[1]6__53_carry__0_i_7_n_0 ,\half_duty_new_reg[1]6__53_carry__0_i_8_n_0 }));
  (* HLUTNM = "lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[1]6__53_carry__0_i_1 
       (.I0(\half_duty_new_reg[1]6_carry__0_n_4 ),
        .I1(\half_duty_new_reg[1]6__26_carry__0_n_6 ),
        .O(\half_duty_new_reg[1]6__53_carry__0_i_1_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[1]6__53_carry__0_i_2 
       (.I0(\half_duty_new_reg[1]6_carry__0_n_5 ),
        .I1(\half_duty_new_reg[1]6__26_carry__0_n_7 ),
        .O(\half_duty_new_reg[1]6__53_carry__0_i_2_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \half_duty_new_reg[1]6__53_carry__0_i_3 
       (.I0(\half_duty_new_reg[1]6_carry__0_n_6 ),
        .I1(slv_reg0[15]),
        .I2(\half_duty_new_reg[1]6__26_carry_n_4 ),
        .O(\half_duty_new_reg[1]6__53_carry__0_i_3_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \half_duty_new_reg[1]6__53_carry__0_i_4 
       (.I0(\half_duty_new_reg[1]6_carry__0_n_7 ),
        .I1(slv_reg0[14]),
        .I2(\half_duty_new_reg[1]6__26_carry_n_5 ),
        .O(\half_duty_new_reg[1]6__53_carry__0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \half_duty_new_reg[1]6__53_carry__0_i_5 
       (.I0(\half_duty_new_reg[1]6__53_carry__0_i_1_n_0 ),
        .I1(\half_duty_new_reg[1]6__26_carry__0_n_5 ),
        .I2(\half_duty_new_reg[1]6_carry__1_n_7 ),
        .O(\half_duty_new_reg[1]6__53_carry__0_i_5_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \half_duty_new_reg[1]6__53_carry__0_i_6 
       (.I0(\half_duty_new_reg[1]6_carry__0_n_4 ),
        .I1(\half_duty_new_reg[1]6__26_carry__0_n_6 ),
        .I2(\half_duty_new_reg[1]6__53_carry__0_i_2_n_0 ),
        .O(\half_duty_new_reg[1]6__53_carry__0_i_6_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \half_duty_new_reg[1]6__53_carry__0_i_7 
       (.I0(\half_duty_new_reg[1]6_carry__0_n_5 ),
        .I1(\half_duty_new_reg[1]6__26_carry__0_n_7 ),
        .I2(\half_duty_new_reg[1]6__53_carry__0_i_3_n_0 ),
        .O(\half_duty_new_reg[1]6__53_carry__0_i_7_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \half_duty_new_reg[1]6__53_carry__0_i_8 
       (.I0(\half_duty_new_reg[1]6_carry__0_n_6 ),
        .I1(slv_reg0[15]),
        .I2(\half_duty_new_reg[1]6__26_carry_n_4 ),
        .I3(\half_duty_new_reg[1]6__53_carry__0_i_4_n_0 ),
        .O(\half_duty_new_reg[1]6__53_carry__0_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[1]6__53_carry__1 
       (.CI(\half_duty_new_reg[1]6__53_carry__0_n_0 ),
        .CO({\half_duty_new_reg[1]6__53_carry__1_n_0 ,\half_duty_new_reg[1]6__53_carry__1_n_1 ,\half_duty_new_reg[1]6__53_carry__1_n_2 ,\half_duty_new_reg[1]6__53_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\half_duty_new_reg[1]6__26_carry__1_n_6 ,\half_duty_new_reg[1]6__53_carry__1_i_1_n_0 ,\half_duty_new_reg[1]6__53_carry__1_i_2_n_0 }),
        .O({\half_duty_new_reg[1]6__53_carry__1_n_4 ,\half_duty_new_reg[1]6__53_carry__1_n_5 ,\half_duty_new_reg[1]6__53_carry__1_n_6 ,\half_duty_new_reg[1]6__53_carry__1_n_7 }),
        .S({\half_duty_new_reg[1]6__26_carry__1_n_5 ,\half_duty_new_reg[1]6__53_carry__1_i_3_n_0 ,\half_duty_new_reg[1]6__53_carry__1_i_4_n_0 ,\half_duty_new_reg[1]6__53_carry__1_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[1]6__53_carry__1_i_1 
       (.I0(\half_duty_new_reg[1]6__26_carry__0_n_4 ),
        .I1(\half_duty_new_reg[1]6_carry__1_n_6 ),
        .O(\half_duty_new_reg[1]6__53_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[1]6__53_carry__1_i_2 
       (.I0(\half_duty_new_reg[1]6_carry__1_n_7 ),
        .I1(\half_duty_new_reg[1]6__26_carry__0_n_5 ),
        .O(\half_duty_new_reg[1]6__53_carry__1_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \half_duty_new_reg[1]6__53_carry__1_i_3 
       (.I0(\half_duty_new_reg[1]6_carry__1_n_1 ),
        .I1(\half_duty_new_reg[1]6__26_carry__1_n_7 ),
        .I2(\half_duty_new_reg[1]6__26_carry__1_n_6 ),
        .O(\half_duty_new_reg[1]6__53_carry__1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \half_duty_new_reg[1]6__53_carry__1_i_4 
       (.I0(\half_duty_new_reg[1]6_carry__1_n_6 ),
        .I1(\half_duty_new_reg[1]6__26_carry__0_n_4 ),
        .I2(\half_duty_new_reg[1]6__26_carry__1_n_7 ),
        .I3(\half_duty_new_reg[1]6_carry__1_n_1 ),
        .O(\half_duty_new_reg[1]6__53_carry__1_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \half_duty_new_reg[1]6__53_carry__1_i_5 
       (.I0(\half_duty_new_reg[1]6__26_carry__0_n_5 ),
        .I1(\half_duty_new_reg[1]6_carry__1_n_7 ),
        .I2(\half_duty_new_reg[1]6__26_carry__0_n_4 ),
        .I3(\half_duty_new_reg[1]6_carry__1_n_6 ),
        .O(\half_duty_new_reg[1]6__53_carry__1_i_5_n_0 ));
  CARRY4 \half_duty_new_reg[1]6__53_carry__2 
       (.CI(\half_duty_new_reg[1]6__53_carry__1_n_0 ),
        .CO({\NLW_half_duty_new_reg[1]6__53_carry__2_CO_UNCONNECTED [3:1],\half_duty_new_reg[1]6__53_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\half_duty_new_reg[1]6__26_carry__1_n_4 }),
        .O({\NLW_half_duty_new_reg[1]6__53_carry__2_O_UNCONNECTED [3:2],\half_duty_new_reg[1]6__53_carry__2_n_6 ,\half_duty_new_reg[1]6__53_carry__2_n_7 }),
        .S({1'b0,1'b0,\half_duty_new_reg[1]6__26_carry__1_n_4 ,\half_duty_new_reg[1]6__26_carry__1_n_4 }));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \half_duty_new_reg[1]6__53_carry_i_1 
       (.I0(\half_duty_new_reg[1]6_carry_n_4 ),
        .I1(slv_reg0[13]),
        .I2(\half_duty_new_reg[1]6__26_carry_n_6 ),
        .O(\half_duty_new_reg[1]6__53_carry_i_1_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \half_duty_new_reg[1]6__53_carry_i_2 
       (.I0(\half_duty_new_reg[1]6_carry_n_5 ),
        .I1(slv_reg0[12]),
        .I2(\half_duty_new_reg[1]6_carry_n_7 ),
        .O(\half_duty_new_reg[1]6__53_carry_i_2_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[1]6__53_carry_i_3 
       (.I0(slv_reg0[11]),
        .I1(\half_duty_new_reg[1]6_carry_n_6 ),
        .O(\half_duty_new_reg[1]6__53_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[1]6__53_carry_i_4 
       (.I0(slv_reg0[10]),
        .I1(slv_reg0[8]),
        .O(\half_duty_new_reg[1]6__53_carry_i_4_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \half_duty_new_reg[1]6__53_carry_i_5 
       (.I0(\half_duty_new_reg[1]6_carry__0_n_7 ),
        .I1(slv_reg0[14]),
        .I2(\half_duty_new_reg[1]6__26_carry_n_5 ),
        .I3(\half_duty_new_reg[1]6__53_carry_i_1_n_0 ),
        .O(\half_duty_new_reg[1]6__53_carry_i_5_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \half_duty_new_reg[1]6__53_carry_i_6 
       (.I0(\half_duty_new_reg[1]6_carry_n_4 ),
        .I1(slv_reg0[13]),
        .I2(\half_duty_new_reg[1]6__26_carry_n_6 ),
        .I3(\half_duty_new_reg[1]6__53_carry_i_2_n_0 ),
        .O(\half_duty_new_reg[1]6__53_carry_i_6_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \half_duty_new_reg[1]6__53_carry_i_7 
       (.I0(\half_duty_new_reg[1]6_carry_n_5 ),
        .I1(slv_reg0[12]),
        .I2(\half_duty_new_reg[1]6_carry_n_7 ),
        .I3(\half_duty_new_reg[1]6__53_carry_i_3_n_0 ),
        .O(\half_duty_new_reg[1]6__53_carry_i_7_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \half_duty_new_reg[1]6__53_carry_i_8 
       (.I0(slv_reg0[11]),
        .I1(\half_duty_new_reg[1]6_carry_n_6 ),
        .I2(slv_reg0[8]),
        .I3(slv_reg0[10]),
        .O(\half_duty_new_reg[1]6__53_carry_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[1]6_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[1]6_carry_n_0 ,\half_duty_new_reg[1]6_carry_n_1 ,\half_duty_new_reg[1]6_carry_n_2 ,\half_duty_new_reg[1]6_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({slv_reg0[9:8],1'b0,1'b1}),
        .O({\half_duty_new_reg[1]6_carry_n_4 ,\half_duty_new_reg[1]6_carry_n_5 ,\half_duty_new_reg[1]6_carry_n_6 ,\half_duty_new_reg[1]6_carry_n_7 }),
        .S({\half_duty_new_reg[1]6_carry_i_1_n_0 ,\half_duty_new_reg[1]6_carry_i_2_n_0 ,\half_duty_new_reg[1]6_carry_i_3_n_0 ,slv_reg0[8]}));
  CARRY4 \half_duty_new_reg[1]6_carry__0 
       (.CI(\half_duty_new_reg[1]6_carry_n_0 ),
        .CO({\half_duty_new_reg[1]6_carry__0_n_0 ,\half_duty_new_reg[1]6_carry__0_n_1 ,\half_duty_new_reg[1]6_carry__0_n_2 ,\half_duty_new_reg[1]6_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({slv_reg0[15],slv_reg0[12:10]}),
        .O({\half_duty_new_reg[1]6_carry__0_n_4 ,\half_duty_new_reg[1]6_carry__0_n_5 ,\half_duty_new_reg[1]6_carry__0_n_6 ,\half_duty_new_reg[1]6_carry__0_n_7 }),
        .S({\half_duty_new_reg[1]6_carry__0_i_1_n_0 ,\half_duty_new_reg[1]6_carry__0_i_2_n_0 ,\half_duty_new_reg[1]6_carry__0_i_3_n_0 ,\half_duty_new_reg[1]6_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \half_duty_new_reg[1]6_carry__0_i_1 
       (.I0(slv_reg0[15]),
        .I1(slv_reg0[13]),
        .O(\half_duty_new_reg[1]6_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[1]6_carry__0_i_2 
       (.I0(slv_reg0[12]),
        .I1(slv_reg0[14]),
        .O(\half_duty_new_reg[1]6_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[1]6_carry__0_i_3 
       (.I0(slv_reg0[11]),
        .I1(slv_reg0[13]),
        .O(\half_duty_new_reg[1]6_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[1]6_carry__0_i_4 
       (.I0(slv_reg0[10]),
        .I1(slv_reg0[12]),
        .O(\half_duty_new_reg[1]6_carry__0_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[1]6_carry__1 
       (.CI(\half_duty_new_reg[1]6_carry__0_n_0 ),
        .CO({\NLW_half_duty_new_reg[1]6_carry__1_CO_UNCONNECTED [3],\half_duty_new_reg[1]6_carry__1_n_1 ,\NLW_half_duty_new_reg[1]6_carry__1_CO_UNCONNECTED [1],\half_duty_new_reg[1]6_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,slv_reg0[15:14]}),
        .O({\NLW_half_duty_new_reg[1]6_carry__1_O_UNCONNECTED [3:2],\half_duty_new_reg[1]6_carry__1_n_6 ,\half_duty_new_reg[1]6_carry__1_n_7 }),
        .S({1'b0,1'b1,\half_duty_new_reg[1]6_carry__1_i_1_n_0 ,\half_duty_new_reg[1]6_carry__1_i_2_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]6_carry__1_i_1 
       (.I0(slv_reg0[15]),
        .O(\half_duty_new_reg[1]6_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[1]6_carry__1_i_2 
       (.I0(slv_reg0[15]),
        .I1(slv_reg0[14]),
        .O(\half_duty_new_reg[1]6_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[1]6_carry_i_1 
       (.I0(slv_reg0[9]),
        .I1(slv_reg0[11]),
        .O(\half_duty_new_reg[1]6_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[1]6_carry_i_2 
       (.I0(slv_reg0[10]),
        .I1(slv_reg0[8]),
        .O(\half_duty_new_reg[1]6_carry_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]6_carry_i_3 
       (.I0(slv_reg0[9]),
        .O(\half_duty_new_reg[1]6_carry_i_3_n_0 ));
  CARRY4 \half_duty_new_reg[1]7_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[1]7_carry_n_0 ,\half_duty_new_reg[1]7_carry_n_1 ,\half_duty_new_reg[1]7_carry_n_2 ,\half_duty_new_reg[1]7_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\half_duty_new_reg[1]7_carry_i_1_n_0 ,\half_duty_new_reg[1]7_carry_i_2_n_0 ,\half_duty_new_reg[1]7_carry_i_3_n_0 ,\half_duty_new_reg[1]7_carry_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[1]7_carry_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[1]7_carry_i_5_n_0 ,\half_duty_new_reg[1]7_carry_i_6_n_0 ,\half_duty_new_reg[1]7_carry_i_7_n_0 ,\half_duty_new_reg[1]7_carry_i_8_n_0 }));
  CARRY4 \half_duty_new_reg[1]7_carry__0 
       (.CI(\half_duty_new_reg[1]7_carry_n_0 ),
        .CO({\half_duty_new_reg[1]7_carry__0_n_0 ,\half_duty_new_reg[1]7_carry__0_n_1 ,\half_duty_new_reg[1]7_carry__0_n_2 ,\half_duty_new_reg[1]7_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[1]7_carry__0_i_1_n_0 ,\half_duty_new_reg[1]7_carry__0_i_2_n_0 ,\half_duty_new_reg[1]7_carry__0_i_3_n_0 ,\half_duty_new_reg[1]7_carry__0_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[1]7_carry__0_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[1]7_carry__0_i_5_n_0 ,\half_duty_new_reg[1]7_carry__0_i_6_n_0 ,\half_duty_new_reg[1]7_carry__0_i_7_n_0 ,\half_duty_new_reg[1]7_carry__0_i_8_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[1]7_carry__0_i_1 
       (.I0(\half_duty_new_reg[1]6__53_carry__1_n_4 ),
        .I1(\half_duty_new_reg[1]6__53_carry__2_n_7 ),
        .O(\half_duty_new_reg[1]7_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[1]7_carry__0_i_2 
       (.I0(\half_duty_new_reg[1]6__53_carry__1_n_6 ),
        .I1(\half_duty_new_reg[1]6__53_carry__1_n_5 ),
        .O(\half_duty_new_reg[1]7_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[1]7_carry__0_i_3 
       (.I0(\half_duty_new_reg[1]6__53_carry__0_n_4 ),
        .I1(\half_duty_new_reg[1]6__53_carry__1_n_7 ),
        .O(\half_duty_new_reg[1]7_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[1]7_carry__0_i_4 
       (.I0(\half_duty_new_reg[1]6__53_carry__0_n_6 ),
        .I1(\half_duty_new_reg[1]6__53_carry__0_n_5 ),
        .O(\half_duty_new_reg[1]7_carry__0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[1]7_carry__0_i_5 
       (.I0(\half_duty_new_reg[1]6__53_carry__2_n_7 ),
        .I1(\half_duty_new_reg[1]6__53_carry__1_n_4 ),
        .O(\half_duty_new_reg[1]7_carry__0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[1]7_carry__0_i_6 
       (.I0(\half_duty_new_reg[1]6__53_carry__1_n_5 ),
        .I1(\half_duty_new_reg[1]6__53_carry__1_n_6 ),
        .O(\half_duty_new_reg[1]7_carry__0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[1]7_carry__0_i_7 
       (.I0(\half_duty_new_reg[1]6__53_carry__1_n_7 ),
        .I1(\half_duty_new_reg[1]6__53_carry__0_n_4 ),
        .O(\half_duty_new_reg[1]7_carry__0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[1]7_carry__0_i_8 
       (.I0(\half_duty_new_reg[1]6__53_carry__0_n_5 ),
        .I1(\half_duty_new_reg[1]6__53_carry__0_n_6 ),
        .O(\half_duty_new_reg[1]7_carry__0_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[1]7_carry__1 
       (.CI(\half_duty_new_reg[1]7_carry__0_n_0 ),
        .CO({\NLW_half_duty_new_reg[1]7_carry__1_CO_UNCONNECTED [3:1],\half_duty_new_reg[1]7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_half_duty_new_reg[1]7_carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\half_duty_new_reg[1]7_carry__1_i_1_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[1]7_carry__1_i_1 
       (.I0(\half_duty_new_reg[1]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[1]7_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[1]7_carry_i_1 
       (.I0(\half_duty_new_reg[1]6__53_carry_n_4 ),
        .I1(\half_duty_new_reg[1]6__53_carry__0_n_7 ),
        .O(\half_duty_new_reg[1]7_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[1]7_carry_i_2 
       (.I0(\half_duty_new_reg[1]6__53_carry_n_6 ),
        .I1(\half_duty_new_reg[1]6__53_carry_n_5 ),
        .O(\half_duty_new_reg[1]7_carry_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE77E)) 
    \half_duty_new_reg[1]7_carry_i_3 
       (.I0(slv_reg0[8]),
        .I1(slv_reg0[10]),
        .I2(slv_reg0[11]),
        .I3(\half_duty_new_reg[1]6_carry_n_6 ),
        .O(\half_duty_new_reg[1]7_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[1]7_carry_i_4 
       (.I0(slv_reg0[8]),
        .I1(slv_reg0[9]),
        .O(\half_duty_new_reg[1]7_carry_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[1]7_carry_i_5 
       (.I0(\half_duty_new_reg[1]6__53_carry__0_n_7 ),
        .I1(\half_duty_new_reg[1]6__53_carry_n_4 ),
        .O(\half_duty_new_reg[1]7_carry_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[1]7_carry_i_6 
       (.I0(\half_duty_new_reg[1]6__53_carry_n_5 ),
        .I1(\half_duty_new_reg[1]6__53_carry_n_6 ),
        .O(\half_duty_new_reg[1]7_carry_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6009)) 
    \half_duty_new_reg[1]7_carry_i_7 
       (.I0(\half_duty_new_reg[1]6_carry_n_6 ),
        .I1(slv_reg0[11]),
        .I2(slv_reg0[10]),
        .I3(slv_reg0[8]),
        .O(\half_duty_new_reg[1]7_carry_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[1]7_carry_i_8 
       (.I0(slv_reg0[9]),
        .I1(slv_reg0[8]),
        .O(\half_duty_new_reg[1]7_carry_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new_reg[1]10_in [0]),
        .Q(\half_duty_new_reg[1]_3 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[1][1]_i_1_n_0 ),
        .Q(\half_duty_new_reg[1]_3 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[1][2]_i_1_n_0 ),
        .Q(\half_duty_new_reg[1]_3 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[1][3]_i_1_n_0 ),
        .Q(\half_duty_new_reg[1]_3 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[1][4]_i_1_n_0 ),
        .Q(\half_duty_new_reg[1]_3 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[1][5]_i_1_n_0 ),
        .Q(\half_duty_new_reg[1]_3 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[1][6]_i_1_n_0 ),
        .Q(\half_duty_new_reg[1]_3 [6]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[1][6]_i_2 
       (.CI(\half_duty_new_reg[1]4_carry__1_i_9_n_0 ),
        .CO({\NLW_half_duty_new_reg[1][6]_i_2_CO_UNCONNECTED [3],\half_duty_new_reg[1][6]_i_2_n_1 ,\NLW_half_duty_new_reg[1][6]_i_2_CO_UNCONNECTED [1],\half_duty_new_reg[1][6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_half_duty_new_reg[1][6]_i_2_O_UNCONNECTED [3:2],\half_duty_new_reg[1]4 [22:21]}),
        .S({1'b0,1'b1,\half_duty_new[1][6]_i_4_n_0 ,\half_duty_new[1][6]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[1][7]_i_1_n_0 ),
        .Q(\half_duty_new_reg[1]_3 [7]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[2]4_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[2]4_carry_n_0 ,\half_duty_new_reg[2]4_carry_n_1 ,\half_duty_new_reg[2]4_carry_n_2 ,\half_duty_new_reg[2]4_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\half_duty_new_reg[2]4_carry_i_1_n_0 ,\half_duty_new_reg[2]4_carry_i_2_n_0 ,\half_duty_new_reg[2]4_carry_i_3_n_0 ,\half_duty_new_reg[2]4_carry_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[2]4_carry_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[2]4_carry_i_5_n_0 ,\half_duty_new_reg[2]4_carry_i_6_n_0 ,\half_duty_new_reg[2]4_carry_i_7_n_0 ,\half_duty_new_reg[2]4_carry_i_8_n_0 }));
  CARRY4 \half_duty_new_reg[2]4_carry__0 
       (.CI(\half_duty_new_reg[2]4_carry_n_0 ),
        .CO({\half_duty_new_reg[2]4_carry__0_n_0 ,\half_duty_new_reg[2]4_carry__0_n_1 ,\half_duty_new_reg[2]4_carry__0_n_2 ,\half_duty_new_reg[2]4_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[2]4_carry__0_i_1_n_0 ,\half_duty_new_reg[2]4_carry__0_i_2_n_0 ,\half_duty_new_reg[2]4_carry__0_i_3_n_0 ,\half_duty_new_reg[2]4_carry__0_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[2]4_carry__0_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[2]4_carry__0_i_5_n_0 ,\half_duty_new_reg[2]4_carry__0_i_6_n_0 ,\half_duty_new_reg[2]4_carry__0_i_7_n_0 ,\half_duty_new_reg[2]4_carry__0_i_8_n_0 }));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[2]4_carry__0_i_1 
       (.I0(\half_duty_new_reg[2]4 [14]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[2]4 [15]),
        .O(\half_duty_new_reg[2]4_carry__0_i_1_n_0 ));
  CARRY4 \half_duty_new_reg[2]4_carry__0_i_10 
       (.CI(\half_duty_new_reg[2]4_carry_i_9_n_0 ),
        .CO({\half_duty_new_reg[2]4_carry__0_i_10_n_0 ,\half_duty_new_reg[2]4_carry__0_i_10_n_1 ,\half_duty_new_reg[2]4_carry__0_i_10_n_2 ,\half_duty_new_reg[2]4_carry__0_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[2]4 [12:9]),
        .S({\half_duty_new_reg[2]4_carry__0_i_15_n_0 ,\half_duty_new_reg[2]4_carry__0_i_16_n_0 ,\half_duty_new_reg[2]4_carry__0_i_17_n_0 ,\half_duty_new_reg[2]4_carry__0_i_18_n_0 }));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry__0_i_11 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__0_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry__0_i_12 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry__0_i_13 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry__0_i_14 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry__0_i_15 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry__0_i_16 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry__0_i_17 
       (.I0(\half_duty_new_reg[2]6 [18]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__0_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry__0_i_18 
       (.I0(\half_duty_new_reg[2]6 [17]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_7 ),
        .O(\half_duty_new_reg[2]4_carry__0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[2]4_carry__0_i_2 
       (.I0(\half_duty_new_reg[2]4 [12]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[2]4 [13]),
        .O(\half_duty_new_reg[2]4_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCF8B8BCFCC8B88)) 
    \half_duty_new_reg[2]4_carry__0_i_3 
       (.I0(\half_duty_new_reg[2]4 [10]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]6 [18]),
        .I4(\half_duty_new_reg[2]4 [11]),
        .I5(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .O(\half_duty_new_reg[2]4_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEFEFEAEAEA)) 
    \half_duty_new_reg[2]4_carry__0_i_4 
       (.I0(\half_duty_new[2][7]_i_4_n_0 ),
        .I1(\half_duty_new_reg[2]4 [9]),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_7 ),
        .I4(\half_duty_new_reg[2]7 ),
        .I5(\half_duty_new_reg[2]6 [17]),
        .O(\half_duty_new_reg[2]4_carry__0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[2]4_carry__0_i_5 
       (.I0(\half_duty_new_reg[2]4 [15]),
        .I1(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[2]4 [14]),
        .O(\half_duty_new_reg[2]4_carry__0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[2]4_carry__0_i_6 
       (.I0(\half_duty_new_reg[2]4 [13]),
        .I1(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[2]4 [12]),
        .O(\half_duty_new_reg[2]4_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF053333FF05)) 
    \half_duty_new_reg[2]4_carry__0_i_7 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]4 [11]),
        .I2(\half_duty_new_reg[2]6 [18]),
        .I3(\half_duty_new_reg[2]7 ),
        .I4(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I5(\half_duty_new_reg[2]4 [10]),
        .O(\half_duty_new_reg[2]4_carry__0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \half_duty_new_reg[2]4_carry__0_i_8 
       (.I0(\half_duty_new_reg[2]6 [17]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_7 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[2]4 [9]),
        .I5(\half_duty_new[2][7]_i_4_n_0 ),
        .O(\half_duty_new_reg[2]4_carry__0_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[2]4_carry__0_i_9 
       (.CI(\half_duty_new_reg[2]4_carry__0_i_10_n_0 ),
        .CO({\half_duty_new_reg[2]4_carry__0_i_9_n_0 ,\half_duty_new_reg[2]4_carry__0_i_9_n_1 ,\half_duty_new_reg[2]4_carry__0_i_9_n_2 ,\half_duty_new_reg[2]4_carry__0_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[2]4 [16:13]),
        .S({\half_duty_new_reg[2]4_carry__0_i_11_n_0 ,\half_duty_new_reg[2]4_carry__0_i_12_n_0 ,\half_duty_new_reg[2]4_carry__0_i_13_n_0 ,\half_duty_new_reg[2]4_carry__0_i_14_n_0 }));
  CARRY4 \half_duty_new_reg[2]4_carry__1 
       (.CI(\half_duty_new_reg[2]4_carry__0_n_0 ),
        .CO({\half_duty_new_reg[2]4_carry__1_n_0 ,\half_duty_new_reg[2]4_carry__1_n_1 ,\half_duty_new_reg[2]4_carry__1_n_2 ,\half_duty_new_reg[2]4_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[2]4_carry__1_i_1_n_0 ,\half_duty_new_reg[2]4_carry__1_i_2_n_0 ,\half_duty_new_reg[2]4_carry__1_i_3_n_0 ,\half_duty_new_reg[2]4_carry__1_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[2]4_carry__1_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[2]4_carry__1_i_5_n_0 ,\half_duty_new_reg[2]4_carry__1_i_6_n_0 ,\half_duty_new_reg[2]4_carry__1_i_7_n_0 ,\half_duty_new_reg[2]4_carry__1_i_8_n_0 }));
  LUT5 #(
    .INIT(32'h8B88CFCC)) 
    \half_duty_new_reg[2]4_carry__1_i_1 
       (.I0(\half_duty_new_reg[2]4 [22]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .O(\half_duty_new_reg[2]4_carry__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry__1_i_10 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__1_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry__1_i_11 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__1_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry__1_i_12 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__1_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry__1_i_13 
       (.I0(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__1_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[2]4_carry__1_i_2 
       (.I0(\half_duty_new_reg[2]4 [20]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[2]4 [21]),
        .O(\half_duty_new_reg[2]4_carry__1_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[2]4_carry__1_i_3 
       (.I0(\half_duty_new_reg[2]4 [18]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[2]4 [19]),
        .O(\half_duty_new_reg[2]4_carry__1_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCFCC8B88)) 
    \half_duty_new_reg[2]4_carry__1_i_4 
       (.I0(\half_duty_new_reg[2]4 [16]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I4(\half_duty_new_reg[2]4 [17]),
        .O(\half_duty_new_reg[2]4_carry__1_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00F3AAF3)) 
    \half_duty_new_reg[2]4_carry__1_i_5 
       (.I0(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[2]4 [22]),
        .O(\half_duty_new_reg[2]4_carry__1_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[2]4_carry__1_i_6 
       (.I0(\half_duty_new_reg[2]4 [21]),
        .I1(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[2]4 [20]),
        .O(\half_duty_new_reg[2]4_carry__1_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[2]4_carry__1_i_7 
       (.I0(\half_duty_new_reg[2]4 [19]),
        .I1(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[2]4 [18]),
        .O(\half_duty_new_reg[2]4_carry__1_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00F355F3)) 
    \half_duty_new_reg[2]4_carry__1_i_8 
       (.I0(\half_duty_new_reg[2]4 [17]),
        .I1(\half_duty_new_reg[2]50_carry__3_n_7 ),
        .I2(\half_duty_new_reg[2]7 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[2]4 [16]),
        .O(\half_duty_new_reg[2]4_carry__1_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[2]4_carry__1_i_9 
       (.CI(\half_duty_new_reg[2]4_carry__0_i_9_n_0 ),
        .CO({\half_duty_new_reg[2]4_carry__1_i_9_n_0 ,\half_duty_new_reg[2]4_carry__1_i_9_n_1 ,\half_duty_new_reg[2]4_carry__1_i_9_n_2 ,\half_duty_new_reg[2]4_carry__1_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[2]4 [20:17]),
        .S({\half_duty_new_reg[2]4_carry__1_i_10_n_0 ,\half_duty_new_reg[2]4_carry__1_i_11_n_0 ,\half_duty_new_reg[2]4_carry__1_i_12_n_0 ,\half_duty_new_reg[2]4_carry__1_i_13_n_0 }));
  CARRY4 \half_duty_new_reg[2]4_carry__2 
       (.CI(\half_duty_new_reg[2]4_carry__1_n_0 ),
        .CO({\half_duty_new_reg[2]4_carry__2_n_0 ,\half_duty_new_reg[2]4_carry__2_n_1 ,\half_duty_new_reg[2]4_carry__2_n_2 ,\half_duty_new_reg[2]4_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\half_duty_new_reg[2]4_carry__2_i_1_n_0 ,\half_duty_new_reg[2]4_carry__2_i_2_n_0 ,\half_duty_new_reg[2]4_carry__2_i_3_n_0 }),
        .O(\NLW_half_duty_new_reg[2]4_carry__2_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[2]4_carry__2_i_4_n_0 ,\half_duty_new_reg[2]4_carry__2_i_5_n_0 ,\half_duty_new_reg[2]4_carry__2_i_6_n_0 ,\half_duty_new_reg[2]4_carry__2_i_7_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new_reg[2]4_carry__2_i_1 
       (.I0(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .O(\half_duty_new_reg[2]4_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new_reg[2]4_carry__2_i_2 
       (.I0(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .O(\half_duty_new_reg[2]4_carry__2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new_reg[2]4_carry__2_i_3 
       (.I0(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I1(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .O(\half_duty_new_reg[2]4_carry__2_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new_reg[2]4_carry__2_i_4 
       (.I0(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__2_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new_reg[2]4_carry__2_i_5 
       (.I0(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__2_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new_reg[2]4_carry__2_i_6 
       (.I0(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__2_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new_reg[2]4_carry__2_i_7 
       (.I0(\half_duty_new_reg[2][6]_i_2_n_1 ),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]4_carry__2_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEFEFEAEAEA)) 
    \half_duty_new_reg[2]4_carry_i_1 
       (.I0(\half_duty_new[2][5]_i_3_n_0 ),
        .I1(\half_duty_new_reg[2]4 [7]),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[2]6__53_carry__1_n_5 ),
        .I4(\half_duty_new_reg[2]7 ),
        .I5(\half_duty_new_reg[2]6 [15]),
        .O(\half_duty_new_reg[2]4_carry_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \half_duty_new_reg[2]4_carry_i_10 
       (.I0(\half_duty_new_reg[2]4 [4]),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I2(\half_duty_new_reg[2]6__53_carry__0_n_4 ),
        .I3(\half_duty_new_reg[2]7 ),
        .I4(\half_duty_new_reg[2]6 [12]),
        .O(\half_duty_new_reg[2]4_carry_i_10_n_0 ));
  CARRY4 \half_duty_new_reg[2]4_carry_i_11 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[2]4_carry_i_11_n_0 ,\half_duty_new_reg[2]4_carry_i_11_n_1 ,\half_duty_new_reg[2]4_carry_i_11_n_2 ,\half_duty_new_reg[2]4_carry_i_11_n_3 }),
        .CYINIT(\half_duty_new_reg[2]4_carry_i_16_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[2]4 [4:1]),
        .S({\half_duty_new_reg[2]4_carry_i_17_n_0 ,\half_duty_new_reg[2]4_carry_i_18_n_0 ,\half_duty_new_reg[2]4_carry_i_19_n_0 ,\half_duty_new_reg[2]4_carry_i_20_n_0 }));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry_i_12 
       (.I0(\half_duty_new_reg[2]6 [16]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__1_n_4 ),
        .O(\half_duty_new_reg[2]4_carry_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry_i_13 
       (.I0(\half_duty_new_reg[2]6 [15]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__1_n_5 ),
        .O(\half_duty_new_reg[2]4_carry_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry_i_14 
       (.I0(\half_duty_new_reg[2]6 [14]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__1_n_6 ),
        .O(\half_duty_new_reg[2]4_carry_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry_i_15 
       (.I0(\half_duty_new_reg[2]6 [13]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__1_n_7 ),
        .O(\half_duty_new_reg[2]4_carry_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry_i_16 
       (.I0(\half_duty_new_reg[2]6 [8]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry_n_4 ),
        .O(\half_duty_new_reg[2]4_carry_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry_i_17 
       (.I0(\half_duty_new_reg[2]6 [12]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__0_n_4 ),
        .O(\half_duty_new_reg[2]4_carry_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry_i_18 
       (.I0(\half_duty_new_reg[2]6 [11]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__0_n_5 ),
        .O(\half_duty_new_reg[2]4_carry_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry_i_19 
       (.I0(\half_duty_new_reg[2]6 [10]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__0_n_6 ),
        .O(\half_duty_new_reg[2]4_carry_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEFEFEAEAEA)) 
    \half_duty_new_reg[2]4_carry_i_2 
       (.I0(\half_duty_new_reg[2]4_carry_i_10_n_0 ),
        .I1(\half_duty_new_reg[2]4 [5]),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[2]6__53_carry__1_n_7 ),
        .I4(\half_duty_new_reg[2]7 ),
        .I5(\half_duty_new_reg[2]6 [13]),
        .O(\half_duty_new_reg[2]4_carry_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \half_duty_new_reg[2]4_carry_i_20 
       (.I0(\half_duty_new_reg[2]6 [9]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__0_n_7 ),
        .O(\half_duty_new_reg[2]4_carry_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEFEFEFEAEAEA)) 
    \half_duty_new_reg[2]4_carry_i_3 
       (.I0(\half_duty_new[2][2]_i_3_n_0 ),
        .I1(\half_duty_new_reg[2]4 [3]),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[2]6__53_carry__0_n_5 ),
        .I4(\half_duty_new_reg[2]7 ),
        .I5(\half_duty_new_reg[2]6 [11]),
        .O(\half_duty_new_reg[2]4_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \half_duty_new_reg[2]4_carry_i_4 
       (.I0(\half_duty_new_reg[2]6 [9]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__0_n_7 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[2]4 [1]),
        .I5(\half_duty_new[2][2]_i_5_n_0 ),
        .O(\half_duty_new_reg[2]4_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \half_duty_new_reg[2]4_carry_i_5 
       (.I0(\half_duty_new_reg[2]6 [15]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__1_n_5 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[2]4 [7]),
        .I5(\half_duty_new[2][5]_i_3_n_0 ),
        .O(\half_duty_new_reg[2]4_carry_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \half_duty_new_reg[2]4_carry_i_6 
       (.I0(\half_duty_new_reg[2]6 [13]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__1_n_7 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[2]4 [5]),
        .I5(\half_duty_new_reg[2]4_carry_i_10_n_0 ),
        .O(\half_duty_new_reg[2]4_carry_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \half_duty_new_reg[2]4_carry_i_7 
       (.I0(\half_duty_new_reg[2]6 [11]),
        .I1(\half_duty_new_reg[2]7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__0_n_5 ),
        .I3(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I4(\half_duty_new_reg[2]4 [3]),
        .I5(\half_duty_new[2][2]_i_3_n_0 ),
        .O(\half_duty_new_reg[2]4_carry_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1015101010151515)) 
    \half_duty_new_reg[2]4_carry_i_8 
       (.I0(\half_duty_new[2][2]_i_5_n_0 ),
        .I1(\half_duty_new_reg[2]4 [1]),
        .I2(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .I3(\half_duty_new_reg[2]6__53_carry__0_n_7 ),
        .I4(\half_duty_new_reg[2]7 ),
        .I5(\half_duty_new_reg[2]6 [9]),
        .O(\half_duty_new_reg[2]4_carry_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[2]4_carry_i_9 
       (.CI(\half_duty_new_reg[2]4_carry_i_11_n_0 ),
        .CO({\half_duty_new_reg[2]4_carry_i_9_n_0 ,\half_duty_new_reg[2]4_carry_i_9_n_1 ,\half_duty_new_reg[2]4_carry_i_9_n_2 ,\half_duty_new_reg[2]4_carry_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[2]4 [8:5]),
        .S({\half_duty_new_reg[2]4_carry_i_12_n_0 ,\half_duty_new_reg[2]4_carry_i_13_n_0 ,\half_duty_new_reg[2]4_carry_i_14_n_0 ,\half_duty_new_reg[2]4_carry_i_15_n_0 }));
  CARRY4 \half_duty_new_reg[2]50_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[2]50_carry_n_0 ,\half_duty_new_reg[2]50_carry_n_1 ,\half_duty_new_reg[2]50_carry_n_2 ,\half_duty_new_reg[2]50_carry_n_3 }),
        .CYINIT(\half_duty_new_reg[2]50_carry_i_1_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_half_duty_new_reg[2]50_carry_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[2]50_carry_i_2_n_0 ,\half_duty_new_reg[2]50_carry_i_3_n_0 ,\half_duty_new_reg[2]50_carry_i_4_n_0 ,\half_duty_new_reg[2]50_carry_i_5_n_0 }));
  CARRY4 \half_duty_new_reg[2]50_carry__0 
       (.CI(\half_duty_new_reg[2]50_carry_n_0 ),
        .CO({\half_duty_new_reg[2]50_carry__0_n_0 ,\half_duty_new_reg[2]50_carry__0_n_1 ,\half_duty_new_reg[2]50_carry__0_n_2 ,\half_duty_new_reg[2]50_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\half_duty_new_reg[2]6 [10:8],\NLW_half_duty_new_reg[2]50_carry__0_O_UNCONNECTED [0]}),
        .S({\half_duty_new_reg[2]50_carry__0_i_1_n_0 ,\half_duty_new_reg[2]50_carry__0_i_2_n_0 ,\half_duty_new_reg[2]50_carry__0_i_3_n_0 ,\half_duty_new_reg[2]50_carry__0_i_4_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry__0_i_1 
       (.I0(\half_duty_new_reg[2]6__53_carry__0_n_6 ),
        .O(\half_duty_new_reg[2]50_carry__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry__0_i_2 
       (.I0(\half_duty_new_reg[2]6__53_carry__0_n_7 ),
        .O(\half_duty_new_reg[2]50_carry__0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry__0_i_3 
       (.I0(\half_duty_new_reg[2]6__53_carry_n_4 ),
        .O(\half_duty_new_reg[2]50_carry__0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry__0_i_4 
       (.I0(\half_duty_new_reg[2]6__53_carry_n_5 ),
        .O(\half_duty_new_reg[2]50_carry__0_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[2]50_carry__1 
       (.CI(\half_duty_new_reg[2]50_carry__0_n_0 ),
        .CO({\half_duty_new_reg[2]50_carry__1_n_0 ,\half_duty_new_reg[2]50_carry__1_n_1 ,\half_duty_new_reg[2]50_carry__1_n_2 ,\half_duty_new_reg[2]50_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[2]6 [14:11]),
        .S({\half_duty_new_reg[2]50_carry__1_i_1_n_0 ,\half_duty_new_reg[2]50_carry__1_i_2_n_0 ,\half_duty_new_reg[2]50_carry__1_i_3_n_0 ,\half_duty_new_reg[2]50_carry__1_i_4_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry__1_i_1 
       (.I0(\half_duty_new_reg[2]6__53_carry__1_n_6 ),
        .O(\half_duty_new_reg[2]50_carry__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry__1_i_2 
       (.I0(\half_duty_new_reg[2]6__53_carry__1_n_7 ),
        .O(\half_duty_new_reg[2]50_carry__1_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry__1_i_3 
       (.I0(\half_duty_new_reg[2]6__53_carry__0_n_4 ),
        .O(\half_duty_new_reg[2]50_carry__1_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry__1_i_4 
       (.I0(\half_duty_new_reg[2]6__53_carry__0_n_5 ),
        .O(\half_duty_new_reg[2]50_carry__1_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[2]50_carry__2 
       (.CI(\half_duty_new_reg[2]50_carry__1_n_0 ),
        .CO({\half_duty_new_reg[2]50_carry__2_n_0 ,\half_duty_new_reg[2]50_carry__2_n_1 ,\half_duty_new_reg[2]50_carry__2_n_2 ,\half_duty_new_reg[2]50_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O(\half_duty_new_reg[2]6 [18:15]),
        .S({\half_duty_new_reg[2]50_carry__2_i_1_n_0 ,\half_duty_new_reg[2]50_carry__2_i_2_n_0 ,\half_duty_new_reg[2]50_carry__2_i_3_n_0 ,\half_duty_new_reg[2]50_carry__2_i_4_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry__2_i_1 
       (.I0(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]50_carry__2_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry__2_i_2 
       (.I0(\half_duty_new_reg[2]6__53_carry__2_n_7 ),
        .O(\half_duty_new_reg[2]50_carry__2_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry__2_i_3 
       (.I0(\half_duty_new_reg[2]6__53_carry__1_n_4 ),
        .O(\half_duty_new_reg[2]50_carry__2_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry__2_i_4 
       (.I0(\half_duty_new_reg[2]6__53_carry__1_n_5 ),
        .O(\half_duty_new_reg[2]50_carry__2_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[2]50_carry__3 
       (.CI(\half_duty_new_reg[2]50_carry__2_n_0 ),
        .CO(\NLW_half_duty_new_reg[2]50_carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_half_duty_new_reg[2]50_carry__3_O_UNCONNECTED [3:1],\half_duty_new_reg[2]50_carry__3_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry_i_1 
       (.I0(slv_reg0[16]),
        .O(\half_duty_new_reg[2]50_carry_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry_i_2 
       (.I0(\half_duty_new_reg[2]6__53_carry_n_6 ),
        .O(\half_duty_new_reg[2]50_carry_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \half_duty_new_reg[2]50_carry_i_3 
       (.I0(\half_duty_new_reg[2]6_carry_n_6 ),
        .I1(slv_reg0[19]),
        .I2(slv_reg0[18]),
        .I3(slv_reg0[16]),
        .O(\half_duty_new_reg[2]50_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[2]50_carry_i_4 
       (.I0(slv_reg0[18]),
        .I1(slv_reg0[16]),
        .O(\half_duty_new_reg[2]50_carry_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]50_carry_i_5 
       (.I0(slv_reg0[17]),
        .O(\half_duty_new_reg[2]50_carry_i_5_n_0 ));
  CARRY4 \half_duty_new_reg[2]6__26_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[2]6__26_carry_n_0 ,\half_duty_new_reg[2]6__26_carry_n_1 ,\half_duty_new_reg[2]6__26_carry_n_2 ,\half_duty_new_reg[2]6__26_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({slv_reg0[16],1'b0,1'b0,1'b1}),
        .O({\half_duty_new_reg[2]6__26_carry_n_4 ,\half_duty_new_reg[2]6__26_carry_n_5 ,\half_duty_new_reg[2]6__26_carry_n_6 ,\NLW_half_duty_new_reg[2]6__26_carry_O_UNCONNECTED [0]}),
        .S({\half_duty_new_reg[2]6__26_carry_i_1_n_0 ,\half_duty_new_reg[2]6__26_carry_i_2_n_0 ,\half_duty_new_reg[2]6__26_carry_i_3_n_0 ,slv_reg0[16]}));
  CARRY4 \half_duty_new_reg[2]6__26_carry__0 
       (.CI(\half_duty_new_reg[2]6__26_carry_n_0 ),
        .CO({\half_duty_new_reg[2]6__26_carry__0_n_0 ,\half_duty_new_reg[2]6__26_carry__0_n_1 ,\half_duty_new_reg[2]6__26_carry__0_n_2 ,\half_duty_new_reg[2]6__26_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(slv_reg0[20:17]),
        .O({\half_duty_new_reg[2]6__26_carry__0_n_4 ,\half_duty_new_reg[2]6__26_carry__0_n_5 ,\half_duty_new_reg[2]6__26_carry__0_n_6 ,\half_duty_new_reg[2]6__26_carry__0_n_7 }),
        .S({\half_duty_new_reg[2]6__26_carry__0_i_1_n_0 ,\half_duty_new_reg[2]6__26_carry__0_i_2_n_0 ,\half_duty_new_reg[2]6__26_carry__0_i_3_n_0 ,\half_duty_new_reg[2]6__26_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[2]6__26_carry__0_i_1 
       (.I0(slv_reg0[20]),
        .I1(slv_reg0[23]),
        .O(\half_duty_new_reg[2]6__26_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[2]6__26_carry__0_i_2 
       (.I0(slv_reg0[19]),
        .I1(slv_reg0[22]),
        .O(\half_duty_new_reg[2]6__26_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[2]6__26_carry__0_i_3 
       (.I0(slv_reg0[18]),
        .I1(slv_reg0[21]),
        .O(\half_duty_new_reg[2]6__26_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[2]6__26_carry__0_i_4 
       (.I0(slv_reg0[17]),
        .I1(slv_reg0[20]),
        .O(\half_duty_new_reg[2]6__26_carry__0_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[2]6__26_carry__1 
       (.CI(\half_duty_new_reg[2]6__26_carry__0_n_0 ),
        .CO({\NLW_half_duty_new_reg[2]6__26_carry__1_CO_UNCONNECTED [3],\half_duty_new_reg[2]6__26_carry__1_n_1 ,\half_duty_new_reg[2]6__26_carry__1_n_2 ,\half_duty_new_reg[2]6__26_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,slv_reg0[23:22],1'b0}),
        .O({\half_duty_new_reg[2]6__26_carry__1_n_4 ,\half_duty_new_reg[2]6__26_carry__1_n_5 ,\half_duty_new_reg[2]6__26_carry__1_n_6 ,\half_duty_new_reg[2]6__26_carry__1_n_7 }),
        .S({1'b1,\half_duty_new_reg[2]6__26_carry__1_i_1_n_0 ,\half_duty_new_reg[2]6__26_carry__1_i_2_n_0 ,slv_reg0[21]}));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]6__26_carry__1_i_1 
       (.I0(slv_reg0[23]),
        .O(\half_duty_new_reg[2]6__26_carry__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]6__26_carry__1_i_2 
       (.I0(slv_reg0[22]),
        .O(\half_duty_new_reg[2]6__26_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[2]6__26_carry_i_1 
       (.I0(slv_reg0[16]),
        .I1(slv_reg0[19]),
        .O(\half_duty_new_reg[2]6__26_carry_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]6__26_carry_i_2 
       (.I0(slv_reg0[18]),
        .O(\half_duty_new_reg[2]6__26_carry_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]6__26_carry_i_3 
       (.I0(slv_reg0[17]),
        .O(\half_duty_new_reg[2]6__26_carry_i_3_n_0 ));
  CARRY4 \half_duty_new_reg[2]6__53_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[2]6__53_carry_n_0 ,\half_duty_new_reg[2]6__53_carry_n_1 ,\half_duty_new_reg[2]6__53_carry_n_2 ,\half_duty_new_reg[2]6__53_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[2]6__53_carry_i_1_n_0 ,\half_duty_new_reg[2]6__53_carry_i_2_n_0 ,\half_duty_new_reg[2]6__53_carry_i_3_n_0 ,\half_duty_new_reg[2]6__53_carry_i_4_n_0 }),
        .O({\half_duty_new_reg[2]6__53_carry_n_4 ,\half_duty_new_reg[2]6__53_carry_n_5 ,\half_duty_new_reg[2]6__53_carry_n_6 ,\NLW_half_duty_new_reg[2]6__53_carry_O_UNCONNECTED [0]}),
        .S({\half_duty_new_reg[2]6__53_carry_i_5_n_0 ,\half_duty_new_reg[2]6__53_carry_i_6_n_0 ,\half_duty_new_reg[2]6__53_carry_i_7_n_0 ,\half_duty_new_reg[2]6__53_carry_i_8_n_0 }));
  CARRY4 \half_duty_new_reg[2]6__53_carry__0 
       (.CI(\half_duty_new_reg[2]6__53_carry_n_0 ),
        .CO({\half_duty_new_reg[2]6__53_carry__0_n_0 ,\half_duty_new_reg[2]6__53_carry__0_n_1 ,\half_duty_new_reg[2]6__53_carry__0_n_2 ,\half_duty_new_reg[2]6__53_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[2]6__53_carry__0_i_1_n_0 ,\half_duty_new_reg[2]6__53_carry__0_i_2_n_0 ,\half_duty_new_reg[2]6__53_carry__0_i_3_n_0 ,\half_duty_new_reg[2]6__53_carry__0_i_4_n_0 }),
        .O({\half_duty_new_reg[2]6__53_carry__0_n_4 ,\half_duty_new_reg[2]6__53_carry__0_n_5 ,\half_duty_new_reg[2]6__53_carry__0_n_6 ,\half_duty_new_reg[2]6__53_carry__0_n_7 }),
        .S({\half_duty_new_reg[2]6__53_carry__0_i_5_n_0 ,\half_duty_new_reg[2]6__53_carry__0_i_6_n_0 ,\half_duty_new_reg[2]6__53_carry__0_i_7_n_0 ,\half_duty_new_reg[2]6__53_carry__0_i_8_n_0 }));
  (* HLUTNM = "lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[2]6__53_carry__0_i_1 
       (.I0(\half_duty_new_reg[2]6_carry__0_n_4 ),
        .I1(\half_duty_new_reg[2]6__26_carry__0_n_6 ),
        .O(\half_duty_new_reg[2]6__53_carry__0_i_1_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[2]6__53_carry__0_i_2 
       (.I0(\half_duty_new_reg[2]6_carry__0_n_5 ),
        .I1(\half_duty_new_reg[2]6__26_carry__0_n_7 ),
        .O(\half_duty_new_reg[2]6__53_carry__0_i_2_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \half_duty_new_reg[2]6__53_carry__0_i_3 
       (.I0(\half_duty_new_reg[2]6_carry__0_n_6 ),
        .I1(slv_reg0[23]),
        .I2(\half_duty_new_reg[2]6__26_carry_n_4 ),
        .O(\half_duty_new_reg[2]6__53_carry__0_i_3_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \half_duty_new_reg[2]6__53_carry__0_i_4 
       (.I0(\half_duty_new_reg[2]6_carry__0_n_7 ),
        .I1(slv_reg0[22]),
        .I2(\half_duty_new_reg[2]6__26_carry_n_5 ),
        .O(\half_duty_new_reg[2]6__53_carry__0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \half_duty_new_reg[2]6__53_carry__0_i_5 
       (.I0(\half_duty_new_reg[2]6__53_carry__0_i_1_n_0 ),
        .I1(\half_duty_new_reg[2]6__26_carry__0_n_5 ),
        .I2(\half_duty_new_reg[2]6_carry__1_n_7 ),
        .O(\half_duty_new_reg[2]6__53_carry__0_i_5_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \half_duty_new_reg[2]6__53_carry__0_i_6 
       (.I0(\half_duty_new_reg[2]6_carry__0_n_4 ),
        .I1(\half_duty_new_reg[2]6__26_carry__0_n_6 ),
        .I2(\half_duty_new_reg[2]6__53_carry__0_i_2_n_0 ),
        .O(\half_duty_new_reg[2]6__53_carry__0_i_6_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \half_duty_new_reg[2]6__53_carry__0_i_7 
       (.I0(\half_duty_new_reg[2]6_carry__0_n_5 ),
        .I1(\half_duty_new_reg[2]6__26_carry__0_n_7 ),
        .I2(\half_duty_new_reg[2]6__53_carry__0_i_3_n_0 ),
        .O(\half_duty_new_reg[2]6__53_carry__0_i_7_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \half_duty_new_reg[2]6__53_carry__0_i_8 
       (.I0(\half_duty_new_reg[2]6_carry__0_n_6 ),
        .I1(slv_reg0[23]),
        .I2(\half_duty_new_reg[2]6__26_carry_n_4 ),
        .I3(\half_duty_new_reg[2]6__53_carry__0_i_4_n_0 ),
        .O(\half_duty_new_reg[2]6__53_carry__0_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[2]6__53_carry__1 
       (.CI(\half_duty_new_reg[2]6__53_carry__0_n_0 ),
        .CO({\half_duty_new_reg[2]6__53_carry__1_n_0 ,\half_duty_new_reg[2]6__53_carry__1_n_1 ,\half_duty_new_reg[2]6__53_carry__1_n_2 ,\half_duty_new_reg[2]6__53_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\half_duty_new_reg[2]6__26_carry__1_n_6 ,\half_duty_new_reg[2]6__53_carry__1_i_1_n_0 ,\half_duty_new_reg[2]6__53_carry__1_i_2_n_0 }),
        .O({\half_duty_new_reg[2]6__53_carry__1_n_4 ,\half_duty_new_reg[2]6__53_carry__1_n_5 ,\half_duty_new_reg[2]6__53_carry__1_n_6 ,\half_duty_new_reg[2]6__53_carry__1_n_7 }),
        .S({\half_duty_new_reg[2]6__26_carry__1_n_5 ,\half_duty_new_reg[2]6__53_carry__1_i_3_n_0 ,\half_duty_new_reg[2]6__53_carry__1_i_4_n_0 ,\half_duty_new_reg[2]6__53_carry__1_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[2]6__53_carry__1_i_1 
       (.I0(\half_duty_new_reg[2]6__26_carry__0_n_4 ),
        .I1(\half_duty_new_reg[2]6_carry__1_n_6 ),
        .O(\half_duty_new_reg[2]6__53_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[2]6__53_carry__1_i_2 
       (.I0(\half_duty_new_reg[2]6_carry__1_n_7 ),
        .I1(\half_duty_new_reg[2]6__26_carry__0_n_5 ),
        .O(\half_duty_new_reg[2]6__53_carry__1_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \half_duty_new_reg[2]6__53_carry__1_i_3 
       (.I0(\half_duty_new_reg[2]6_carry__1_n_1 ),
        .I1(\half_duty_new_reg[2]6__26_carry__1_n_7 ),
        .I2(\half_duty_new_reg[2]6__26_carry__1_n_6 ),
        .O(\half_duty_new_reg[2]6__53_carry__1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \half_duty_new_reg[2]6__53_carry__1_i_4 
       (.I0(\half_duty_new_reg[2]6_carry__1_n_6 ),
        .I1(\half_duty_new_reg[2]6__26_carry__0_n_4 ),
        .I2(\half_duty_new_reg[2]6__26_carry__1_n_7 ),
        .I3(\half_duty_new_reg[2]6_carry__1_n_1 ),
        .O(\half_duty_new_reg[2]6__53_carry__1_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \half_duty_new_reg[2]6__53_carry__1_i_5 
       (.I0(\half_duty_new_reg[2]6__26_carry__0_n_5 ),
        .I1(\half_duty_new_reg[2]6_carry__1_n_7 ),
        .I2(\half_duty_new_reg[2]6__26_carry__0_n_4 ),
        .I3(\half_duty_new_reg[2]6_carry__1_n_6 ),
        .O(\half_duty_new_reg[2]6__53_carry__1_i_5_n_0 ));
  CARRY4 \half_duty_new_reg[2]6__53_carry__2 
       (.CI(\half_duty_new_reg[2]6__53_carry__1_n_0 ),
        .CO({\NLW_half_duty_new_reg[2]6__53_carry__2_CO_UNCONNECTED [3:1],\half_duty_new_reg[2]6__53_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\half_duty_new_reg[2]6__26_carry__1_n_4 }),
        .O({\NLW_half_duty_new_reg[2]6__53_carry__2_O_UNCONNECTED [3:2],\half_duty_new_reg[2]6__53_carry__2_n_6 ,\half_duty_new_reg[2]6__53_carry__2_n_7 }),
        .S({1'b0,1'b0,\half_duty_new_reg[2]6__26_carry__1_n_4 ,\half_duty_new_reg[2]6__26_carry__1_n_4 }));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \half_duty_new_reg[2]6__53_carry_i_1 
       (.I0(\half_duty_new_reg[2]6_carry_n_4 ),
        .I1(slv_reg0[21]),
        .I2(\half_duty_new_reg[2]6__26_carry_n_6 ),
        .O(\half_duty_new_reg[2]6__53_carry_i_1_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \half_duty_new_reg[2]6__53_carry_i_2 
       (.I0(\half_duty_new_reg[2]6_carry_n_5 ),
        .I1(slv_reg0[20]),
        .I2(\half_duty_new_reg[2]6_carry_n_7 ),
        .O(\half_duty_new_reg[2]6__53_carry_i_2_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[2]6__53_carry_i_3 
       (.I0(slv_reg0[19]),
        .I1(\half_duty_new_reg[2]6_carry_n_6 ),
        .O(\half_duty_new_reg[2]6__53_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \half_duty_new_reg[2]6__53_carry_i_4 
       (.I0(slv_reg0[18]),
        .I1(slv_reg0[16]),
        .O(\half_duty_new_reg[2]6__53_carry_i_4_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \half_duty_new_reg[2]6__53_carry_i_5 
       (.I0(\half_duty_new_reg[2]6_carry__0_n_7 ),
        .I1(slv_reg0[22]),
        .I2(\half_duty_new_reg[2]6__26_carry_n_5 ),
        .I3(\half_duty_new_reg[2]6__53_carry_i_1_n_0 ),
        .O(\half_duty_new_reg[2]6__53_carry_i_5_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \half_duty_new_reg[2]6__53_carry_i_6 
       (.I0(\half_duty_new_reg[2]6_carry_n_4 ),
        .I1(slv_reg0[21]),
        .I2(\half_duty_new_reg[2]6__26_carry_n_6 ),
        .I3(\half_duty_new_reg[2]6__53_carry_i_2_n_0 ),
        .O(\half_duty_new_reg[2]6__53_carry_i_6_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \half_duty_new_reg[2]6__53_carry_i_7 
       (.I0(\half_duty_new_reg[2]6_carry_n_5 ),
        .I1(slv_reg0[20]),
        .I2(\half_duty_new_reg[2]6_carry_n_7 ),
        .I3(\half_duty_new_reg[2]6__53_carry_i_3_n_0 ),
        .O(\half_duty_new_reg[2]6__53_carry_i_7_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \half_duty_new_reg[2]6__53_carry_i_8 
       (.I0(slv_reg0[19]),
        .I1(\half_duty_new_reg[2]6_carry_n_6 ),
        .I2(slv_reg0[16]),
        .I3(slv_reg0[18]),
        .O(\half_duty_new_reg[2]6__53_carry_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[2]6_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[2]6_carry_n_0 ,\half_duty_new_reg[2]6_carry_n_1 ,\half_duty_new_reg[2]6_carry_n_2 ,\half_duty_new_reg[2]6_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({slv_reg0[17:16],1'b0,1'b1}),
        .O({\half_duty_new_reg[2]6_carry_n_4 ,\half_duty_new_reg[2]6_carry_n_5 ,\half_duty_new_reg[2]6_carry_n_6 ,\half_duty_new_reg[2]6_carry_n_7 }),
        .S({\half_duty_new_reg[2]6_carry_i_1_n_0 ,\half_duty_new_reg[2]6_carry_i_2_n_0 ,\half_duty_new_reg[2]6_carry_i_3_n_0 ,slv_reg0[16]}));
  CARRY4 \half_duty_new_reg[2]6_carry__0 
       (.CI(\half_duty_new_reg[2]6_carry_n_0 ),
        .CO({\half_duty_new_reg[2]6_carry__0_n_0 ,\half_duty_new_reg[2]6_carry__0_n_1 ,\half_duty_new_reg[2]6_carry__0_n_2 ,\half_duty_new_reg[2]6_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({slv_reg0[23],slv_reg0[20:18]}),
        .O({\half_duty_new_reg[2]6_carry__0_n_4 ,\half_duty_new_reg[2]6_carry__0_n_5 ,\half_duty_new_reg[2]6_carry__0_n_6 ,\half_duty_new_reg[2]6_carry__0_n_7 }),
        .S({\half_duty_new_reg[2]6_carry__0_i_1_n_0 ,\half_duty_new_reg[2]6_carry__0_i_2_n_0 ,\half_duty_new_reg[2]6_carry__0_i_3_n_0 ,\half_duty_new_reg[2]6_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \half_duty_new_reg[2]6_carry__0_i_1 
       (.I0(slv_reg0[23]),
        .I1(slv_reg0[21]),
        .O(\half_duty_new_reg[2]6_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[2]6_carry__0_i_2 
       (.I0(slv_reg0[20]),
        .I1(slv_reg0[22]),
        .O(\half_duty_new_reg[2]6_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[2]6_carry__0_i_3 
       (.I0(slv_reg0[19]),
        .I1(slv_reg0[21]),
        .O(\half_duty_new_reg[2]6_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[2]6_carry__0_i_4 
       (.I0(slv_reg0[18]),
        .I1(slv_reg0[20]),
        .O(\half_duty_new_reg[2]6_carry__0_i_4_n_0 ));
  CARRY4 \half_duty_new_reg[2]6_carry__1 
       (.CI(\half_duty_new_reg[2]6_carry__0_n_0 ),
        .CO({\NLW_half_duty_new_reg[2]6_carry__1_CO_UNCONNECTED [3],\half_duty_new_reg[2]6_carry__1_n_1 ,\NLW_half_duty_new_reg[2]6_carry__1_CO_UNCONNECTED [1],\half_duty_new_reg[2]6_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,slv_reg0[23:22]}),
        .O({\NLW_half_duty_new_reg[2]6_carry__1_O_UNCONNECTED [3:2],\half_duty_new_reg[2]6_carry__1_n_6 ,\half_duty_new_reg[2]6_carry__1_n_7 }),
        .S({1'b0,1'b1,\half_duty_new_reg[2]6_carry__1_i_1_n_0 ,\half_duty_new_reg[2]6_carry__1_i_2_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]6_carry__1_i_1 
       (.I0(slv_reg0[23]),
        .O(\half_duty_new_reg[2]6_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[2]6_carry__1_i_2 
       (.I0(slv_reg0[23]),
        .I1(slv_reg0[22]),
        .O(\half_duty_new_reg[2]6_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[2]6_carry_i_1 
       (.I0(slv_reg0[17]),
        .I1(slv_reg0[19]),
        .O(\half_duty_new_reg[2]6_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \half_duty_new_reg[2]6_carry_i_2 
       (.I0(slv_reg0[18]),
        .I1(slv_reg0[16]),
        .O(\half_duty_new_reg[2]6_carry_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]6_carry_i_3 
       (.I0(slv_reg0[17]),
        .O(\half_duty_new_reg[2]6_carry_i_3_n_0 ));
  CARRY4 \half_duty_new_reg[2]7_carry 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[2]7_carry_n_0 ,\half_duty_new_reg[2]7_carry_n_1 ,\half_duty_new_reg[2]7_carry_n_2 ,\half_duty_new_reg[2]7_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\half_duty_new_reg[2]7_carry_i_1_n_0 ,\half_duty_new_reg[2]7_carry_i_2_n_0 ,\half_duty_new_reg[2]7_carry_i_3_n_0 ,\half_duty_new_reg[2]7_carry_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[2]7_carry_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[2]7_carry_i_5_n_0 ,\half_duty_new_reg[2]7_carry_i_6_n_0 ,\half_duty_new_reg[2]7_carry_i_7_n_0 ,\half_duty_new_reg[2]7_carry_i_8_n_0 }));
  CARRY4 \half_duty_new_reg[2]7_carry__0 
       (.CI(\half_duty_new_reg[2]7_carry_n_0 ),
        .CO({\half_duty_new_reg[2]7_carry__0_n_0 ,\half_duty_new_reg[2]7_carry__0_n_1 ,\half_duty_new_reg[2]7_carry__0_n_2 ,\half_duty_new_reg[2]7_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\half_duty_new_reg[2]7_carry__0_i_1_n_0 ,\half_duty_new_reg[2]7_carry__0_i_2_n_0 ,\half_duty_new_reg[2]7_carry__0_i_3_n_0 ,\half_duty_new_reg[2]7_carry__0_i_4_n_0 }),
        .O(\NLW_half_duty_new_reg[2]7_carry__0_O_UNCONNECTED [3:0]),
        .S({\half_duty_new_reg[2]7_carry__0_i_5_n_0 ,\half_duty_new_reg[2]7_carry__0_i_6_n_0 ,\half_duty_new_reg[2]7_carry__0_i_7_n_0 ,\half_duty_new_reg[2]7_carry__0_i_8_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[2]7_carry__0_i_1 
       (.I0(\half_duty_new_reg[2]6__53_carry__1_n_4 ),
        .I1(\half_duty_new_reg[2]6__53_carry__2_n_7 ),
        .O(\half_duty_new_reg[2]7_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[2]7_carry__0_i_2 
       (.I0(\half_duty_new_reg[2]6__53_carry__1_n_6 ),
        .I1(\half_duty_new_reg[2]6__53_carry__1_n_5 ),
        .O(\half_duty_new_reg[2]7_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[2]7_carry__0_i_3 
       (.I0(\half_duty_new_reg[2]6__53_carry__0_n_4 ),
        .I1(\half_duty_new_reg[2]6__53_carry__1_n_7 ),
        .O(\half_duty_new_reg[2]7_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[2]7_carry__0_i_4 
       (.I0(\half_duty_new_reg[2]6__53_carry__0_n_6 ),
        .I1(\half_duty_new_reg[2]6__53_carry__0_n_5 ),
        .O(\half_duty_new_reg[2]7_carry__0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[2]7_carry__0_i_5 
       (.I0(\half_duty_new_reg[2]6__53_carry__2_n_7 ),
        .I1(\half_duty_new_reg[2]6__53_carry__1_n_4 ),
        .O(\half_duty_new_reg[2]7_carry__0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[2]7_carry__0_i_6 
       (.I0(\half_duty_new_reg[2]6__53_carry__1_n_5 ),
        .I1(\half_duty_new_reg[2]6__53_carry__1_n_6 ),
        .O(\half_duty_new_reg[2]7_carry__0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[2]7_carry__0_i_7 
       (.I0(\half_duty_new_reg[2]6__53_carry__1_n_7 ),
        .I1(\half_duty_new_reg[2]6__53_carry__0_n_4 ),
        .O(\half_duty_new_reg[2]7_carry__0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[2]7_carry__0_i_8 
       (.I0(\half_duty_new_reg[2]6__53_carry__0_n_5 ),
        .I1(\half_duty_new_reg[2]6__53_carry__0_n_6 ),
        .O(\half_duty_new_reg[2]7_carry__0_i_8_n_0 ));
  CARRY4 \half_duty_new_reg[2]7_carry__1 
       (.CI(\half_duty_new_reg[2]7_carry__0_n_0 ),
        .CO({\NLW_half_duty_new_reg[2]7_carry__1_CO_UNCONNECTED [3:1],\half_duty_new_reg[2]7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_half_duty_new_reg[2]7_carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\half_duty_new_reg[2]7_carry__1_i_1_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new_reg[2]7_carry__1_i_1 
       (.I0(\half_duty_new_reg[2]6__53_carry__2_n_6 ),
        .O(\half_duty_new_reg[2]7_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[2]7_carry_i_1 
       (.I0(\half_duty_new_reg[2]6__53_carry_n_4 ),
        .I1(\half_duty_new_reg[2]6__53_carry__0_n_7 ),
        .O(\half_duty_new_reg[2]7_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[2]7_carry_i_2 
       (.I0(\half_duty_new_reg[2]6__53_carry_n_6 ),
        .I1(\half_duty_new_reg[2]6__53_carry_n_5 ),
        .O(\half_duty_new_reg[2]7_carry_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE77E)) 
    \half_duty_new_reg[2]7_carry_i_3 
       (.I0(slv_reg0[16]),
        .I1(slv_reg0[18]),
        .I2(slv_reg0[19]),
        .I3(\half_duty_new_reg[2]6_carry_n_6 ),
        .O(\half_duty_new_reg[2]7_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \half_duty_new_reg[2]7_carry_i_4 
       (.I0(slv_reg0[16]),
        .I1(slv_reg0[17]),
        .O(\half_duty_new_reg[2]7_carry_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[2]7_carry_i_5 
       (.I0(\half_duty_new_reg[2]6__53_carry__0_n_7 ),
        .I1(\half_duty_new_reg[2]6__53_carry_n_4 ),
        .O(\half_duty_new_reg[2]7_carry_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[2]7_carry_i_6 
       (.I0(\half_duty_new_reg[2]6__53_carry_n_5 ),
        .I1(\half_duty_new_reg[2]6__53_carry_n_6 ),
        .O(\half_duty_new_reg[2]7_carry_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6009)) 
    \half_duty_new_reg[2]7_carry_i_7 
       (.I0(\half_duty_new_reg[2]6_carry_n_6 ),
        .I1(slv_reg0[19]),
        .I2(slv_reg0[18]),
        .I3(slv_reg0[16]),
        .O(\half_duty_new_reg[2]7_carry_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty_new_reg[2]7_carry_i_8 
       (.I0(slv_reg0[17]),
        .I1(slv_reg0[16]),
        .O(\half_duty_new_reg[2]7_carry_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new_reg[2]10_in [0]),
        .Q(\half_duty_new_reg[2]_6 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[2][1]_i_1_n_0 ),
        .Q(\half_duty_new_reg[2]_6 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[2][2]_i_1_n_0 ),
        .Q(\half_duty_new_reg[2]_6 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[2][3]_i_1_n_0 ),
        .Q(\half_duty_new_reg[2]_6 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[2][4]_i_1_n_0 ),
        .Q(\half_duty_new_reg[2]_6 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[2][5]_i_1_n_0 ),
        .Q(\half_duty_new_reg[2]_6 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[2][6]_i_1_n_0 ),
        .Q(\half_duty_new_reg[2]_6 [6]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[2][6]_i_2 
       (.CI(\half_duty_new_reg[2]4_carry__1_i_9_n_0 ),
        .CO({\NLW_half_duty_new_reg[2][6]_i_2_CO_UNCONNECTED [3],\half_duty_new_reg[2][6]_i_2_n_1 ,\NLW_half_duty_new_reg[2][6]_i_2_CO_UNCONNECTED [1],\half_duty_new_reg[2][6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_half_duty_new_reg[2][6]_i_2_O_UNCONNECTED [3:2],\half_duty_new_reg[2]4 [22:21]}),
        .S({1'b0,1'b1,\half_duty_new[2][6]_i_4_n_0 ,\half_duty_new[2][6]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(reset_n),
        .D(\half_duty_new[2][7]_i_1_n_0 ),
        .Q(\half_duty_new_reg[2]_6 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[0]0 ),
        .D(\half_duty_new_reg[0]_1 [0]),
        .Q(\half_duty_reg[0]_2 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[0]0 ),
        .D(\half_duty_new_reg[0]_1 [1]),
        .Q(\half_duty_reg[0]_2 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[0]0 ),
        .D(\half_duty_new_reg[0]_1 [2]),
        .Q(\half_duty_reg[0]_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[0]0 ),
        .D(\half_duty_new_reg[0]_1 [3]),
        .Q(\half_duty_reg[0]_2 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[0]0 ),
        .D(\half_duty_new_reg[0]_1 [4]),
        .Q(\half_duty_reg[0]_2 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[0]0 ),
        .D(\half_duty_new_reg[0]_1 [5]),
        .Q(\half_duty_reg[0]_2 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[0]0 ),
        .D(\half_duty_new_reg[0]_1 [6]),
        .Q(\half_duty_reg[0]_2 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[0]0 ),
        .D(\half_duty_new_reg[0]_1 [7]),
        .Q(\half_duty_reg[0]_2 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[1]0 ),
        .D(\half_duty_new_reg[1]_3 [0]),
        .Q(\half_duty_reg[1]_4 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[1]0 ),
        .D(\half_duty_new_reg[1]_3 [1]),
        .Q(\half_duty_reg[1]_4 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[1]0 ),
        .D(\half_duty_new_reg[1]_3 [2]),
        .Q(\half_duty_reg[1]_4 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[1]0 ),
        .D(\half_duty_new_reg[1]_3 [3]),
        .Q(\half_duty_reg[1]_4 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[1]0 ),
        .D(\half_duty_new_reg[1]_3 [4]),
        .Q(\half_duty_reg[1]_4 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[1]0 ),
        .D(\half_duty_new_reg[1]_3 [5]),
        .Q(\half_duty_reg[1]_4 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[1]0 ),
        .D(\half_duty_new_reg[1]_3 [6]),
        .Q(\half_duty_reg[1]_4 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[1]0 ),
        .D(\half_duty_new_reg[1]_3 [7]),
        .Q(\half_duty_reg[1]_4 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[2]0 ),
        .D(\half_duty_new_reg[2]_6 [0]),
        .Q(\half_duty_reg[2]_7 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[2]0 ),
        .D(\half_duty_new_reg[2]_6 [1]),
        .Q(\half_duty_reg[2]_7 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[2]0 ),
        .D(\half_duty_new_reg[2]_6 [2]),
        .Q(\half_duty_reg[2]_7 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[2]0 ),
        .D(\half_duty_new_reg[2]_6 [3]),
        .Q(\half_duty_reg[2]_7 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[2]0 ),
        .D(\half_duty_new_reg[2]_6 [4]),
        .Q(\half_duty_reg[2]_7 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[2]0 ),
        .D(\half_duty_new_reg[2]_6 [5]),
        .Q(\half_duty_reg[2]_7 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[2]0 ),
        .D(\half_duty_new_reg[2]_6 [6]),
        .Q(\half_duty_reg[2]_7 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_reg[2]0 ),
        .D(\half_duty_new_reg[2]_6 [7]),
        .Q(\half_duty_reg[2]_7 [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0440088020080440)) 
    i__carry_i_1
       (.I0(\count_reg[1]_5 [6]),
        .I1(\count_reg[1]_5 [8]),
        .I2(\count_reg[1]_5 [7]),
        .I3(\half_duty_reg[1]_4 [7]),
        .I4(\half_duty_reg[1]_4 [6]),
        .I5(i__carry_i_4_n_0),
        .O(i__carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h41000041)) 
    i__carry_i_1__0
       (.I0(\count_reg[1]_5 [8]),
        .I1(\count_reg[1]_5 [6]),
        .I2(\half_duty_reg[1]_4 [6]),
        .I3(\half_duty_reg[1]_4 [7]),
        .I4(\count_reg[1]_5 [7]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0440088020080440)) 
    i__carry_i_1__1
       (.I0(\count_reg[2]_8 [6]),
        .I1(\count_reg[2]_8 [8]),
        .I2(\count_reg[2]_8 [7]),
        .I3(\half_duty_reg[2]_7 [7]),
        .I4(\half_duty_reg[2]_7 [6]),
        .I5(i__carry_i_4__0_n_0),
        .O(i__carry_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h41000041)) 
    i__carry_i_1__2
       (.I0(\count_reg[2]_8 [8]),
        .I1(\count_reg[2]_8 [6]),
        .I2(\half_duty_reg[2]_7 [6]),
        .I3(\half_duty_reg[2]_7 [7]),
        .I4(\count_reg[2]_8 [7]),
        .O(i__carry_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h8000044804488000)) 
    i__carry_i_2
       (.I0(\count_reg[1]_5 [4]),
        .I1(i__carry_i_5_n_0),
        .I2(\half_duty_reg[1]_4 [4]),
        .I3(i__carry_i_6_n_0),
        .I4(\half_duty_reg[1]_4 [5]),
        .I5(\count_reg[1]_5 [5]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000044804488000)) 
    i__carry_i_2__0
       (.I0(\count_reg[2]_8 [4]),
        .I1(i__carry_i_5__0_n_0),
        .I2(\half_duty_reg[2]_7 [4]),
        .I3(i__carry_i_6__0_n_0),
        .I4(\half_duty_reg[2]_7 [5]),
        .I5(\count_reg[2]_8 [5]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__1
       (.I0(\count_reg[1]_5 [3]),
        .I1(\half_duty_reg[1]_4 [3]),
        .I2(\count_reg[1]_5 [4]),
        .I3(\half_duty_reg[1]_4 [4]),
        .I4(\half_duty_reg[1]_4 [5]),
        .I5(\count_reg[1]_5 [5]),
        .O(i__carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__2
       (.I0(\count_reg[2]_8 [3]),
        .I1(\half_duty_reg[2]_7 [3]),
        .I2(\count_reg[2]_8 [4]),
        .I3(\half_duty_reg[2]_7 [4]),
        .I4(\half_duty_reg[2]_7 [5]),
        .I5(\count_reg[2]_8 [5]),
        .O(i__carry_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(\count_reg[1]_5 [0]),
        .I1(\half_duty_reg[1]_4 [0]),
        .I2(\count_reg[1]_5 [1]),
        .I3(\half_duty_reg[1]_4 [1]),
        .I4(\half_duty_reg[1]_4 [2]),
        .I5(\count_reg[1]_5 [2]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0082820041000014)) 
    i__carry_i_3__0
       (.I0(\count_reg[1]_5 [0]),
        .I1(\half_duty_reg[1]_4 [2]),
        .I2(\count_reg[1]_5 [2]),
        .I3(\count_reg[1]_5 [1]),
        .I4(\half_duty_reg[1]_4 [1]),
        .I5(\half_duty_reg[1]_4 [0]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__1
       (.I0(\count_reg[2]_8 [0]),
        .I1(\half_duty_reg[2]_7 [0]),
        .I2(\count_reg[2]_8 [1]),
        .I3(\half_duty_reg[2]_7 [1]),
        .I4(\half_duty_reg[2]_7 [2]),
        .I5(\count_reg[2]_8 [2]),
        .O(i__carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h0082820041000014)) 
    i__carry_i_3__2
       (.I0(\count_reg[2]_8 [0]),
        .I1(\half_duty_reg[2]_7 [2]),
        .I2(\count_reg[2]_8 [2]),
        .I3(\count_reg[2]_8 [1]),
        .I4(\half_duty_reg[2]_7 [1]),
        .I5(\half_duty_reg[2]_7 [0]),
        .O(i__carry_i_3__2_n_0));
  LUT6 #(
    .INIT(64'h57575777FFFFFFFF)) 
    i__carry_i_4
       (.I0(\half_duty_reg[1]_4 [4]),
        .I1(\half_duty_reg[1]_4 [3]),
        .I2(\half_duty_reg[1]_4 [2]),
        .I3(\half_duty_reg[1]_4 [1]),
        .I4(\half_duty_reg[1]_4 [0]),
        .I5(\half_duty_reg[1]_4 [5]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h57575777FFFFFFFF)) 
    i__carry_i_4__0
       (.I0(\half_duty_reg[2]_7 [4]),
        .I1(\half_duty_reg[2]_7 [3]),
        .I2(\half_duty_reg[2]_7 [2]),
        .I3(\half_duty_reg[2]_7 [1]),
        .I4(\half_duty_reg[2]_7 [0]),
        .I5(\half_duty_reg[2]_7 [5]),
        .O(i__carry_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h69696999)) 
    i__carry_i_5
       (.I0(\half_duty_reg[1]_4 [3]),
        .I1(\count_reg[1]_5 [3]),
        .I2(\half_duty_reg[1]_4 [2]),
        .I3(\half_duty_reg[1]_4 [1]),
        .I4(\half_duty_reg[1]_4 [0]),
        .O(i__carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h69696999)) 
    i__carry_i_5__0
       (.I0(\half_duty_reg[2]_7 [3]),
        .I1(\count_reg[2]_8 [3]),
        .I2(\half_duty_reg[2]_7 [2]),
        .I3(\half_duty_reg[2]_7 [1]),
        .I4(\half_duty_reg[2]_7 [0]),
        .O(i__carry_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEEEA)) 
    i__carry_i_6
       (.I0(\half_duty_reg[1]_4 [3]),
        .I1(\half_duty_reg[1]_4 [2]),
        .I2(\half_duty_reg[1]_4 [1]),
        .I3(\half_duty_reg[1]_4 [0]),
        .O(i__carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEEEA)) 
    i__carry_i_6__0
       (.I0(\half_duty_reg[2]_7 [3]),
        .I1(\half_duty_reg[2]_7 [2]),
        .I2(\half_duty_reg[2]_7 [1]),
        .I3(\half_duty_reg[2]_7 [0]),
        .O(i__carry_i_6__0_n_0));
  CARRY4 pwm_out0_carry
       (.CI(1'b0),
        .CO({NLW_pwm_out0_carry_CO_UNCONNECTED[3],pwm_out04_in,pwm_out0_carry_n_2,pwm_out0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,pwm_out0_carry_i_1_n_0,pwm_out0_carry_i_2_n_0,pwm_out0_carry_i_3_n_0}));
  LUT6 #(
    .INIT(64'h0440088020080440)) 
    pwm_out0_carry_i_1
       (.I0(\count_reg[0]_0 [6]),
        .I1(\count_reg[0]_0 [8]),
        .I2(\count_reg[0]_0 [7]),
        .I3(\half_duty_reg[0]_2 [7]),
        .I4(\half_duty_reg[0]_2 [6]),
        .I5(pwm_out0_carry_i_4_n_0),
        .O(pwm_out0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h8118000006600000)) 
    pwm_out0_carry_i_2
       (.I0(\half_duty_reg[0]_2 [4]),
        .I1(pwm_out0_carry_i_5_n_0),
        .I2(\half_duty_reg[0]_2 [5]),
        .I3(\count_reg[0]_0 [5]),
        .I4(pwm_out0_carry_i_6_n_0),
        .I5(\count_reg[0]_0 [4]),
        .O(pwm_out0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0082820041000014)) 
    pwm_out0_carry_i_3
       (.I0(\count_reg[0]_0 [0]),
        .I1(\half_duty_reg[0]_2 [2]),
        .I2(\count_reg[0]_0 [2]),
        .I3(\count_reg[0]_0 [1]),
        .I4(\half_duty_reg[0]_2 [1]),
        .I5(\half_duty_reg[0]_2 [0]),
        .O(pwm_out0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h57575777FFFFFFFF)) 
    pwm_out0_carry_i_4
       (.I0(\half_duty_reg[0]_2 [4]),
        .I1(\half_duty_reg[0]_2 [3]),
        .I2(\half_duty_reg[0]_2 [2]),
        .I3(\half_duty_reg[0]_2 [1]),
        .I4(\half_duty_reg[0]_2 [0]),
        .I5(\half_duty_reg[0]_2 [5]),
        .O(pwm_out0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEEEA)) 
    pwm_out0_carry_i_5
       (.I0(\half_duty_reg[0]_2 [3]),
        .I1(\half_duty_reg[0]_2 [2]),
        .I2(\half_duty_reg[0]_2 [1]),
        .I3(\half_duty_reg[0]_2 [0]),
        .O(pwm_out0_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h69696999)) 
    pwm_out0_carry_i_6
       (.I0(\half_duty_reg[0]_2 [3]),
        .I1(\count_reg[0]_0 [3]),
        .I2(\half_duty_reg[0]_2 [2]),
        .I3(\half_duty_reg[0]_2 [1]),
        .I4(\half_duty_reg[0]_2 [0]),
        .O(pwm_out0_carry_i_6_n_0));
  CARRY4 \pwm_out0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_pwm_out0_inferred__0/i__carry_CO_UNCONNECTED [3],pwm_out01_in,\pwm_out0_inferred__0/i__carry_n_2 ,\pwm_out0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_pwm_out0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3__0_n_0}));
  CARRY4 \pwm_out0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\NLW_pwm_out0_inferred__1/i__carry_CO_UNCONNECTED [3],pwm_out0,\pwm_out0_inferred__1/i__carry_n_2 ,\pwm_out0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_pwm_out0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_1__1_n_0,i__carry_i_2__0_n_0,i__carry_i_3__2_n_0}));
  CARRY4 pwm_out1_carry
       (.CI(1'b0),
        .CO({NLW_pwm_out1_carry_CO_UNCONNECTED[3],pwm_out1,pwm_out1_carry_n_2,pwm_out1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,pwm_out1_carry_i_1_n_0,pwm_out1_carry_i_2_n_0,pwm_out1_carry_i_3_n_0}));
  LUT5 #(
    .INIT(32'h41000041)) 
    pwm_out1_carry_i_1
       (.I0(\count_reg[0]_0 [8]),
        .I1(\half_duty_reg[0]_2 [6]),
        .I2(\count_reg[0]_0 [6]),
        .I3(\count_reg[0]_0 [7]),
        .I4(\half_duty_reg[0]_2 [7]),
        .O(pwm_out1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out1_carry_i_2
       (.I0(\count_reg[0]_0 [3]),
        .I1(\half_duty_reg[0]_2 [3]),
        .I2(\half_duty_reg[0]_2 [4]),
        .I3(\count_reg[0]_0 [4]),
        .I4(\count_reg[0]_0 [5]),
        .I5(\half_duty_reg[0]_2 [5]),
        .O(pwm_out1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out1_carry_i_3
       (.I0(\count_reg[0]_0 [0]),
        .I1(\half_duty_reg[0]_2 [0]),
        .I2(\half_duty_reg[0]_2 [1]),
        .I3(\count_reg[0]_0 [1]),
        .I4(\count_reg[0]_0 [2]),
        .I5(\half_duty_reg[0]_2 [2]),
        .O(pwm_out1_carry_i_3_n_0));
  CARRY4 \pwm_out1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\NLW_pwm_out1_inferred__1/i__carry_CO_UNCONNECTED [3],pwm_out10_out,\pwm_out1_inferred__1/i__carry_n_2 ,\pwm_out1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_pwm_out1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_1__0_n_0,i__carry_i_2__1_n_0,i__carry_i_3_n_0}));
  CARRY4 \pwm_out1_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\NLW_pwm_out1_inferred__3/i__carry_CO_UNCONNECTED [3],pwm_out11_out,\pwm_out1_inferred__3/i__carry_n_2 ,\pwm_out1_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_pwm_out1_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__1_n_0}));
  LUT3 #(
    .INIT(8'h54)) 
    \pwm_out[0]_i_1 
       (.I0(pwm_out1),
        .I1(pwm_out04_in),
        .I2(pwm_out[0]),
        .O(\pwm_out[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \pwm_out[1]_i_1 
       (.I0(pwm_out10_out),
        .I1(pwm_out01_in),
        .I2(pwm_out[1]),
        .O(\pwm_out[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \pwm_out[2]_i_1 
       (.I0(pwm_out11_out),
        .I1(pwm_out0),
        .I2(pwm_out[2]),
        .O(\pwm_out[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_out[2]_i_2 
       (.I0(reset_n),
        .O(\pwm_out[2]_i_2_n_0 ));
  FDCE \pwm_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\pwm_out[0]_i_1_n_0 ),
        .Q(pwm_out[0]));
  FDCE \pwm_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\pwm_out[1]_i_1_n_0 ),
        .Q(pwm_out[1]));
  FDCE \pwm_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\pwm_out[2]_i_2_n_0 ),
        .D(\pwm_out[2]_i_1_n_0 ),
        .Q(pwm_out[2]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(SR));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(SR));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(SR));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(SR));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(SR));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(SR));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(SR));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(SR));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(SR));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(SR));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(SR));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(SR));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(SR));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(SR));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(SR));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(SR));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(SR));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(SR));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(SR));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(SR));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(SR));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(SR));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(SR));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(SR));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(SR));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(SR));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(SR));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(SR));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(SR));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(SR));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(SR));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
