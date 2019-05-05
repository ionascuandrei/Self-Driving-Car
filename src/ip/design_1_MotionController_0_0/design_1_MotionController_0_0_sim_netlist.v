// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun May  5 14:02:21 2019
// Host        : catabit-UX430UAR running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/catabit/Zybo/SDCar/SDCarVivado/SDCarVivado.srcs/sources_1/bd/design_1/ip/design_1_MotionController_0_0/design_1_MotionController_0_0_sim_netlist.v
// Design      : design_1_MotionController_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_MotionController_0_0,MotionController_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "MotionController_v1_0,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_MotionController_0_0
   (enable,
    motor_left_dir_out,
    motor_right_dir_out,
    motor_left_pwm_out,
    motor_right_pwm_out,
    servo_pwm_out,
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
  input enable;
  output motor_left_dir_out;
  output motor_right_dir_out;
  output motor_left_pwm_out;
  output motor_right_pwm_out;
  output servo_pwm_out;
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
  wire enable;
  wire motor_left_dir_out;
  wire motor_left_pwm_out;
  wire motor_right_dir_out;
  wire motor_right_pwm_out;
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
  wire servo_pwm_out;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_MotionController_0_0_MotionController_v1_0 U0
       (.Q({motor_left_dir_out,motor_right_dir_out}),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .enable(enable),
        .motor_left_pwm_out(motor_left_pwm_out),
        .motor_right_pwm_out(motor_right_pwm_out),
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
        .s00_axi_wvalid(s00_axi_wvalid),
        .servo_pwm_out(servo_pwm_out));
endmodule

(* ORIG_REF_NAME = "MotionController_v1_0" *) 
module design_1_MotionController_0_0_MotionController_v1_0
   (S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rvalid,
    S_AXI_AWREADY,
    Q,
    s00_axi_rdata,
    motor_right_pwm_out,
    motor_left_pwm_out,
    servo_pwm_out,
    s00_axi_bvalid,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    enable,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output s00_axi_rvalid;
  output S_AXI_AWREADY;
  output [1:0]Q;
  output [31:0]s00_axi_rdata;
  output motor_right_pwm_out;
  output motor_left_pwm_out;
  output servo_pwm_out;
  output s00_axi_bvalid;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input enable;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire MotionController_v1_0_S00_AXI_inst_n_42;
  wire MotionController_v1_0_S00_AXI_inst_n_44;
  wire MotionController_v1_0_S00_AXI_inst_n_46;
  wire [1:0]Q;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire enable;
  wire \motor_left_driver/pwm_out_buf0 ;
  wire motor_left_pwm_out;
  wire \motor_right_driver/pwm_out_buf0 ;
  wire motor_right_pwm_out;
  wire pwm_out_buf_i_1__0_n_0;
  wire pwm_out_buf_i_1__1_n_0;
  wire pwm_out_buf_i_1_n_0;
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
  wire \servo_driver/pwm_out_buf0 ;
  wire servo_pwm_out;
  wire \slv_reg0[2]_i_1_n_0 ;

  design_1_MotionController_0_0_MotionController_v1_0_S00_AXI MotionController_v1_0_S00_AXI_inst
       (.CO(MotionController_v1_0_S00_AXI_inst_n_42),
        .Q(Q),
        .SR(\slv_reg0[2]_i_1_n_0 ),
        .axi_arready_reg_0(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(axi_bvalid_i_1_n_0),
        .enable(enable),
        .motor_left_pwm_out(motor_left_pwm_out),
        .motor_right_pwm_out(motor_right_pwm_out),
        .pwm_out_buf_reg(\servo_driver/pwm_out_buf0 ),
        .pwm_out_buf_reg_0(MotionController_v1_0_S00_AXI_inst_n_44),
        .pwm_out_buf_reg_1(\motor_left_driver/pwm_out_buf0 ),
        .pwm_out_buf_reg_2(MotionController_v1_0_S00_AXI_inst_n_46),
        .pwm_out_buf_reg_3(\motor_right_driver/pwm_out_buf0 ),
        .pwm_out_buf_reg_4(pwm_out_buf_i_1_n_0),
        .pwm_out_buf_reg_5(pwm_out_buf_i_1__0_n_0),
        .pwm_out_buf_reg_6(pwm_out_buf_i_1__1_n_0),
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
        .s00_axi_wvalid(s00_axi_wvalid),
        .servo_pwm_out(servo_pwm_out));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    pwm_out_buf_i_1
       (.I0(MotionController_v1_0_S00_AXI_inst_n_42),
        .I1(\servo_driver/pwm_out_buf0 ),
        .I2(servo_pwm_out),
        .O(pwm_out_buf_i_1_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    pwm_out_buf_i_1__0
       (.I0(MotionController_v1_0_S00_AXI_inst_n_44),
        .I1(\motor_left_driver/pwm_out_buf0 ),
        .I2(motor_left_pwm_out),
        .O(pwm_out_buf_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    pwm_out_buf_i_1__1
       (.I0(MotionController_v1_0_S00_AXI_inst_n_46),
        .I1(\motor_right_driver/pwm_out_buf0 ),
        .I2(motor_right_pwm_out),
        .O(pwm_out_buf_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \slv_reg0[2]_i_1 
       (.I0(s00_axi_aresetn),
        .O(\slv_reg0[2]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "MotionController_v1_0_S00_AXI" *) 
module design_1_MotionController_0_0_MotionController_v1_0_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    servo_pwm_out,
    motor_left_pwm_out,
    motor_right_pwm_out,
    s00_axi_bvalid,
    s00_axi_rvalid,
    Q,
    s00_axi_rdata,
    CO,
    pwm_out_buf_reg,
    pwm_out_buf_reg_0,
    pwm_out_buf_reg_1,
    pwm_out_buf_reg_2,
    pwm_out_buf_reg_3,
    SR,
    s00_axi_aclk,
    pwm_out_buf_reg_4,
    pwm_out_buf_reg_5,
    pwm_out_buf_reg_6,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb,
    enable);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output servo_pwm_out;
  output motor_left_pwm_out;
  output motor_right_pwm_out;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [1:0]Q;
  output [31:0]s00_axi_rdata;
  output [0:0]CO;
  output [0:0]pwm_out_buf_reg;
  output [0:0]pwm_out_buf_reg_0;
  output [0:0]pwm_out_buf_reg_1;
  output [0:0]pwm_out_buf_reg_2;
  output [0:0]pwm_out_buf_reg_3;
  input [0:0]SR;
  input s00_axi_aclk;
  input pwm_out_buf_reg_4;
  input pwm_out_buf_reg_5;
  input pwm_out_buf_reg_6;
  input axi_wready_reg_0;
  input axi_arready_reg_0;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input enable;

  wire [0:0]CO;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready_i_1_n_0;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire axi_wready_i_1_n_0;
  wire axi_wready_reg_0;
  wire [15:0]duty;
  wire enable;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire motor_left_pwm_out;
  wire motor_right_pwm_out;
  wire [1:0]p_0_in;
  wire [31:2]p_1_in;
  wire [0:0]pwm_out_buf_reg;
  wire [0:0]pwm_out_buf_reg_0;
  wire [0:0]pwm_out_buf_reg_1;
  wire [0:0]pwm_out_buf_reg_2;
  wire [0:0]pwm_out_buf_reg_3;
  wire pwm_out_buf_reg_4;
  wire pwm_out_buf_reg_5;
  wire pwm_out_buf_reg_6;
  wire [31:0]reg_data_out;
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
  wire servo_position1;
  wire servo_position10_in;
  wire servo_position1_carry__0_i_1_n_0;
  wire servo_position1_carry__0_i_2_n_0;
  wire servo_position1_carry__0_i_3_n_0;
  wire servo_position1_carry__0_i_4_n_0;
  wire servo_position1_carry__0_n_3;
  wire servo_position1_carry_i_1_n_0;
  wire servo_position1_carry_i_2_n_0;
  wire servo_position1_carry_i_3_n_0;
  wire servo_position1_carry_i_4_n_0;
  wire servo_position1_carry_i_5_n_0;
  wire servo_position1_carry_i_6_n_0;
  wire servo_position1_carry_i_7_n_0;
  wire servo_position1_carry_i_8_n_0;
  wire servo_position1_carry_n_0;
  wire servo_position1_carry_n_1;
  wire servo_position1_carry_n_2;
  wire servo_position1_carry_n_3;
  wire \servo_position1_inferred__0/i__carry__0_n_3 ;
  wire \servo_position1_inferred__0/i__carry_n_0 ;
  wire \servo_position1_inferred__0/i__carry_n_1 ;
  wire \servo_position1_inferred__0/i__carry_n_2 ;
  wire \servo_position1_inferred__0/i__carry_n_3 ;
  wire servo_pwm_out;
  wire [31:3]slv_reg0;
  wire [0:0]slv_reg0__0;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_wren__0;
  wire [3:0]NLW_servo_position1_carry_O_UNCONNECTED;
  wire [3:2]NLW_servo_position1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_servo_position1_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_servo_position1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_servo_position1_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_servo_position1_inferred__0/i__carry__0_O_UNCONNECTED ;

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
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .I4(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(s00_axi_awready),
        .R(SR));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_reg_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[0] ),
        .I4(\slv_reg1_reg_n_0_[0] ),
        .I5(slv_reg0__0),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[10] ),
        .I4(\slv_reg1_reg_n_0_[10] ),
        .I5(slv_reg0[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[11] ),
        .I4(\slv_reg1_reg_n_0_[11] ),
        .I5(slv_reg0[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[12] ),
        .I4(\slv_reg1_reg_n_0_[12] ),
        .I5(slv_reg0[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[13] ),
        .I4(\slv_reg1_reg_n_0_[13] ),
        .I5(slv_reg0[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[14] ),
        .I4(\slv_reg1_reg_n_0_[14] ),
        .I5(slv_reg0[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg3[15]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[15] ),
        .I4(\slv_reg1_reg_n_0_[15] ),
        .I5(slv_reg0[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg3[16]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[0]),
        .I4(\slv_reg1_reg_n_0_[16] ),
        .I5(slv_reg0[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg3[17]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[1]),
        .I4(\slv_reg1_reg_n_0_[17] ),
        .I5(slv_reg0[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg3[18]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[2]),
        .I4(\slv_reg1_reg_n_0_[18] ),
        .I5(slv_reg0[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg3[19]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[3]),
        .I4(\slv_reg1_reg_n_0_[19] ),
        .I5(slv_reg0[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[1] ),
        .I4(\slv_reg1_reg_n_0_[1] ),
        .I5(Q[0]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg3[20]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[4]),
        .I4(\slv_reg1_reg_n_0_[20] ),
        .I5(slv_reg0[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg3[21]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[5]),
        .I4(\slv_reg1_reg_n_0_[21] ),
        .I5(slv_reg0[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg3[22]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[6]),
        .I4(\slv_reg1_reg_n_0_[22] ),
        .I5(slv_reg0[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg3[23]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[7]),
        .I4(\slv_reg1_reg_n_0_[23] ),
        .I5(slv_reg0[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg3[24]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[8]),
        .I4(\slv_reg1_reg_n_0_[24] ),
        .I5(slv_reg0[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg3[25]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[9]),
        .I4(\slv_reg1_reg_n_0_[25] ),
        .I5(slv_reg0[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg3[26]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[10]),
        .I4(\slv_reg1_reg_n_0_[26] ),
        .I5(slv_reg0[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg3[27]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[11]),
        .I4(\slv_reg1_reg_n_0_[27] ),
        .I5(slv_reg0[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg3[28]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[12]),
        .I4(\slv_reg1_reg_n_0_[28] ),
        .I5(slv_reg0[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg3[29]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[13]),
        .I4(\slv_reg1_reg_n_0_[29] ),
        .I5(slv_reg0[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[2] ),
        .I4(\slv_reg1_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg3[30]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[14]),
        .I4(\slv_reg1_reg_n_0_[30] ),
        .I5(slv_reg0[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_rvalid),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg3[31]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(duty[15]),
        .I4(\slv_reg1_reg_n_0_[31] ),
        .I5(slv_reg0[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[3] ),
        .I4(\slv_reg1_reg_n_0_[3] ),
        .I5(slv_reg0[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[4] ),
        .I4(\slv_reg1_reg_n_0_[4] ),
        .I5(slv_reg0[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[5] ),
        .I4(\slv_reg1_reg_n_0_[5] ),
        .I5(slv_reg0[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[6] ),
        .I4(\slv_reg1_reg_n_0_[6] ),
        .I5(slv_reg0[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[7] ),
        .I4(\slv_reg1_reg_n_0_[7] ),
        .I5(slv_reg0[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[8] ),
        .I4(\slv_reg1_reg_n_0_[8] ),
        .I5(slv_reg0[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg2_reg_n_0_[9] ),
        .I4(\slv_reg1_reg_n_0_[9] ),
        .I5(slv_reg0[9]),
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
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(SR));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(\slv_reg1_reg_n_0_[11] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(\slv_reg1_reg_n_0_[9] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(\slv_reg1_reg_n_0_[7] ),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(\slv_reg1_reg_n_0_[5] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(\slv_reg1_reg_n_0_[3] ),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(\slv_reg1_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(\slv_reg1_reg_n_0_[7] ),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6
       (.I0(\slv_reg1_reg_n_0_[5] ),
        .I1(\slv_reg1_reg_n_0_[4] ),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(\slv_reg1_reg_n_0_[3] ),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8
       (.I0(\slv_reg1_reg_n_0_[1] ),
        .I1(\slv_reg1_reg_n_0_[0] ),
        .O(i__carry_i_8_n_0));
  design_1_MotionController_0_0_PWM_Driver__parameterized1 motor_left_driver
       (.Q(duty),
        .enable(enable),
        .motor_left_pwm_out(motor_left_pwm_out),
        .pwm_out_buf_reg_0(pwm_out_buf_reg_0),
        .pwm_out_buf_reg_1(pwm_out_buf_reg_1),
        .pwm_out_buf_reg_2(pwm_out_buf_reg_5),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg0_reg[0] (slv_reg0__0));
  design_1_MotionController_0_0_PWM_Driver__parameterized1_0 motor_right_driver
       (.Q({\slv_reg2_reg_n_0_[15] ,\slv_reg2_reg_n_0_[14] ,\slv_reg2_reg_n_0_[13] ,\slv_reg2_reg_n_0_[12] ,\slv_reg2_reg_n_0_[11] ,\slv_reg2_reg_n_0_[10] ,\slv_reg2_reg_n_0_[9] ,\slv_reg2_reg_n_0_[8] ,\slv_reg2_reg_n_0_[7] ,\slv_reg2_reg_n_0_[6] ,\slv_reg2_reg_n_0_[5] ,\slv_reg2_reg_n_0_[4] ,\slv_reg2_reg_n_0_[3] ,\slv_reg2_reg_n_0_[2] ,\slv_reg2_reg_n_0_[1] ,\slv_reg2_reg_n_0_[0] }),
        .enable(enable),
        .motor_right_pwm_out(motor_right_pwm_out),
        .pwm_out_buf_reg_0(pwm_out_buf_reg_2),
        .pwm_out_buf_reg_1(pwm_out_buf_reg_3),
        .pwm_out_buf_reg_2(pwm_out_buf_reg_6),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg0_reg[0] (slv_reg0__0));
  design_1_MotionController_0_0_PWM_Driver servo_driver
       (.CO(CO),
        .Q(slv_reg0__0),
        .enable(enable),
        .pwm_out_buf_reg_0(pwm_out_buf_reg),
        .pwm_out_buf_reg_1(pwm_out_buf_reg_4),
        .s00_axi_aclk(s00_axi_aclk),
        .servo_pwm_out(servo_pwm_out),
        .\slv_reg1_reg[10] (servo_position1),
        .\slv_reg1_reg[10]_0 (servo_position10_in),
        .\slv_reg1_reg[11] ({\slv_reg1_reg_n_0_[11] ,\slv_reg1_reg_n_0_[10] ,\slv_reg1_reg_n_0_[9] ,\slv_reg1_reg_n_0_[8] ,\slv_reg1_reg_n_0_[7] ,\slv_reg1_reg_n_0_[6] ,\slv_reg1_reg_n_0_[5] ,\slv_reg1_reg_n_0_[4] ,\slv_reg1_reg_n_0_[3] ,\slv_reg1_reg_n_0_[2] ,\slv_reg1_reg_n_0_[1] ,\slv_reg1_reg_n_0_[0] }));
  CARRY4 servo_position1_carry
       (.CI(1'b0),
        .CO({servo_position1_carry_n_0,servo_position1_carry_n_1,servo_position1_carry_n_2,servo_position1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({servo_position1_carry_i_1_n_0,servo_position1_carry_i_2_n_0,servo_position1_carry_i_3_n_0,servo_position1_carry_i_4_n_0}),
        .O(NLW_servo_position1_carry_O_UNCONNECTED[3:0]),
        .S({servo_position1_carry_i_5_n_0,servo_position1_carry_i_6_n_0,servo_position1_carry_i_7_n_0,servo_position1_carry_i_8_n_0}));
  CARRY4 servo_position1_carry__0
       (.CI(servo_position1_carry_n_0),
        .CO({NLW_servo_position1_carry__0_CO_UNCONNECTED[3:2],servo_position1,servo_position1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,servo_position1_carry__0_i_1_n_0,servo_position1_carry__0_i_2_n_0}),
        .O(NLW_servo_position1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,servo_position1_carry__0_i_3_n_0,servo_position1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    servo_position1_carry__0_i_1
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(\slv_reg1_reg_n_0_[11] ),
        .O(servo_position1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    servo_position1_carry__0_i_2
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(\slv_reg1_reg_n_0_[9] ),
        .O(servo_position1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    servo_position1_carry__0_i_3
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(\slv_reg1_reg_n_0_[11] ),
        .O(servo_position1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    servo_position1_carry__0_i_4
       (.I0(\slv_reg1_reg_n_0_[9] ),
        .I1(\slv_reg1_reg_n_0_[8] ),
        .O(servo_position1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    servo_position1_carry_i_1
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(\slv_reg1_reg_n_0_[7] ),
        .O(servo_position1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    servo_position1_carry_i_2
       (.I0(\slv_reg1_reg_n_0_[4] ),
        .I1(\slv_reg1_reg_n_0_[5] ),
        .O(servo_position1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    servo_position1_carry_i_3
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(\slv_reg1_reg_n_0_[3] ),
        .O(servo_position1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    servo_position1_carry_i_4
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(\slv_reg1_reg_n_0_[1] ),
        .O(servo_position1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    servo_position1_carry_i_5
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(\slv_reg1_reg_n_0_[7] ),
        .O(servo_position1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    servo_position1_carry_i_6
       (.I0(\slv_reg1_reg_n_0_[4] ),
        .I1(\slv_reg1_reg_n_0_[5] ),
        .O(servo_position1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    servo_position1_carry_i_7
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(\slv_reg1_reg_n_0_[3] ),
        .O(servo_position1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    servo_position1_carry_i_8
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(\slv_reg1_reg_n_0_[1] ),
        .O(servo_position1_carry_i_8_n_0));
  CARRY4 \servo_position1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\servo_position1_inferred__0/i__carry_n_0 ,\servo_position1_inferred__0/i__carry_n_1 ,\servo_position1_inferred__0/i__carry_n_2 ,\servo_position1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_servo_position1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \servo_position1_inferred__0/i__carry__0 
       (.CI(\servo_position1_inferred__0/i__carry_n_0 ),
        .CO({\NLW_servo_position1_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],servo_position10_in,\servo_position1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_servo_position1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[2]_i_2 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[2]_i_3 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0__0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[1]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[2]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(duty[0]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(duty[1]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(duty[2]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(duty[3]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(duty[4]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(duty[5]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(duty[6]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(duty[7]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(duty[8]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(duty[9]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(duty[10]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(duty[11]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(duty[12]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(duty[13]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(duty[14]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(duty[15]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
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

(* ORIG_REF_NAME = "PWM_Driver" *) 
module design_1_MotionController_0_0_PWM_Driver
   (servo_pwm_out,
    CO,
    pwm_out_buf_reg_0,
    pwm_out_buf_reg_1,
    s00_axi_aclk,
    Q,
    enable,
    \slv_reg1_reg[10] ,
    \slv_reg1_reg[10]_0 ,
    \slv_reg1_reg[11] );
  output servo_pwm_out;
  output [0:0]CO;
  output [0:0]pwm_out_buf_reg_0;
  input pwm_out_buf_reg_1;
  input s00_axi_aclk;
  input [0:0]Q;
  input enable;
  input [0:0]\slv_reg1_reg[10] ;
  input [0:0]\slv_reg1_reg[10]_0 ;
  input [11:0]\slv_reg1_reg[11] ;

  wire [0:0]CO;
  wire [0:0]Q;
  wire [19:0]count;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__3_n_2;
  wire count0_carry__3_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[19]_i_2_n_0 ;
  wire \count[19]_i_3_n_0 ;
  wire \count[19]_i_4_n_0 ;
  wire \count[19]_i_5_n_0 ;
  wire \count[19]_i_6_n_0 ;
  wire \count[19]_i_7_n_0 ;
  wire \count[19]_i_8_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [19:1]data0;
  wire disabled;
  wire disabled0;
  wire disabled02_out;
  wire enable;
  wire half_duty0;
  wire [18:0]half_duty_new;
  wire [18:1]half_duty_new1;
  wire [19:1]half_duty_new3;
  wire [18:1]half_duty_new4;
  wire half_duty_new4_carry__0_i_10_n_0;
  wire half_duty_new4_carry__0_i_10_n_1;
  wire half_duty_new4_carry__0_i_10_n_2;
  wire half_duty_new4_carry__0_i_10_n_3;
  wire half_duty_new4_carry__0_i_11_n_0;
  wire half_duty_new4_carry__0_i_11_n_1;
  wire half_duty_new4_carry__0_i_11_n_2;
  wire half_duty_new4_carry__0_i_11_n_3;
  wire half_duty_new4_carry__0_i_12_n_0;
  wire half_duty_new4_carry__0_i_12_n_1;
  wire half_duty_new4_carry__0_i_12_n_2;
  wire half_duty_new4_carry__0_i_12_n_3;
  wire half_duty_new4_carry__0_i_13_n_0;
  wire half_duty_new4_carry__0_i_14_n_0;
  wire half_duty_new4_carry__0_i_15_n_0;
  wire half_duty_new4_carry__0_i_16_n_0;
  wire half_duty_new4_carry__0_i_17_n_0;
  wire half_duty_new4_carry__0_i_18_n_0;
  wire half_duty_new4_carry__0_i_19_n_0;
  wire half_duty_new4_carry__0_i_1__1_n_0;
  wire half_duty_new4_carry__0_i_20_n_0;
  wire half_duty_new4_carry__0_i_21_n_0;
  wire half_duty_new4_carry__0_i_22_n_0;
  wire half_duty_new4_carry__0_i_23_n_0;
  wire half_duty_new4_carry__0_i_24_n_0;
  wire half_duty_new4_carry__0_i_25_n_0;
  wire half_duty_new4_carry__0_i_26_n_0;
  wire half_duty_new4_carry__0_i_27_n_0;
  wire half_duty_new4_carry__0_i_28_n_0;
  wire half_duty_new4_carry__0_i_2__1_n_0;
  wire half_duty_new4_carry__0_i_3__1_n_0;
  wire half_duty_new4_carry__0_i_4__1_n_0;
  wire half_duty_new4_carry__0_i_5__1_n_0;
  wire half_duty_new4_carry__0_i_6__1_n_0;
  wire half_duty_new4_carry__0_i_7__1_n_0;
  wire half_duty_new4_carry__0_i_8__1_n_0;
  wire half_duty_new4_carry__0_i_9_n_0;
  wire half_duty_new4_carry__0_i_9_n_1;
  wire half_duty_new4_carry__0_i_9_n_2;
  wire half_duty_new4_carry__0_i_9_n_3;
  wire half_duty_new4_carry__0_n_0;
  wire half_duty_new4_carry__0_n_1;
  wire half_duty_new4_carry__0_n_2;
  wire half_duty_new4_carry__0_n_3;
  wire half_duty_new4_carry__1_i_1_n_0;
  wire half_duty_new4_carry__1_i_2__1_n_0;
  wire half_duty_new4_carry__1_i_3_n_0;
  wire half_duty_new4_carry__1_i_4_n_0;
  wire half_duty_new4_carry__1_i_5__1_n_0;
  wire half_duty_new4_carry__1_i_6__1_n_0;
  wire half_duty_new4_carry__1_i_7_n_3;
  wire half_duty_new4_carry__1_i_8_n_0;
  wire half_duty_new4_carry__1_i_9_n_0;
  wire half_duty_new4_carry__1_n_0;
  wire half_duty_new4_carry__1_n_1;
  wire half_duty_new4_carry__1_n_2;
  wire half_duty_new4_carry__1_n_3;
  wire half_duty_new4_carry__2_i_1_n_0;
  wire half_duty_new4_carry__2_i_2_n_0;
  wire half_duty_new4_carry__2_i_3_n_0;
  wire half_duty_new4_carry__2_i_4_n_0;
  wire half_duty_new4_carry__2_n_0;
  wire half_duty_new4_carry__2_n_1;
  wire half_duty_new4_carry__2_n_2;
  wire half_duty_new4_carry__2_n_3;
  wire half_duty_new4_carry_i_10_n_0;
  wire half_duty_new4_carry_i_10_n_1;
  wire half_duty_new4_carry_i_10_n_2;
  wire half_duty_new4_carry_i_10_n_3;
  wire half_duty_new4_carry_i_11_n_0;
  wire half_duty_new4_carry_i_11_n_1;
  wire half_duty_new4_carry_i_11_n_2;
  wire half_duty_new4_carry_i_11_n_3;
  wire half_duty_new4_carry_i_12_n_0;
  wire half_duty_new4_carry_i_12_n_1;
  wire half_duty_new4_carry_i_12_n_2;
  wire half_duty_new4_carry_i_12_n_3;
  wire half_duty_new4_carry_i_13_n_0;
  wire half_duty_new4_carry_i_13_n_1;
  wire half_duty_new4_carry_i_13_n_2;
  wire half_duty_new4_carry_i_13_n_3;
  wire half_duty_new4_carry_i_14_n_0;
  wire half_duty_new4_carry_i_15_n_0;
  wire half_duty_new4_carry_i_16_n_0;
  wire half_duty_new4_carry_i_17_n_0;
  wire half_duty_new4_carry_i_18_n_0;
  wire half_duty_new4_carry_i_19_n_0;
  wire half_duty_new4_carry_i_1__1_n_0;
  wire half_duty_new4_carry_i_20_n_0;
  wire half_duty_new4_carry_i_21_n_0;
  wire half_duty_new4_carry_i_22_n_0;
  wire half_duty_new4_carry_i_23_n_0;
  wire half_duty_new4_carry_i_24_n_0;
  wire half_duty_new4_carry_i_25_n_0;
  wire half_duty_new4_carry_i_26_n_0;
  wire half_duty_new4_carry_i_27_n_0;
  wire half_duty_new4_carry_i_28_n_0;
  wire half_duty_new4_carry_i_29_n_0;
  wire half_duty_new4_carry_i_2__1_n_0;
  wire half_duty_new4_carry_i_30_n_0;
  wire half_duty_new4_carry_i_31_n_0;
  wire half_duty_new4_carry_i_31_n_1;
  wire half_duty_new4_carry_i_31_n_2;
  wire half_duty_new4_carry_i_31_n_3;
  wire half_duty_new4_carry_i_32_n_0;
  wire half_duty_new4_carry_i_33_n_0;
  wire half_duty_new4_carry_i_34_n_0;
  wire half_duty_new4_carry_i_35_n_0;
  wire half_duty_new4_carry_i_36_n_0;
  wire half_duty_new4_carry_i_36_n_1;
  wire half_duty_new4_carry_i_36_n_2;
  wire half_duty_new4_carry_i_36_n_3;
  wire half_duty_new4_carry_i_37_n_0;
  wire half_duty_new4_carry_i_38_n_0;
  wire half_duty_new4_carry_i_39_n_0;
  wire half_duty_new4_carry_i_3__1_n_0;
  wire half_duty_new4_carry_i_40_n_0;
  wire half_duty_new4_carry_i_41_n_0;
  wire half_duty_new4_carry_i_42_n_0;
  wire half_duty_new4_carry_i_43_n_0;
  wire half_duty_new4_carry_i_44_n_0;
  wire half_duty_new4_carry_i_45_n_0;
  wire half_duty_new4_carry_i_4_n_0;
  wire half_duty_new4_carry_i_5__1_n_0;
  wire half_duty_new4_carry_i_6__1_n_0;
  wire half_duty_new4_carry_i_7__1_n_0;
  wire half_duty_new4_carry_i_8__1_n_0;
  wire half_duty_new4_carry_i_9_n_0;
  wire half_duty_new4_carry_i_9_n_1;
  wire half_duty_new4_carry_i_9_n_2;
  wire half_duty_new4_carry_i_9_n_3;
  wire half_duty_new4_carry_n_0;
  wire half_duty_new4_carry_n_1;
  wire half_duty_new4_carry_n_2;
  wire half_duty_new4_carry_n_3;
  wire [30:12]half_duty_new6__0;
  wire half_duty_new6_i_10_n_0;
  wire half_duty_new6_i_11_n_0;
  wire half_duty_new6_i_12_n_0;
  wire half_duty_new6_i_1_n_0;
  wire half_duty_new6_i_2_n_0;
  wire half_duty_new6_i_3_n_0;
  wire half_duty_new6_i_4_n_0;
  wire half_duty_new6_i_5_n_0;
  wire half_duty_new6_i_6_n_0;
  wire half_duty_new6_i_7_n_0;
  wire half_duty_new6_i_8_n_0;
  wire half_duty_new6_i_9_n_0;
  wire half_duty_new6_n_100;
  wire half_duty_new6_n_101;
  wire half_duty_new6_n_102;
  wire half_duty_new6_n_103;
  wire half_duty_new6_n_104;
  wire half_duty_new6_n_105;
  wire half_duty_new6_n_72;
  wire half_duty_new6_n_73;
  wire half_duty_new6_n_74;
  wire half_duty_new6_n_75;
  wire half_duty_new6_n_76;
  wire half_duty_new6_n_77;
  wire half_duty_new6_n_78;
  wire half_duty_new6_n_79;
  wire half_duty_new6_n_80;
  wire half_duty_new6_n_81;
  wire half_duty_new6_n_82;
  wire half_duty_new6_n_83;
  wire half_duty_new6_n_84;
  wire half_duty_new6_n_85;
  wire half_duty_new6_n_86;
  wire half_duty_new6_n_87;
  wire half_duty_new6_n_88;
  wire half_duty_new6_n_89;
  wire half_duty_new6_n_90;
  wire half_duty_new6_n_91;
  wire half_duty_new6_n_92;
  wire half_duty_new6_n_93;
  wire half_duty_new6_n_94;
  wire half_duty_new6_n_95;
  wire half_duty_new6_n_96;
  wire half_duty_new6_n_97;
  wire half_duty_new6_n_98;
  wire half_duty_new6_n_99;
  wire half_duty_new7;
  wire half_duty_new7_carry__0_i_1_n_0;
  wire half_duty_new7_carry__0_i_2_n_0;
  wire half_duty_new7_carry__0_i_3_n_0;
  wire half_duty_new7_carry__0_i_4_n_0;
  wire half_duty_new7_carry__0_i_5__1_n_0;
  wire half_duty_new7_carry__0_i_6__1_n_0;
  wire half_duty_new7_carry__0_i_7__1_n_0;
  wire half_duty_new7_carry__0_i_8__1_n_0;
  wire half_duty_new7_carry__0_n_0;
  wire half_duty_new7_carry__0_n_1;
  wire half_duty_new7_carry__0_n_2;
  wire half_duty_new7_carry__0_n_3;
  wire half_duty_new7_carry__1_i_1_n_0;
  wire half_duty_new7_carry__1_i_2_n_0;
  wire half_duty_new7_carry__1_i_3_n_0;
  wire half_duty_new7_carry__1_i_4_n_0;
  wire half_duty_new7_carry__1_i_5__1_n_0;
  wire half_duty_new7_carry__1_i_6__1_n_0;
  wire half_duty_new7_carry__1_i_7__1_n_0;
  wire half_duty_new7_carry__1_i_8__1_n_0;
  wire half_duty_new7_carry__1_n_0;
  wire half_duty_new7_carry__1_n_1;
  wire half_duty_new7_carry__1_n_2;
  wire half_duty_new7_carry__1_n_3;
  wire half_duty_new7_carry__2_i_1__1_n_0;
  wire half_duty_new7_carry__2_i_2_n_0;
  wire half_duty_new7_carry__2_i_3_n_0;
  wire half_duty_new7_carry__2_i_4_n_0;
  wire half_duty_new7_carry__2_i_5_n_0;
  wire half_duty_new7_carry__2_i_6_n_0;
  wire half_duty_new7_carry__2_i_7_n_0;
  wire half_duty_new7_carry__2_i_8_n_0;
  wire half_duty_new7_carry__2_n_1;
  wire half_duty_new7_carry__2_n_2;
  wire half_duty_new7_carry__2_n_3;
  wire half_duty_new7_carry_i_1_n_0;
  wire half_duty_new7_carry_i_2_n_0;
  wire half_duty_new7_carry_i_3_n_0;
  wire half_duty_new7_carry_i_4_n_0;
  wire half_duty_new7_carry_i_5__1_n_0;
  wire half_duty_new7_carry_i_6__1_n_0;
  wire half_duty_new7_carry_i_7__1_n_0;
  wire half_duty_new7_carry_i_8__1_n_0;
  wire half_duty_new7_carry_n_0;
  wire half_duty_new7_carry_n_1;
  wire half_duty_new7_carry_n_2;
  wire half_duty_new7_carry_n_3;
  wire \half_duty_new[0]_i_2_n_0 ;
  wire \half_duty_new[10]_i_2_n_0 ;
  wire \half_duty_new[11]_i_2_n_0 ;
  wire \half_duty_new[11]_i_4_n_0 ;
  wire \half_duty_new[11]_i_5_n_0 ;
  wire \half_duty_new[11]_i_6_n_0 ;
  wire \half_duty_new[11]_i_7_n_0 ;
  wire \half_duty_new[12]_i_3_n_0 ;
  wire \half_duty_new[12]_i_4_n_0 ;
  wire \half_duty_new[12]_i_5_n_0 ;
  wire \half_duty_new[12]_i_6_n_0 ;
  wire \half_duty_new[12]_i_7_n_0 ;
  wire \half_duty_new[13]_i_2_n_0 ;
  wire \half_duty_new[14]_i_2_n_0 ;
  wire \half_duty_new[15]_i_2_n_0 ;
  wire \half_duty_new[15]_i_4_n_0 ;
  wire \half_duty_new[15]_i_5_n_0 ;
  wire \half_duty_new[15]_i_6_n_0 ;
  wire \half_duty_new[15]_i_7_n_0 ;
  wire \half_duty_new[16]_i_3_n_0 ;
  wire \half_duty_new[16]_i_4_n_0 ;
  wire \half_duty_new[16]_i_5_n_0 ;
  wire \half_duty_new[16]_i_6_n_0 ;
  wire \half_duty_new[16]_i_7_n_0 ;
  wire \half_duty_new[17]_i_2_n_0 ;
  wire \half_duty_new[18]_i_10_n_0 ;
  wire \half_duty_new[18]_i_11_n_0 ;
  wire \half_duty_new[18]_i_12_n_0 ;
  wire \half_duty_new[18]_i_1_n_0 ;
  wire \half_duty_new[18]_i_6_n_0 ;
  wire \half_duty_new[18]_i_7_n_0 ;
  wire \half_duty_new[18]_i_8_n_0 ;
  wire \half_duty_new[18]_i_9_n_0 ;
  wire \half_duty_new[1]_i_2_n_0 ;
  wire \half_duty_new[2]_i_2_n_0 ;
  wire \half_duty_new[3]_i_2_n_0 ;
  wire \half_duty_new[3]_i_4_n_0 ;
  wire \half_duty_new[3]_i_5_n_0 ;
  wire \half_duty_new[3]_i_6_n_0 ;
  wire \half_duty_new[3]_i_7_n_0 ;
  wire \half_duty_new[3]_i_8_n_0 ;
  wire \half_duty_new[4]_i_3_n_0 ;
  wire \half_duty_new[4]_i_4_n_0 ;
  wire \half_duty_new[4]_i_5_n_0 ;
  wire \half_duty_new[4]_i_6_n_0 ;
  wire \half_duty_new[4]_i_7_n_0 ;
  wire \half_duty_new[4]_i_8_n_0 ;
  wire \half_duty_new[5]_i_2_n_0 ;
  wire \half_duty_new[6]_i_2_n_0 ;
  wire \half_duty_new[7]_i_2_n_0 ;
  wire \half_duty_new[7]_i_4_n_0 ;
  wire \half_duty_new[7]_i_5_n_0 ;
  wire \half_duty_new[7]_i_6_n_0 ;
  wire \half_duty_new[7]_i_7_n_0 ;
  wire \half_duty_new[8]_i_3_n_0 ;
  wire \half_duty_new[8]_i_4_n_0 ;
  wire \half_duty_new[8]_i_5_n_0 ;
  wire \half_duty_new[8]_i_6_n_0 ;
  wire \half_duty_new[8]_i_7_n_0 ;
  wire \half_duty_new[9]_i_2_n_0 ;
  wire \half_duty_new_reg[11]_i_3_n_0 ;
  wire \half_duty_new_reg[11]_i_3_n_1 ;
  wire \half_duty_new_reg[11]_i_3_n_2 ;
  wire \half_duty_new_reg[11]_i_3_n_3 ;
  wire \half_duty_new_reg[12]_i_2_n_0 ;
  wire \half_duty_new_reg[12]_i_2_n_1 ;
  wire \half_duty_new_reg[12]_i_2_n_2 ;
  wire \half_duty_new_reg[12]_i_2_n_3 ;
  wire \half_duty_new_reg[15]_i_3_n_0 ;
  wire \half_duty_new_reg[15]_i_3_n_1 ;
  wire \half_duty_new_reg[15]_i_3_n_2 ;
  wire \half_duty_new_reg[15]_i_3_n_3 ;
  wire \half_duty_new_reg[16]_i_2_n_0 ;
  wire \half_duty_new_reg[16]_i_2_n_1 ;
  wire \half_duty_new_reg[16]_i_2_n_2 ;
  wire \half_duty_new_reg[16]_i_2_n_3 ;
  wire \half_duty_new_reg[18]_i_3_n_3 ;
  wire \half_duty_new_reg[18]_i_4_n_1 ;
  wire \half_duty_new_reg[18]_i_4_n_3 ;
  wire \half_duty_new_reg[18]_i_5_n_2 ;
  wire \half_duty_new_reg[18]_i_5_n_3 ;
  wire \half_duty_new_reg[3]_i_3_n_0 ;
  wire \half_duty_new_reg[3]_i_3_n_1 ;
  wire \half_duty_new_reg[3]_i_3_n_2 ;
  wire \half_duty_new_reg[3]_i_3_n_3 ;
  wire \half_duty_new_reg[4]_i_2_n_0 ;
  wire \half_duty_new_reg[4]_i_2_n_1 ;
  wire \half_duty_new_reg[4]_i_2_n_2 ;
  wire \half_duty_new_reg[4]_i_2_n_3 ;
  wire \half_duty_new_reg[7]_i_3_n_0 ;
  wire \half_duty_new_reg[7]_i_3_n_1 ;
  wire \half_duty_new_reg[7]_i_3_n_2 ;
  wire \half_duty_new_reg[7]_i_3_n_3 ;
  wire \half_duty_new_reg[8]_i_2_n_0 ;
  wire \half_duty_new_reg[8]_i_2_n_1 ;
  wire \half_duty_new_reg[8]_i_2_n_2 ;
  wire \half_duty_new_reg[8]_i_2_n_3 ;
  wire \half_duty_reg_n_0_[0] ;
  wire \half_duty_reg_n_0_[10] ;
  wire \half_duty_reg_n_0_[11] ;
  wire \half_duty_reg_n_0_[12] ;
  wire \half_duty_reg_n_0_[13] ;
  wire \half_duty_reg_n_0_[14] ;
  wire \half_duty_reg_n_0_[15] ;
  wire \half_duty_reg_n_0_[16] ;
  wire \half_duty_reg_n_0_[17] ;
  wire \half_duty_reg_n_0_[18] ;
  wire \half_duty_reg_n_0_[1] ;
  wire \half_duty_reg_n_0_[2] ;
  wire \half_duty_reg_n_0_[3] ;
  wire \half_duty_reg_n_0_[4] ;
  wire \half_duty_reg_n_0_[5] ;
  wire \half_duty_reg_n_0_[6] ;
  wire \half_duty_reg_n_0_[7] ;
  wire \half_duty_reg_n_0_[8] ;
  wire \half_duty_reg_n_0_[9] ;
  wire [18:0]p_0_in;
  wire [18:0]p_1_in;
  wire pwm_out_buf0_carry__0_i_1_n_0;
  wire pwm_out_buf0_carry__0_i_2_n_0;
  wire pwm_out_buf0_carry__0_i_3_n_0;
  wire pwm_out_buf0_carry__0_i_4_n_3;
  wire pwm_out_buf0_carry__0_i_5_n_0;
  wire pwm_out_buf0_carry__0_i_5_n_1;
  wire pwm_out_buf0_carry__0_i_5_n_2;
  wire pwm_out_buf0_carry__0_i_5_n_3;
  wire pwm_out_buf0_carry__0_n_2;
  wire pwm_out_buf0_carry__0_n_3;
  wire pwm_out_buf0_carry_i_1_n_0;
  wire pwm_out_buf0_carry_i_2_n_0;
  wire pwm_out_buf0_carry_i_3_n_0;
  wire pwm_out_buf0_carry_i_4_n_0;
  wire pwm_out_buf0_carry_i_5__1_n_0;
  wire pwm_out_buf0_carry_i_5__1_n_1;
  wire pwm_out_buf0_carry_i_5__1_n_2;
  wire pwm_out_buf0_carry_i_5__1_n_3;
  wire pwm_out_buf0_carry_i_6__1_n_0;
  wire pwm_out_buf0_carry_i_6__1_n_1;
  wire pwm_out_buf0_carry_i_6__1_n_2;
  wire pwm_out_buf0_carry_i_6__1_n_3;
  wire pwm_out_buf0_carry_i_7_n_0;
  wire pwm_out_buf0_carry_i_7_n_1;
  wire pwm_out_buf0_carry_i_7_n_2;
  wire pwm_out_buf0_carry_i_7_n_3;
  wire pwm_out_buf0_carry_n_0;
  wire pwm_out_buf0_carry_n_1;
  wire pwm_out_buf0_carry_n_2;
  wire pwm_out_buf0_carry_n_3;
  wire [19:1]pwm_out_buf1;
  wire pwm_out_buf1_carry__0_i_1_n_0;
  wire pwm_out_buf1_carry__0_i_2_n_0;
  wire pwm_out_buf1_carry__0_i_3_n_0;
  wire pwm_out_buf1_carry__0_n_2;
  wire pwm_out_buf1_carry__0_n_3;
  wire pwm_out_buf1_carry_i_1_n_0;
  wire pwm_out_buf1_carry_i_2_n_0;
  wire pwm_out_buf1_carry_i_3_n_0;
  wire pwm_out_buf1_carry_i_4_n_0;
  wire pwm_out_buf1_carry_n_0;
  wire pwm_out_buf1_carry_n_1;
  wire pwm_out_buf1_carry_n_2;
  wire pwm_out_buf1_carry_n_3;
  wire [0:0]pwm_out_buf_reg_0;
  wire pwm_out_buf_reg_1;
  wire s00_axi_aclk;
  wire servo_pwm_out;
  wire [0:0]\slv_reg1_reg[10] ;
  wire [0:0]\slv_reg1_reg[10]_0 ;
  wire [11:0]\slv_reg1_reg[11] ;
  wire [3:2]NLW_count0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new4_carry_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new4_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new4_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_half_duty_new4_carry__1_i_7_CO_UNCONNECTED;
  wire [3:2]NLW_half_duty_new4_carry__1_i_7_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new4_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_half_duty_new4_carry_i_13_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new4_carry_i_31_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new4_carry_i_36_O_UNCONNECTED;
  wire NLW_half_duty_new6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_half_duty_new6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_half_duty_new6_OVERFLOW_UNCONNECTED;
  wire NLW_half_duty_new6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_half_duty_new6_PATTERNDETECT_UNCONNECTED;
  wire NLW_half_duty_new6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_half_duty_new6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_half_duty_new6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_half_duty_new6_CARRYOUT_UNCONNECTED;
  wire [47:34]NLW_half_duty_new6_P_UNCONNECTED;
  wire [47:0]NLW_half_duty_new6_PCOUT_UNCONNECTED;
  wire [3:0]NLW_half_duty_new7_carry_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new7_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new7_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new7_carry__2_O_UNCONNECTED;
  wire [3:1]\NLW_half_duty_new_reg[18]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[18]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_half_duty_new_reg[18]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[18]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[18]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_half_duty_new_reg[18]_i_5_O_UNCONNECTED ;
  wire [3:0]NLW_pwm_out_buf0_carry_O_UNCONNECTED;
  wire [3:3]NLW_pwm_out_buf0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_out_buf0_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_pwm_out_buf0_carry__0_i_4_CO_UNCONNECTED;
  wire [3:2]NLW_pwm_out_buf0_carry__0_i_4_O_UNCONNECTED;
  wire [3:0]NLW_pwm_out_buf1_carry_O_UNCONNECTED;
  wire [3:3]NLW_pwm_out_buf1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_out_buf1_carry__0_O_UNCONNECTED;

  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({NLW_count0_carry__3_CO_UNCONNECTED[3:2],count0_carry__3_n_2,count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__3_O_UNCONNECTED[3],data0[19:17]}),
        .S({1'b0,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .O(count[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[10]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[10]),
        .O(count[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[11]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[11]),
        .O(count[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[12]),
        .O(count[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[13]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[13]),
        .O(count[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[14]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[14]),
        .O(count[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[15]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[15]),
        .O(count[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[16]),
        .O(count[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[17]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[17]),
        .O(count[17]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[18]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[18]),
        .O(count[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[19]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[19]),
        .O(count[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \count[19]_i_2 
       (.I0(\count[19]_i_3_n_0 ),
        .I1(\count[19]_i_4_n_0 ),
        .I2(\count_reg_n_0_[19] ),
        .I3(\count_reg_n_0_[18] ),
        .I4(\count[19]_i_5_n_0 ),
        .I5(\count[19]_i_6_n_0 ),
        .O(\count[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \count[19]_i_3 
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[7] ),
        .I2(\count_reg_n_0_[6] ),
        .O(\count[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \count[19]_i_4 
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .I2(\count_reg_n_0_[9] ),
        .O(\count[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \count[19]_i_5 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .O(\count[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \count[19]_i_6 
       (.I0(\count[19]_i_7_n_0 ),
        .I1(\count[19]_i_8_n_0 ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[2] ),
        .O(\count[19]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \count[19]_i_7 
       (.I0(\count_reg_n_0_[17] ),
        .I1(\count_reg_n_0_[16] ),
        .I2(\count_reg_n_0_[15] ),
        .O(\count[19]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \count[19]_i_8 
       (.I0(\count_reg_n_0_[14] ),
        .I1(\count_reg_n_0_[13] ),
        .I2(\count_reg_n_0_[12] ),
        .O(\count[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[1]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[1]),
        .O(count[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[2]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[2]),
        .O(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[3]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[3]),
        .O(count[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[4]),
        .O(count[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[5]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[5]),
        .O(count[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[6]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[6]),
        .O(count[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[7]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[7]),
        .O(count[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[8]),
        .O(count[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[9]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(data0[9]),
        .O(count[9]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[0]),
        .Q(\count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[10]),
        .Q(\count_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[11]),
        .Q(\count_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[12]),
        .Q(\count_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[13]),
        .Q(\count_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[14]),
        .Q(\count_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[15]),
        .Q(\count_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[16]),
        .Q(\count_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[17]),
        .Q(\count_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[18]),
        .Q(\count_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[19]),
        .Q(\count_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[1]),
        .Q(\count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[2]),
        .Q(\count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[3]),
        .Q(\count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[4]),
        .Q(\count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[5]),
        .Q(\count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[6]),
        .Q(\count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[7]),
        .Q(\count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[8]),
        .Q(\count_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[9]),
        .Q(\count_reg_n_0_[9] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b1)) 
    disabled_reg
       (.CLR(disabled0),
        .D(disabled02_out),
        .G(disabled02_out),
        .GE(1'b1),
        .Q(disabled));
  LUT3 #(
    .INIT(8'h07)) 
    disabled_reg_i_1__1
       (.I0(Q),
        .I1(enable),
        .I2(servo_pwm_out),
        .O(disabled02_out));
  LUT4 #(
    .INIT(16'h4000)) 
    disabled_reg_i_2__1
       (.I0(servo_pwm_out),
        .I1(disabled),
        .I2(Q),
        .I3(enable),
        .O(disabled0));
  LUT2 #(
    .INIT(4'h1)) 
    \half_duty[18]_i_1 
       (.I0(\count[19]_i_2_n_0 ),
        .I1(disabled),
        .O(half_duty0));
  CARRY4 half_duty_new4_carry
       (.CI(1'b0),
        .CO({half_duty_new4_carry_n_0,half_duty_new4_carry_n_1,half_duty_new4_carry_n_2,half_duty_new4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({half_duty_new4_carry_i_1__1_n_0,half_duty_new4_carry_i_2__1_n_0,half_duty_new4_carry_i_3__1_n_0,half_duty_new4_carry_i_4_n_0}),
        .O(NLW_half_duty_new4_carry_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry_i_5__1_n_0,half_duty_new4_carry_i_6__1_n_0,half_duty_new4_carry_i_7__1_n_0,half_duty_new4_carry_i_8__1_n_0}));
  CARRY4 half_duty_new4_carry__0
       (.CI(half_duty_new4_carry_n_0),
        .CO({half_duty_new4_carry__0_n_0,half_duty_new4_carry__0_n_1,half_duty_new4_carry__0_n_2,half_duty_new4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({half_duty_new4_carry__0_i_1__1_n_0,half_duty_new4_carry__0_i_2__1_n_0,half_duty_new4_carry__0_i_3__1_n_0,half_duty_new4_carry__0_i_4__1_n_0}),
        .O(NLW_half_duty_new4_carry__0_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry__0_i_5__1_n_0,half_duty_new4_carry__0_i_6__1_n_0,half_duty_new4_carry__0_i_7__1_n_0,half_duty_new4_carry__0_i_8__1_n_0}));
  CARRY4 half_duty_new4_carry__0_i_10
       (.CI(half_duty_new4_carry__0_i_12_n_0),
        .CO({half_duty_new4_carry__0_i_10_n_0,half_duty_new4_carry__0_i_10_n_1,half_duty_new4_carry__0_i_10_n_2,half_duty_new4_carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new6__0[28:25]),
        .S({half_duty_new4_carry__0_i_17_n_0,half_duty_new4_carry__0_i_18_n_0,half_duty_new4_carry__0_i_19_n_0,half_duty_new4_carry__0_i_20_n_0}));
  CARRY4 half_duty_new4_carry__0_i_11
       (.CI(half_duty_new4_carry_i_9_n_0),
        .CO({half_duty_new4_carry__0_i_11_n_0,half_duty_new4_carry__0_i_11_n_1,half_duty_new4_carry__0_i_11_n_2,half_duty_new4_carry__0_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new4[12:9]),
        .S({half_duty_new4_carry__0_i_21_n_0,half_duty_new4_carry__0_i_22_n_0,half_duty_new4_carry__0_i_23_n_0,half_duty_new4_carry__0_i_24_n_0}));
  CARRY4 half_duty_new4_carry__0_i_12
       (.CI(half_duty_new4_carry_i_10_n_0),
        .CO({half_duty_new4_carry__0_i_12_n_0,half_duty_new4_carry__0_i_12_n_1,half_duty_new4_carry__0_i_12_n_2,half_duty_new4_carry__0_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new6__0[24:21]),
        .S({half_duty_new4_carry__0_i_25_n_0,half_duty_new4_carry__0_i_26_n_0,half_duty_new4_carry__0_i_27_n_0,half_duty_new4_carry__0_i_28_n_0}));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry__0_i_13
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[28]),
        .I2(half_duty_new6_n_77),
        .O(half_duty_new4_carry__0_i_13_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry__0_i_14
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[27]),
        .I2(half_duty_new6_n_78),
        .O(half_duty_new4_carry__0_i_14_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry__0_i_15
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[26]),
        .I2(half_duty_new6_n_79),
        .O(half_duty_new4_carry__0_i_15_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry__0_i_16
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[25]),
        .I2(half_duty_new6_n_80),
        .O(half_duty_new4_carry__0_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry__0_i_17
       (.I0(half_duty_new6_n_77),
        .O(half_duty_new4_carry__0_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry__0_i_18
       (.I0(half_duty_new6_n_78),
        .O(half_duty_new4_carry__0_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry__0_i_19
       (.I0(half_duty_new6_n_79),
        .O(half_duty_new4_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD8D8DD88)) 
    half_duty_new4_carry__0_i_1__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new4[14]),
        .I2(half_duty_new6_n_79),
        .I3(half_duty_new6__0[26]),
        .I4(half_duty_new7),
        .I5(\half_duty_new[14]_i_2_n_0 ),
        .O(half_duty_new4_carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry__0_i_20
       (.I0(half_duty_new6_n_80),
        .O(half_duty_new4_carry__0_i_20_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry__0_i_21
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[24]),
        .I2(half_duty_new6_n_81),
        .O(half_duty_new4_carry__0_i_21_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry__0_i_22
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[23]),
        .I2(half_duty_new6_n_82),
        .O(half_duty_new4_carry__0_i_22_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry__0_i_23
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[22]),
        .I2(half_duty_new6_n_83),
        .O(half_duty_new4_carry__0_i_23_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry__0_i_24
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[21]),
        .I2(half_duty_new6_n_84),
        .O(half_duty_new4_carry__0_i_24_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry__0_i_25
       (.I0(half_duty_new6_n_81),
        .O(half_duty_new4_carry__0_i_25_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry__0_i_26
       (.I0(half_duty_new6_n_82),
        .O(half_duty_new4_carry__0_i_26_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry__0_i_27
       (.I0(half_duty_new6_n_83),
        .O(half_duty_new4_carry__0_i_27_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry__0_i_28
       (.I0(half_duty_new6_n_84),
        .O(half_duty_new4_carry__0_i_28_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD8D8DD88)) 
    half_duty_new4_carry__0_i_2__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new4[12]),
        .I2(half_duty_new6_n_81),
        .I3(half_duty_new6__0[24]),
        .I4(half_duty_new7),
        .I5(\half_duty_new[12]_i_3_n_0 ),
        .O(half_duty_new4_carry__0_i_2__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD8D8DD88)) 
    half_duty_new4_carry__0_i_3__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new4[10]),
        .I2(half_duty_new6_n_83),
        .I3(half_duty_new6__0[22]),
        .I4(half_duty_new7),
        .I5(\half_duty_new[10]_i_2_n_0 ),
        .O(half_duty_new4_carry__0_i_3__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD8D8DD88)) 
    half_duty_new4_carry__0_i_4__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new4[8]),
        .I2(half_duty_new6_n_85),
        .I3(half_duty_new6__0[20]),
        .I4(half_duty_new7),
        .I5(\half_duty_new[8]_i_3_n_0 ),
        .O(half_duty_new4_carry__0_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h000000000145ABEF)) 
    half_duty_new4_carry__0_i_5__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[26]),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[14]),
        .I5(\half_duty_new[14]_i_2_n_0 ),
        .O(half_duty_new4_carry__0_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h000000000145ABEF)) 
    half_duty_new4_carry__0_i_6__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[24]),
        .I3(half_duty_new6_n_81),
        .I4(half_duty_new4[12]),
        .I5(\half_duty_new[12]_i_3_n_0 ),
        .O(half_duty_new4_carry__0_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h000000000145ABEF)) 
    half_duty_new4_carry__0_i_7__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[22]),
        .I3(half_duty_new6_n_83),
        .I4(half_duty_new4[10]),
        .I5(\half_duty_new[10]_i_2_n_0 ),
        .O(half_duty_new4_carry__0_i_7__1_n_0));
  LUT6 #(
    .INIT(64'h000000000145ABEF)) 
    half_duty_new4_carry__0_i_8__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[20]),
        .I3(half_duty_new6_n_85),
        .I4(half_duty_new4[8]),
        .I5(\half_duty_new[8]_i_3_n_0 ),
        .O(half_duty_new4_carry__0_i_8__1_n_0));
  CARRY4 half_duty_new4_carry__0_i_9
       (.CI(half_duty_new4_carry__0_i_11_n_0),
        .CO({half_duty_new4_carry__0_i_9_n_0,half_duty_new4_carry__0_i_9_n_1,half_duty_new4_carry__0_i_9_n_2,half_duty_new4_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new4[16:13]),
        .S({half_duty_new4_carry__0_i_13_n_0,half_duty_new4_carry__0_i_14_n_0,half_duty_new4_carry__0_i_15_n_0,half_duty_new4_carry__0_i_16_n_0}));
  CARRY4 half_duty_new4_carry__1
       (.CI(half_duty_new4_carry__0_n_0),
        .CO({half_duty_new4_carry__1_n_0,half_duty_new4_carry__1_n_1,half_duty_new4_carry__1_n_2,half_duty_new4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,half_duty_new4_carry__1_i_1_n_0,half_duty_new4_carry__1_i_2__1_n_0}),
        .O(NLW_half_duty_new4_carry__1_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry__1_i_3_n_0,half_duty_new4_carry__1_i_4_n_0,half_duty_new4_carry__1_i_5__1_n_0,half_duty_new4_carry__1_i_6__1_n_0}));
  LUT6 #(
    .INIT(64'hAAFFFCFCAAFF0C0C)) 
    half_duty_new4_carry__1_i_1
       (.I0(half_duty_new4[18]),
        .I1(half_duty_new6__0[30]),
        .I2(half_duty_new7),
        .I3(\half_duty_new_reg[18]_i_4_n_1 ),
        .I4(half_duty_new6_n_74),
        .I5(half_duty_new6_n_75),
        .O(half_duty_new4_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD8D8DD88)) 
    half_duty_new4_carry__1_i_2__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new4[16]),
        .I2(half_duty_new6_n_77),
        .I3(half_duty_new6__0[28]),
        .I4(half_duty_new7),
        .I5(\half_duty_new[16]_i_3_n_0 ),
        .O(half_duty_new4_carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__1_i_3
       (.I0(\half_duty_new_reg[18]_i_4_n_1 ),
        .I1(half_duty_new6_n_74),
        .O(half_duty_new4_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__1_i_4
       (.I0(\half_duty_new_reg[18]_i_4_n_1 ),
        .I1(half_duty_new6_n_74),
        .O(half_duty_new4_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h0F0011110F00BBBB)) 
    half_duty_new4_carry__1_i_5__1
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[30]),
        .I2(half_duty_new4[18]),
        .I3(\half_duty_new_reg[18]_i_4_n_1 ),
        .I4(half_duty_new6_n_74),
        .I5(half_duty_new6_n_75),
        .O(half_duty_new4_carry__1_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h000000000145ABEF)) 
    half_duty_new4_carry__1_i_6__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[28]),
        .I3(half_duty_new6_n_77),
        .I4(half_duty_new4[16]),
        .I5(\half_duty_new[16]_i_3_n_0 ),
        .O(half_duty_new4_carry__1_i_6__1_n_0));
  CARRY4 half_duty_new4_carry__1_i_7
       (.CI(half_duty_new4_carry__0_i_10_n_0),
        .CO({NLW_half_duty_new4_carry__1_i_7_CO_UNCONNECTED[3:1],half_duty_new4_carry__1_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_half_duty_new4_carry__1_i_7_O_UNCONNECTED[3:2],half_duty_new6__0[30:29]}),
        .S({1'b0,1'b0,half_duty_new4_carry__1_i_8_n_0,half_duty_new4_carry__1_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry__1_i_8
       (.I0(half_duty_new6_n_75),
        .O(half_duty_new4_carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry__1_i_9
       (.I0(half_duty_new6_n_76),
        .O(half_duty_new4_carry__1_i_9_n_0));
  CARRY4 half_duty_new4_carry__2
       (.CI(half_duty_new4_carry__1_n_0),
        .CO({half_duty_new4_carry__2_n_0,half_duty_new4_carry__2_n_1,half_duty_new4_carry__2_n_2,half_duty_new4_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_half_duty_new4_carry__2_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry__2_i_1_n_0,half_duty_new4_carry__2_i_2_n_0,half_duty_new4_carry__2_i_3_n_0,half_duty_new4_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__2_i_1
       (.I0(\half_duty_new_reg[18]_i_4_n_1 ),
        .I1(half_duty_new6_n_74),
        .O(half_duty_new4_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__2_i_2
       (.I0(\half_duty_new_reg[18]_i_4_n_1 ),
        .I1(half_duty_new6_n_74),
        .O(half_duty_new4_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__2_i_3
       (.I0(\half_duty_new_reg[18]_i_4_n_1 ),
        .I1(half_duty_new6_n_74),
        .O(half_duty_new4_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__2_i_4
       (.I0(\half_duty_new_reg[18]_i_4_n_1 ),
        .I1(half_duty_new6_n_74),
        .O(half_duty_new4_carry__2_i_4_n_0));
  CARRY4 half_duty_new4_carry_i_10
       (.CI(half_duty_new4_carry_i_12_n_0),
        .CO({half_duty_new4_carry_i_10_n_0,half_duty_new4_carry_i_10_n_1,half_duty_new4_carry_i_10_n_2,half_duty_new4_carry_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new6__0[20:17]),
        .S({half_duty_new4_carry_i_18_n_0,half_duty_new4_carry_i_19_n_0,half_duty_new4_carry_i_20_n_0,half_duty_new4_carry_i_21_n_0}));
  CARRY4 half_duty_new4_carry_i_11
       (.CI(1'b0),
        .CO({half_duty_new4_carry_i_11_n_0,half_duty_new4_carry_i_11_n_1,half_duty_new4_carry_i_11_n_2,half_duty_new4_carry_i_11_n_3}),
        .CYINIT(half_duty_new4_carry_i_22_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new4[4:1]),
        .S({half_duty_new4_carry_i_23_n_0,half_duty_new4_carry_i_24_n_0,half_duty_new4_carry_i_25_n_0,half_duty_new4_carry_i_26_n_0}));
  CARRY4 half_duty_new4_carry_i_12
       (.CI(half_duty_new4_carry_i_13_n_0),
        .CO({half_duty_new4_carry_i_12_n_0,half_duty_new4_carry_i_12_n_1,half_duty_new4_carry_i_12_n_2,half_duty_new4_carry_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new6__0[16:13]),
        .S({half_duty_new4_carry_i_27_n_0,half_duty_new4_carry_i_28_n_0,half_duty_new4_carry_i_29_n_0,half_duty_new4_carry_i_30_n_0}));
  CARRY4 half_duty_new4_carry_i_13
       (.CI(half_duty_new4_carry_i_31_n_0),
        .CO({half_duty_new4_carry_i_13_n_0,half_duty_new4_carry_i_13_n_1,half_duty_new4_carry_i_13_n_2,half_duty_new4_carry_i_13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({half_duty_new6__0[12],NLW_half_duty_new4_carry_i_13_O_UNCONNECTED[2:0]}),
        .S({half_duty_new4_carry_i_32_n_0,half_duty_new4_carry_i_33_n_0,half_duty_new4_carry_i_34_n_0,half_duty_new4_carry_i_35_n_0}));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry_i_14
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[20]),
        .I2(half_duty_new6_n_85),
        .O(half_duty_new4_carry_i_14_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry_i_15
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[19]),
        .I2(half_duty_new6_n_86),
        .O(half_duty_new4_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry_i_16
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[18]),
        .I2(half_duty_new6_n_87),
        .O(half_duty_new4_carry_i_16_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry_i_17
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[17]),
        .I2(half_duty_new6_n_88),
        .O(half_duty_new4_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_18
       (.I0(half_duty_new6_n_85),
        .O(half_duty_new4_carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_19
       (.I0(half_duty_new6_n_86),
        .O(half_duty_new4_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD8D8DD88)) 
    half_duty_new4_carry_i_1__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new4[6]),
        .I2(half_duty_new6_n_87),
        .I3(half_duty_new6__0[18]),
        .I4(half_duty_new7),
        .I5(\half_duty_new[6]_i_2_n_0 ),
        .O(half_duty_new4_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_20
       (.I0(half_duty_new6_n_87),
        .O(half_duty_new4_carry_i_20_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_21
       (.I0(half_duty_new6_n_88),
        .O(half_duty_new4_carry_i_21_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry_i_22
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[12]),
        .I2(half_duty_new6_n_93),
        .O(half_duty_new4_carry_i_22_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry_i_23
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[16]),
        .I2(half_duty_new6_n_89),
        .O(half_duty_new4_carry_i_23_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry_i_24
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[15]),
        .I2(half_duty_new6_n_90),
        .O(half_duty_new4_carry_i_24_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry_i_25
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[14]),
        .I2(half_duty_new6_n_91),
        .O(half_duty_new4_carry_i_25_n_0));
  LUT3 #(
    .INIT(8'h1B)) 
    half_duty_new4_carry_i_26
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[13]),
        .I2(half_duty_new6_n_92),
        .O(half_duty_new4_carry_i_26_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_27
       (.I0(half_duty_new6_n_89),
        .O(half_duty_new4_carry_i_27_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_28
       (.I0(half_duty_new6_n_90),
        .O(half_duty_new4_carry_i_28_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_29
       (.I0(half_duty_new6_n_91),
        .O(half_duty_new4_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD8D8DD88)) 
    half_duty_new4_carry_i_2__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new4[4]),
        .I2(half_duty_new6_n_89),
        .I3(half_duty_new6__0[16]),
        .I4(half_duty_new7),
        .I5(\half_duty_new[4]_i_3_n_0 ),
        .O(half_duty_new4_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_30
       (.I0(half_duty_new6_n_92),
        .O(half_duty_new4_carry_i_30_n_0));
  CARRY4 half_duty_new4_carry_i_31
       (.CI(half_duty_new4_carry_i_36_n_0),
        .CO({half_duty_new4_carry_i_31_n_0,half_duty_new4_carry_i_31_n_1,half_duty_new4_carry_i_31_n_2,half_duty_new4_carry_i_31_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_half_duty_new4_carry_i_31_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry_i_37_n_0,half_duty_new4_carry_i_38_n_0,half_duty_new4_carry_i_39_n_0,half_duty_new4_carry_i_40_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_32
       (.I0(half_duty_new6_n_93),
        .O(half_duty_new4_carry_i_32_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_33
       (.I0(half_duty_new6_n_94),
        .O(half_duty_new4_carry_i_33_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_34
       (.I0(half_duty_new6_n_95),
        .O(half_duty_new4_carry_i_34_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_35
       (.I0(half_duty_new6_n_96),
        .O(half_duty_new4_carry_i_35_n_0));
  CARRY4 half_duty_new4_carry_i_36
       (.CI(1'b0),
        .CO({half_duty_new4_carry_i_36_n_0,half_duty_new4_carry_i_36_n_1,half_duty_new4_carry_i_36_n_2,half_duty_new4_carry_i_36_n_3}),
        .CYINIT(half_duty_new4_carry_i_41_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_half_duty_new4_carry_i_36_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry_i_42_n_0,half_duty_new4_carry_i_43_n_0,half_duty_new4_carry_i_44_n_0,half_duty_new4_carry_i_45_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_37
       (.I0(half_duty_new6_n_97),
        .O(half_duty_new4_carry_i_37_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_38
       (.I0(half_duty_new6_n_98),
        .O(half_duty_new4_carry_i_38_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_39
       (.I0(half_duty_new6_n_99),
        .O(half_duty_new4_carry_i_39_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD8D8DD88)) 
    half_duty_new4_carry_i_3__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new4[2]),
        .I2(half_duty_new6_n_91),
        .I3(half_duty_new6__0[14]),
        .I4(half_duty_new7),
        .I5(\half_duty_new[2]_i_2_n_0 ),
        .O(half_duty_new4_carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'hFFAC)) 
    half_duty_new4_carry_i_4
       (.I0(half_duty_new6_n_93),
        .I1(half_duty_new6__0[12]),
        .I2(half_duty_new7),
        .I3(\half_duty_new[0]_i_2_n_0 ),
        .O(half_duty_new4_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_40
       (.I0(half_duty_new6_n_100),
        .O(half_duty_new4_carry_i_40_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_41
       (.I0(half_duty_new6_n_105),
        .O(half_duty_new4_carry_i_41_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_42
       (.I0(half_duty_new6_n_101),
        .O(half_duty_new4_carry_i_42_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_43
       (.I0(half_duty_new6_n_102),
        .O(half_duty_new4_carry_i_43_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_44
       (.I0(half_duty_new6_n_103),
        .O(half_duty_new4_carry_i_44_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new4_carry_i_45
       (.I0(half_duty_new6_n_104),
        .O(half_duty_new4_carry_i_45_n_0));
  LUT6 #(
    .INIT(64'h000000000145ABEF)) 
    half_duty_new4_carry_i_5__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[18]),
        .I3(half_duty_new6_n_87),
        .I4(half_duty_new4[6]),
        .I5(\half_duty_new[6]_i_2_n_0 ),
        .O(half_duty_new4_carry_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h000000000145ABEF)) 
    half_duty_new4_carry_i_6__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[16]),
        .I3(half_duty_new6_n_89),
        .I4(half_duty_new4[4]),
        .I5(\half_duty_new[4]_i_3_n_0 ),
        .O(half_duty_new4_carry_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h000000000145ABEF)) 
    half_duty_new4_carry_i_7__1
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[14]),
        .I3(half_duty_new6_n_91),
        .I4(half_duty_new4[2]),
        .I5(\half_duty_new[2]_i_2_n_0 ),
        .O(half_duty_new4_carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h001B)) 
    half_duty_new4_carry_i_8__1
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[12]),
        .I2(half_duty_new6_n_93),
        .I3(\half_duty_new[0]_i_2_n_0 ),
        .O(half_duty_new4_carry_i_8__1_n_0));
  CARRY4 half_duty_new4_carry_i_9
       (.CI(half_duty_new4_carry_i_11_n_0),
        .CO({half_duty_new4_carry_i_9_n_0,half_duty_new4_carry_i_9_n_1,half_duty_new4_carry_i_9_n_2,half_duty_new4_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new4[8:5]),
        .S({half_duty_new4_carry_i_14_n_0,half_duty_new4_carry_i_15_n_0,half_duty_new4_carry_i_16_n_0,half_duty_new4_carry_i_17_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    half_duty_new6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_half_duty_new6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,half_duty_new6_i_1_n_0,half_duty_new6_i_2_n_0,half_duty_new6_i_3_n_0,half_duty_new6_i_4_n_0,half_duty_new6_i_5_n_0,half_duty_new6_i_6_n_0,half_duty_new6_i_7_n_0,half_duty_new6_i_8_n_0,half_duty_new6_i_9_n_0,half_duty_new6_i_10_n_0,half_duty_new6_i_11_n_0,half_duty_new6_i_12_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_half_duty_new6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_half_duty_new6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_half_duty_new6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_half_duty_new6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_half_duty_new6_OVERFLOW_UNCONNECTED),
        .P({NLW_half_duty_new6_P_UNCONNECTED[47:34],half_duty_new6_n_72,half_duty_new6_n_73,half_duty_new6_n_74,half_duty_new6_n_75,half_duty_new6_n_76,half_duty_new6_n_77,half_duty_new6_n_78,half_duty_new6_n_79,half_duty_new6_n_80,half_duty_new6_n_81,half_duty_new6_n_82,half_duty_new6_n_83,half_duty_new6_n_84,half_duty_new6_n_85,half_duty_new6_n_86,half_duty_new6_n_87,half_duty_new6_n_88,half_duty_new6_n_89,half_duty_new6_n_90,half_duty_new6_n_91,half_duty_new6_n_92,half_duty_new6_n_93,half_duty_new6_n_94,half_duty_new6_n_95,half_duty_new6_n_96,half_duty_new6_n_97,half_duty_new6_n_98,half_duty_new6_n_99,half_duty_new6_n_100,half_duty_new6_n_101,half_duty_new6_n_102,half_duty_new6_n_103,half_duty_new6_n_104,half_duty_new6_n_105}),
        .PATTERNBDETECT(NLW_half_duty_new6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_half_duty_new6_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_half_duty_new6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_half_duty_new6_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h10)) 
    half_duty_new6_i_1
       (.I0(\slv_reg1_reg[10] ),
        .I1(\slv_reg1_reg[10]_0 ),
        .I2(\slv_reg1_reg[11] [11]),
        .O(half_duty_new6_i_1_n_0));
  LUT3 #(
    .INIT(8'hF4)) 
    half_duty_new6_i_10
       (.I0(\slv_reg1_reg[10] ),
        .I1(\slv_reg1_reg[11] [2]),
        .I2(\slv_reg1_reg[10]_0 ),
        .O(half_duty_new6_i_10_n_0));
  LUT3 #(
    .INIT(8'hF4)) 
    half_duty_new6_i_11
       (.I0(\slv_reg1_reg[10] ),
        .I1(\slv_reg1_reg[11] [1]),
        .I2(\slv_reg1_reg[10]_0 ),
        .O(half_duty_new6_i_11_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    half_duty_new6_i_12
       (.I0(\slv_reg1_reg[10] ),
        .I1(\slv_reg1_reg[10]_0 ),
        .I2(\slv_reg1_reg[11] [0]),
        .O(half_duty_new6_i_12_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    half_duty_new6_i_2
       (.I0(\slv_reg1_reg[10] ),
        .I1(\slv_reg1_reg[10]_0 ),
        .I2(\slv_reg1_reg[11] [10]),
        .O(half_duty_new6_i_2_n_0));
  LUT3 #(
    .INIT(8'h32)) 
    half_duty_new6_i_3
       (.I0(\slv_reg1_reg[10] ),
        .I1(\slv_reg1_reg[10]_0 ),
        .I2(\slv_reg1_reg[11] [9]),
        .O(half_duty_new6_i_3_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    half_duty_new6_i_4
       (.I0(\slv_reg1_reg[10] ),
        .I1(\slv_reg1_reg[10]_0 ),
        .I2(\slv_reg1_reg[11] [8]),
        .O(half_duty_new6_i_4_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    half_duty_new6_i_5
       (.I0(\slv_reg1_reg[10] ),
        .I1(\slv_reg1_reg[10]_0 ),
        .I2(\slv_reg1_reg[11] [7]),
        .O(half_duty_new6_i_5_n_0));
  LUT3 #(
    .INIT(8'hF4)) 
    half_duty_new6_i_6
       (.I0(\slv_reg1_reg[10] ),
        .I1(\slv_reg1_reg[11] [6]),
        .I2(\slv_reg1_reg[10]_0 ),
        .O(half_duty_new6_i_6_n_0));
  LUT3 #(
    .INIT(8'hF4)) 
    half_duty_new6_i_7
       (.I0(\slv_reg1_reg[10] ),
        .I1(\slv_reg1_reg[11] [5]),
        .I2(\slv_reg1_reg[10]_0 ),
        .O(half_duty_new6_i_7_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    half_duty_new6_i_8
       (.I0(\slv_reg1_reg[10] ),
        .I1(\slv_reg1_reg[10]_0 ),
        .I2(\slv_reg1_reg[11] [4]),
        .O(half_duty_new6_i_8_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    half_duty_new6_i_9
       (.I0(\slv_reg1_reg[10] ),
        .I1(\slv_reg1_reg[10]_0 ),
        .I2(\slv_reg1_reg[11] [3]),
        .O(half_duty_new6_i_9_n_0));
  CARRY4 half_duty_new7_carry
       (.CI(1'b0),
        .CO({half_duty_new7_carry_n_0,half_duty_new7_carry_n_1,half_duty_new7_carry_n_2,half_duty_new7_carry_n_3}),
        .CYINIT(1'b1),
        .DI({half_duty_new7_carry_i_1_n_0,half_duty_new7_carry_i_2_n_0,half_duty_new7_carry_i_3_n_0,half_duty_new7_carry_i_4_n_0}),
        .O(NLW_half_duty_new7_carry_O_UNCONNECTED[3:0]),
        .S({half_duty_new7_carry_i_5__1_n_0,half_duty_new7_carry_i_6__1_n_0,half_duty_new7_carry_i_7__1_n_0,half_duty_new7_carry_i_8__1_n_0}));
  CARRY4 half_duty_new7_carry__0
       (.CI(half_duty_new7_carry_n_0),
        .CO({half_duty_new7_carry__0_n_0,half_duty_new7_carry__0_n_1,half_duty_new7_carry__0_n_2,half_duty_new7_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({half_duty_new7_carry__0_i_1_n_0,half_duty_new7_carry__0_i_2_n_0,half_duty_new7_carry__0_i_3_n_0,half_duty_new7_carry__0_i_4_n_0}),
        .O(NLW_half_duty_new7_carry__0_O_UNCONNECTED[3:0]),
        .S({half_duty_new7_carry__0_i_5__1_n_0,half_duty_new7_carry__0_i_6__1_n_0,half_duty_new7_carry__0_i_7__1_n_0,half_duty_new7_carry__0_i_8__1_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__0_i_1
       (.I0(half_duty_new6_n_91),
        .I1(half_duty_new6_n_90),
        .O(half_duty_new7_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__0_i_2
       (.I0(half_duty_new6_n_93),
        .I1(half_duty_new6_n_92),
        .O(half_duty_new7_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__0_i_3
       (.I0(half_duty_new6_n_95),
        .I1(half_duty_new6_n_94),
        .O(half_duty_new7_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__0_i_4
       (.I0(half_duty_new6_n_97),
        .I1(half_duty_new6_n_96),
        .O(half_duty_new7_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__0_i_5__1
       (.I0(half_duty_new6_n_91),
        .I1(half_duty_new6_n_90),
        .O(half_duty_new7_carry__0_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__0_i_6__1
       (.I0(half_duty_new6_n_93),
        .I1(half_duty_new6_n_92),
        .O(half_duty_new7_carry__0_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__0_i_7__1
       (.I0(half_duty_new6_n_95),
        .I1(half_duty_new6_n_94),
        .O(half_duty_new7_carry__0_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__0_i_8__1
       (.I0(half_duty_new6_n_97),
        .I1(half_duty_new6_n_96),
        .O(half_duty_new7_carry__0_i_8__1_n_0));
  CARRY4 half_duty_new7_carry__1
       (.CI(half_duty_new7_carry__0_n_0),
        .CO({half_duty_new7_carry__1_n_0,half_duty_new7_carry__1_n_1,half_duty_new7_carry__1_n_2,half_duty_new7_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({half_duty_new7_carry__1_i_1_n_0,half_duty_new7_carry__1_i_2_n_0,half_duty_new7_carry__1_i_3_n_0,half_duty_new7_carry__1_i_4_n_0}),
        .O(NLW_half_duty_new7_carry__1_O_UNCONNECTED[3:0]),
        .S({half_duty_new7_carry__1_i_5__1_n_0,half_duty_new7_carry__1_i_6__1_n_0,half_duty_new7_carry__1_i_7__1_n_0,half_duty_new7_carry__1_i_8__1_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__1_i_1
       (.I0(half_duty_new6_n_83),
        .I1(half_duty_new6_n_82),
        .O(half_duty_new7_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__1_i_2
       (.I0(half_duty_new6_n_85),
        .I1(half_duty_new6_n_84),
        .O(half_duty_new7_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__1_i_3
       (.I0(half_duty_new6_n_87),
        .I1(half_duty_new6_n_86),
        .O(half_duty_new7_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__1_i_4
       (.I0(half_duty_new6_n_89),
        .I1(half_duty_new6_n_88),
        .O(half_duty_new7_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__1_i_5__1
       (.I0(half_duty_new6_n_83),
        .I1(half_duty_new6_n_82),
        .O(half_duty_new7_carry__1_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__1_i_6__1
       (.I0(half_duty_new6_n_85),
        .I1(half_duty_new6_n_84),
        .O(half_duty_new7_carry__1_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__1_i_7__1
       (.I0(half_duty_new6_n_87),
        .I1(half_duty_new6_n_86),
        .O(half_duty_new7_carry__1_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__1_i_8__1
       (.I0(half_duty_new6_n_89),
        .I1(half_duty_new6_n_88),
        .O(half_duty_new7_carry__1_i_8__1_n_0));
  CARRY4 half_duty_new7_carry__2
       (.CI(half_duty_new7_carry__1_n_0),
        .CO({half_duty_new7,half_duty_new7_carry__2_n_1,half_duty_new7_carry__2_n_2,half_duty_new7_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({half_duty_new7_carry__2_i_1__1_n_0,half_duty_new7_carry__2_i_2_n_0,half_duty_new7_carry__2_i_3_n_0,half_duty_new7_carry__2_i_4_n_0}),
        .O(NLW_half_duty_new7_carry__2_O_UNCONNECTED[3:0]),
        .S({half_duty_new7_carry__2_i_5_n_0,half_duty_new7_carry__2_i_6_n_0,half_duty_new7_carry__2_i_7_n_0,half_duty_new7_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new7_carry__2_i_1__1
       (.I0(half_duty_new6_n_75),
        .I1(half_duty_new6_n_74),
        .O(half_duty_new7_carry__2_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__2_i_2
       (.I0(half_duty_new6_n_77),
        .I1(half_duty_new6_n_76),
        .O(half_duty_new7_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__2_i_3
       (.I0(half_duty_new6_n_79),
        .I1(half_duty_new6_n_78),
        .O(half_duty_new7_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__2_i_4
       (.I0(half_duty_new6_n_81),
        .I1(half_duty_new6_n_80),
        .O(half_duty_new7_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__2_i_5
       (.I0(half_duty_new6_n_75),
        .I1(half_duty_new6_n_74),
        .O(half_duty_new7_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__2_i_6
       (.I0(half_duty_new6_n_77),
        .I1(half_duty_new6_n_76),
        .O(half_duty_new7_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__2_i_7
       (.I0(half_duty_new6_n_79),
        .I1(half_duty_new6_n_78),
        .O(half_duty_new7_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__2_i_8
       (.I0(half_duty_new6_n_81),
        .I1(half_duty_new6_n_80),
        .O(half_duty_new7_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry_i_1
       (.I0(half_duty_new6_n_99),
        .I1(half_duty_new6_n_98),
        .O(half_duty_new7_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry_i_2
       (.I0(half_duty_new6_n_101),
        .I1(half_duty_new6_n_100),
        .O(half_duty_new7_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry_i_3
       (.I0(half_duty_new6_n_103),
        .I1(half_duty_new6_n_102),
        .O(half_duty_new7_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry_i_4
       (.I0(half_duty_new6_n_105),
        .I1(half_duty_new6_n_104),
        .O(half_duty_new7_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry_i_5__1
       (.I0(half_duty_new6_n_99),
        .I1(half_duty_new6_n_98),
        .O(half_duty_new7_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry_i_6__1
       (.I0(half_duty_new6_n_101),
        .I1(half_duty_new6_n_100),
        .O(half_duty_new7_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry_i_7__1
       (.I0(half_duty_new6_n_103),
        .I1(half_duty_new6_n_102),
        .O(half_duty_new7_carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry_i_8__1
       (.I0(half_duty_new6_n_105),
        .I1(half_duty_new6_n_104),
        .O(half_duty_new7_carry_i_8__1_n_0));
  LUT3 #(
    .INIT(8'hAC)) 
    \half_duty_new[0]_i_1 
       (.I0(\half_duty_new[0]_i_2_n_0 ),
        .I1(half_duty_new3[1]),
        .I2(half_duty_new4_carry__2_n_0),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[0]_i_2 
       (.I0(half_duty_new4[1]),
        .I1(half_duty_new6_n_92),
        .I2(half_duty_new6__0[13]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[10]_i_1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[10]),
        .I3(\half_duty_new[10]_i_2_n_0 ),
        .I4(half_duty_new3[11]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[10]_i_2 
       (.I0(half_duty_new4[11]),
        .I1(half_duty_new6_n_82),
        .I2(half_duty_new6__0[23]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[11]_i_1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[11]),
        .I3(\half_duty_new[11]_i_2_n_0 ),
        .I4(half_duty_new3[12]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[11]_i_2 
       (.I0(half_duty_new4[12]),
        .I1(half_duty_new6_n_81),
        .I2(half_duty_new6__0[24]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[11]_i_4 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[24]),
        .I3(half_duty_new6_n_81),
        .I4(half_duty_new4[12]),
        .O(\half_duty_new[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[11]_i_5 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[23]),
        .I3(half_duty_new6_n_82),
        .I4(half_duty_new4[11]),
        .O(\half_duty_new[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[11]_i_6 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[22]),
        .I3(half_duty_new6_n_83),
        .I4(half_duty_new4[10]),
        .O(\half_duty_new[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[11]_i_7 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[21]),
        .I3(half_duty_new6_n_84),
        .I4(half_duty_new4[9]),
        .O(\half_duty_new[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[12]_i_1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[12]),
        .I3(\half_duty_new[12]_i_3_n_0 ),
        .I4(half_duty_new3[13]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[12]_i_3 
       (.I0(half_duty_new4[13]),
        .I1(half_duty_new6_n_80),
        .I2(half_duty_new6__0[25]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[12]_i_4 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[13]),
        .I2(\half_duty_new[12]_i_3_n_0 ),
        .O(\half_duty_new[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[12]_i_5 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[12]),
        .I2(\half_duty_new[11]_i_2_n_0 ),
        .O(\half_duty_new[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[12]_i_6 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[11]),
        .I2(\half_duty_new[10]_i_2_n_0 ),
        .O(\half_duty_new[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[12]_i_7 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[10]),
        .I2(\half_duty_new[9]_i_2_n_0 ),
        .O(\half_duty_new[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[13]_i_1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[13]),
        .I3(\half_duty_new[13]_i_2_n_0 ),
        .I4(half_duty_new3[14]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[13]_i_2 
       (.I0(half_duty_new4[14]),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new6__0[26]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[14]_i_1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[14]),
        .I3(\half_duty_new[14]_i_2_n_0 ),
        .I4(half_duty_new3[15]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[14]_i_2 
       (.I0(half_duty_new4[15]),
        .I1(half_duty_new6_n_78),
        .I2(half_duty_new6__0[27]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[15]_i_1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[15]),
        .I3(\half_duty_new[15]_i_2_n_0 ),
        .I4(half_duty_new3[16]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[15]_i_2 
       (.I0(half_duty_new4[16]),
        .I1(half_duty_new6_n_77),
        .I2(half_duty_new6__0[28]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[15]_i_4 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[28]),
        .I3(half_duty_new6_n_77),
        .I4(half_duty_new4[16]),
        .O(\half_duty_new[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[15]_i_5 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[27]),
        .I3(half_duty_new6_n_78),
        .I4(half_duty_new4[15]),
        .O(\half_duty_new[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[15]_i_6 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[26]),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[14]),
        .O(\half_duty_new[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[15]_i_7 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[25]),
        .I3(half_duty_new6_n_80),
        .I4(half_duty_new4[13]),
        .O(\half_duty_new[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[16]_i_1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[16]),
        .I3(\half_duty_new[16]_i_3_n_0 ),
        .I4(half_duty_new3[17]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[16]_i_3 
       (.I0(half_duty_new4[17]),
        .I1(half_duty_new6_n_76),
        .I2(half_duty_new6__0[29]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[16]_i_4 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[17]),
        .I2(\half_duty_new[16]_i_3_n_0 ),
        .O(\half_duty_new[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[16]_i_5 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[16]),
        .I2(\half_duty_new[15]_i_2_n_0 ),
        .O(\half_duty_new[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[16]_i_6 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[15]),
        .I2(\half_duty_new[14]_i_2_n_0 ),
        .O(\half_duty_new[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[16]_i_7 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[14]),
        .I2(\half_duty_new[13]_i_2_n_0 ),
        .O(\half_duty_new[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[17]_i_1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[17]),
        .I3(\half_duty_new[17]_i_2_n_0 ),
        .I4(half_duty_new3[18]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[17]_i_2 
       (.I0(half_duty_new4[18]),
        .I1(half_duty_new6_n_75),
        .I2(half_duty_new6__0[30]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[17]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new[18]_i_1 
       (.I0(disabled),
        .O(\half_duty_new[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \half_duty_new[18]_i_10 
       (.I0(\half_duty_new_reg[18]_i_4_n_1 ),
        .I1(half_duty_new6_n_74),
        .O(\half_duty_new[18]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[18]_i_11 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[30]),
        .I3(half_duty_new6_n_75),
        .I4(half_duty_new4[18]),
        .O(\half_duty_new[18]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[18]_i_12 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[29]),
        .I3(half_duty_new6_n_76),
        .I4(half_duty_new4[17]),
        .O(\half_duty_new[18]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \half_duty_new[18]_i_2 
       (.I0(half_duty_new1[18]),
        .I1(half_duty_new6_n_74),
        .I2(\half_duty_new_reg[18]_i_4_n_1 ),
        .I3(half_duty_new3[19]),
        .I4(half_duty_new4_carry__2_n_0),
        .O(p_1_in[18]));
  LUT4 #(
    .INIT(16'hB1BB)) 
    \half_duty_new[18]_i_6 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[19]),
        .I2(\half_duty_new_reg[18]_i_4_n_1 ),
        .I3(half_duty_new6_n_74),
        .O(\half_duty_new[18]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[18]_i_7 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[18]),
        .I2(\half_duty_new[17]_i_2_n_0 ),
        .O(\half_duty_new[18]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[18]_i_8 
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[30]),
        .I2(half_duty_new6_n_75),
        .O(\half_duty_new[18]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[18]_i_9 
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[29]),
        .I2(half_duty_new6_n_76),
        .O(\half_duty_new[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[1]_i_1__1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[1]),
        .I3(\half_duty_new[1]_i_2_n_0 ),
        .I4(half_duty_new3[2]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[1]_i_2 
       (.I0(half_duty_new4[2]),
        .I1(half_duty_new6_n_91),
        .I2(half_duty_new6__0[14]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[2]_i_1__1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[2]),
        .I3(\half_duty_new[2]_i_2_n_0 ),
        .I4(half_duty_new3[3]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[2]_i_2 
       (.I0(half_duty_new4[3]),
        .I1(half_duty_new6_n_90),
        .I2(half_duty_new6__0[15]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[3]_i_1__1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[3]),
        .I3(\half_duty_new[3]_i_2_n_0 ),
        .I4(half_duty_new3[4]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[3]_i_2 
       (.I0(half_duty_new4[4]),
        .I1(half_duty_new6_n_89),
        .I2(half_duty_new6__0[16]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[3]_i_4 
       (.I0(half_duty_new7),
        .I1(half_duty_new6__0[12]),
        .I2(half_duty_new6_n_93),
        .O(\half_duty_new[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[3]_i_5 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[16]),
        .I3(half_duty_new6_n_89),
        .I4(half_duty_new4[4]),
        .O(\half_duty_new[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[3]_i_6 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[15]),
        .I3(half_duty_new6_n_90),
        .I4(half_duty_new4[3]),
        .O(\half_duty_new[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[3]_i_7 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[14]),
        .I3(half_duty_new6_n_91),
        .I4(half_duty_new4[2]),
        .O(\half_duty_new[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[3]_i_8 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[13]),
        .I3(half_duty_new6_n_92),
        .I4(half_duty_new4[1]),
        .O(\half_duty_new[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[4]_i_1__1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[4]),
        .I3(\half_duty_new[4]_i_3_n_0 ),
        .I4(half_duty_new3[5]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[4]_i_3 
       (.I0(half_duty_new4[5]),
        .I1(half_duty_new6_n_88),
        .I2(half_duty_new6__0[17]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[4]_i_4 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[1]),
        .I2(\half_duty_new[0]_i_2_n_0 ),
        .O(\half_duty_new[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[4]_i_5 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[5]),
        .I2(\half_duty_new[4]_i_3_n_0 ),
        .O(\half_duty_new[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[4]_i_6 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[4]),
        .I2(\half_duty_new[3]_i_2_n_0 ),
        .O(\half_duty_new[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[4]_i_7 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[3]),
        .I2(\half_duty_new[2]_i_2_n_0 ),
        .O(\half_duty_new[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[4]_i_8 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[2]),
        .I2(\half_duty_new[1]_i_2_n_0 ),
        .O(\half_duty_new[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[5]_i_1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[5]),
        .I3(\half_duty_new[5]_i_2_n_0 ),
        .I4(half_duty_new3[6]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[5]_i_2 
       (.I0(half_duty_new4[6]),
        .I1(half_duty_new6_n_87),
        .I2(half_duty_new6__0[18]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[6]_i_1__1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[6]),
        .I3(\half_duty_new[6]_i_2_n_0 ),
        .I4(half_duty_new3[7]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[6]_i_2 
       (.I0(half_duty_new4[7]),
        .I1(half_duty_new6_n_86),
        .I2(half_duty_new6__0[19]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[7]_i_1__1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[7]),
        .I3(\half_duty_new[7]_i_2_n_0 ),
        .I4(half_duty_new3[8]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[7]_i_2 
       (.I0(half_duty_new4[8]),
        .I1(half_duty_new6_n_85),
        .I2(half_duty_new6__0[20]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[7]_i_4 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[20]),
        .I3(half_duty_new6_n_85),
        .I4(half_duty_new4[8]),
        .O(\half_duty_new[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[7]_i_5 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[19]),
        .I3(half_duty_new6_n_86),
        .I4(half_duty_new4[7]),
        .O(\half_duty_new[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[7]_i_6 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[18]),
        .I3(half_duty_new6_n_87),
        .I4(half_duty_new4[6]),
        .O(\half_duty_new[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0145ABEF)) 
    \half_duty_new[7]_i_7 
       (.I0(half_duty_new6_n_74),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[17]),
        .I3(half_duty_new6_n_88),
        .I4(half_duty_new4[5]),
        .O(\half_duty_new[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[8]_i_1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[8]),
        .I3(\half_duty_new[8]_i_3_n_0 ),
        .I4(half_duty_new3[9]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[8]_i_3 
       (.I0(half_duty_new4[9]),
        .I1(half_duty_new6_n_84),
        .I2(half_duty_new6__0[21]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[8]_i_4 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[9]),
        .I2(\half_duty_new[8]_i_3_n_0 ),
        .O(\half_duty_new[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[8]_i_5 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[8]),
        .I2(\half_duty_new[7]_i_2_n_0 ),
        .O(\half_duty_new[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[8]_i_6 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[7]),
        .I2(\half_duty_new[6]_i_2_n_0 ),
        .O(\half_duty_new[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1B)) 
    \half_duty_new[8]_i_7 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(half_duty_new3[6]),
        .I2(\half_duty_new[5]_i_2_n_0 ),
        .O(\half_duty_new[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FD20FDFD2020)) 
    \half_duty_new[9]_i_1 
       (.I0(half_duty_new6_n_74),
        .I1(\half_duty_new_reg[18]_i_4_n_1 ),
        .I2(half_duty_new1[9]),
        .I3(\half_duty_new[9]_i_2_n_0 ),
        .I4(half_duty_new3[10]),
        .I5(half_duty_new4_carry__2_n_0),
        .O(p_1_in[9]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \half_duty_new[9]_i_2 
       (.I0(half_duty_new4[10]),
        .I1(half_duty_new6_n_83),
        .I2(half_duty_new6__0[22]),
        .I3(half_duty_new7),
        .I4(half_duty_new6_n_74),
        .O(\half_duty_new[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(half_duty_new[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(half_duty_new[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(half_duty_new[11]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[11]_i_3 
       (.CI(\half_duty_new_reg[7]_i_3_n_0 ),
        .CO({\half_duty_new_reg[11]_i_3_n_0 ,\half_duty_new_reg[11]_i_3_n_1 ,\half_duty_new_reg[11]_i_3_n_2 ,\half_duty_new_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new3[12:9]),
        .S({\half_duty_new[11]_i_4_n_0 ,\half_duty_new[11]_i_5_n_0 ,\half_duty_new[11]_i_6_n_0 ,\half_duty_new[11]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(half_duty_new[12]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[12]_i_2 
       (.CI(\half_duty_new_reg[8]_i_2_n_0 ),
        .CO({\half_duty_new_reg[12]_i_2_n_0 ,\half_duty_new_reg[12]_i_2_n_1 ,\half_duty_new_reg[12]_i_2_n_2 ,\half_duty_new_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new1[12:9]),
        .S({\half_duty_new[12]_i_4_n_0 ,\half_duty_new[12]_i_5_n_0 ,\half_duty_new[12]_i_6_n_0 ,\half_duty_new[12]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(half_duty_new[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(half_duty_new[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(half_duty_new[15]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[15]_i_3 
       (.CI(\half_duty_new_reg[11]_i_3_n_0 ),
        .CO({\half_duty_new_reg[15]_i_3_n_0 ,\half_duty_new_reg[15]_i_3_n_1 ,\half_duty_new_reg[15]_i_3_n_2 ,\half_duty_new_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new3[16:13]),
        .S({\half_duty_new[15]_i_4_n_0 ,\half_duty_new[15]_i_5_n_0 ,\half_duty_new[15]_i_6_n_0 ,\half_duty_new[15]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(half_duty_new[16]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[16]_i_2 
       (.CI(\half_duty_new_reg[12]_i_2_n_0 ),
        .CO({\half_duty_new_reg[16]_i_2_n_0 ,\half_duty_new_reg[16]_i_2_n_1 ,\half_duty_new_reg[16]_i_2_n_2 ,\half_duty_new_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new1[16:13]),
        .S({\half_duty_new[16]_i_4_n_0 ,\half_duty_new[16]_i_5_n_0 ,\half_duty_new[16]_i_6_n_0 ,\half_duty_new[16]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(half_duty_new[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(half_duty_new[18]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[18]_i_3 
       (.CI(\half_duty_new_reg[16]_i_2_n_0 ),
        .CO({\NLW_half_duty_new_reg[18]_i_3_CO_UNCONNECTED [3:1],\half_duty_new_reg[18]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_half_duty_new_reg[18]_i_3_O_UNCONNECTED [3:2],half_duty_new1[18:17]}),
        .S({1'b0,1'b0,\half_duty_new[18]_i_6_n_0 ,\half_duty_new[18]_i_7_n_0 }));
  CARRY4 \half_duty_new_reg[18]_i_4 
       (.CI(half_duty_new4_carry__0_i_9_n_0),
        .CO({\NLW_half_duty_new_reg[18]_i_4_CO_UNCONNECTED [3],\half_duty_new_reg[18]_i_4_n_1 ,\NLW_half_duty_new_reg[18]_i_4_CO_UNCONNECTED [1],\half_duty_new_reg[18]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_half_duty_new_reg[18]_i_4_O_UNCONNECTED [3:2],half_duty_new4[18:17]}),
        .S({1'b0,1'b1,\half_duty_new[18]_i_8_n_0 ,\half_duty_new[18]_i_9_n_0 }));
  CARRY4 \half_duty_new_reg[18]_i_5 
       (.CI(\half_duty_new_reg[15]_i_3_n_0 ),
        .CO({\NLW_half_duty_new_reg[18]_i_5_CO_UNCONNECTED [3:2],\half_duty_new_reg[18]_i_5_n_2 ,\half_duty_new_reg[18]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_half_duty_new_reg[18]_i_5_O_UNCONNECTED [3],half_duty_new3[19:17]}),
        .S({1'b0,\half_duty_new[18]_i_10_n_0 ,\half_duty_new[18]_i_11_n_0 ,\half_duty_new[18]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(half_duty_new[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(half_duty_new[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(half_duty_new[3]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[3]_i_3_n_0 ,\half_duty_new_reg[3]_i_3_n_1 ,\half_duty_new_reg[3]_i_3_n_2 ,\half_duty_new_reg[3]_i_3_n_3 }),
        .CYINIT(\half_duty_new[3]_i_4_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new3[4:1]),
        .S({\half_duty_new[3]_i_5_n_0 ,\half_duty_new[3]_i_6_n_0 ,\half_duty_new[3]_i_7_n_0 ,\half_duty_new[3]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(half_duty_new[4]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\half_duty_new_reg[4]_i_2_n_0 ,\half_duty_new_reg[4]_i_2_n_1 ,\half_duty_new_reg[4]_i_2_n_2 ,\half_duty_new_reg[4]_i_2_n_3 }),
        .CYINIT(\half_duty_new[4]_i_4_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new1[4:1]),
        .S({\half_duty_new[4]_i_5_n_0 ,\half_duty_new[4]_i_6_n_0 ,\half_duty_new[4]_i_7_n_0 ,\half_duty_new[4]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(half_duty_new[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(half_duty_new[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(half_duty_new[7]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[7]_i_3 
       (.CI(\half_duty_new_reg[3]_i_3_n_0 ),
        .CO({\half_duty_new_reg[7]_i_3_n_0 ,\half_duty_new_reg[7]_i_3_n_1 ,\half_duty_new_reg[7]_i_3_n_2 ,\half_duty_new_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new3[8:5]),
        .S({\half_duty_new[7]_i_4_n_0 ,\half_duty_new[7]_i_5_n_0 ,\half_duty_new[7]_i_6_n_0 ,\half_duty_new[7]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(half_duty_new[8]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[8]_i_2 
       (.CI(\half_duty_new_reg[4]_i_2_n_0 ),
        .CO({\half_duty_new_reg[8]_i_2_n_0 ,\half_duty_new_reg[8]_i_2_n_1 ,\half_duty_new_reg[8]_i_2_n_2 ,\half_duty_new_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new1[8:5]),
        .S({\half_duty_new[8]_i_4_n_0 ,\half_duty_new[8]_i_5_n_0 ,\half_duty_new[8]_i_6_n_0 ,\half_duty_new[8]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[18]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(half_duty_new[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[0] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[0]),
        .Q(\half_duty_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[10] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[10]),
        .Q(\half_duty_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[11] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[11]),
        .Q(\half_duty_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[12] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[12]),
        .Q(\half_duty_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[13] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[13]),
        .Q(\half_duty_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[14] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[14]),
        .Q(\half_duty_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[15] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[15]),
        .Q(\half_duty_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[16] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[16]),
        .Q(\half_duty_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[17] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[17]),
        .Q(\half_duty_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[18] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[18]),
        .Q(\half_duty_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[1] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[1]),
        .Q(\half_duty_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[2] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[2]),
        .Q(\half_duty_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[3] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[3]),
        .Q(\half_duty_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[4] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[4]),
        .Q(\half_duty_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[5] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[5]),
        .Q(\half_duty_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[6] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[6]),
        .Q(\half_duty_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[7] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[7]),
        .Q(\half_duty_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[8] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[8]),
        .Q(\half_duty_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[9] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[9]),
        .Q(\half_duty_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 pwm_out_buf0_carry
       (.CI(1'b0),
        .CO({pwm_out_buf0_carry_n_0,pwm_out_buf0_carry_n_1,pwm_out_buf0_carry_n_2,pwm_out_buf0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out_buf0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_out_buf0_carry_i_1_n_0,pwm_out_buf0_carry_i_2_n_0,pwm_out_buf0_carry_i_3_n_0,pwm_out_buf0_carry_i_4_n_0}));
  CARRY4 pwm_out_buf0_carry__0
       (.CI(pwm_out_buf0_carry_n_0),
        .CO({NLW_pwm_out_buf0_carry__0_CO_UNCONNECTED[3],pwm_out_buf_reg_0,pwm_out_buf0_carry__0_n_2,pwm_out_buf0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out_buf0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,pwm_out_buf0_carry__0_i_1_n_0,pwm_out_buf0_carry__0_i_2_n_0,pwm_out_buf0_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h8421)) 
    pwm_out_buf0_carry__0_i_1
       (.I0(\count_reg_n_0_[18] ),
        .I1(\count_reg_n_0_[19] ),
        .I2(pwm_out_buf1[18]),
        .I3(pwm_out_buf1[19]),
        .O(pwm_out_buf0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry__0_i_10
       (.I0(\half_duty_reg_n_0_[15] ),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry__0_i_11
       (.I0(\half_duty_reg_n_0_[13] ),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out_buf0_carry__0_i_2
       (.I0(pwm_out_buf1[17]),
        .I1(\count_reg_n_0_[17] ),
        .I2(pwm_out_buf1[16]),
        .I3(\count_reg_n_0_[16] ),
        .I4(\count_reg_n_0_[15] ),
        .I5(pwm_out_buf1[15]),
        .O(pwm_out_buf0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out_buf0_carry__0_i_3
       (.I0(pwm_out_buf1[14]),
        .I1(\count_reg_n_0_[14] ),
        .I2(pwm_out_buf1[13]),
        .I3(\count_reg_n_0_[13] ),
        .I4(\count_reg_n_0_[12] ),
        .I5(pwm_out_buf1[12]),
        .O(pwm_out_buf0_carry__0_i_3_n_0));
  CARRY4 pwm_out_buf0_carry__0_i_4
       (.CI(pwm_out_buf0_carry__0_i_5_n_0),
        .CO({NLW_pwm_out_buf0_carry__0_i_4_CO_UNCONNECTED[3],pwm_out_buf1[19],NLW_pwm_out_buf0_carry__0_i_4_CO_UNCONNECTED[1],pwm_out_buf0_carry__0_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_0_in[18:17]}),
        .O({NLW_pwm_out_buf0_carry__0_i_4_O_UNCONNECTED[3:2],pwm_out_buf1[18:17]}),
        .S({1'b0,1'b1,\half_duty_reg_n_0_[18] ,\half_duty_reg_n_0_[17] }));
  CARRY4 pwm_out_buf0_carry__0_i_5
       (.CI(pwm_out_buf0_carry_i_5__1_n_0),
        .CO({pwm_out_buf0_carry__0_i_5_n_0,pwm_out_buf0_carry__0_i_5_n_1,pwm_out_buf0_carry__0_i_5_n_2,pwm_out_buf0_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({p_0_in[16],1'b0,p_0_in[14],1'b0}),
        .O(pwm_out_buf1[16:13]),
        .S({\half_duty_reg_n_0_[16] ,p_0_in[15],\half_duty_reg_n_0_[14] ,p_0_in[13]}));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry__0_i_6
       (.I0(\half_duty_reg_n_0_[18] ),
        .O(p_0_in[18]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry__0_i_7
       (.I0(\half_duty_reg_n_0_[17] ),
        .O(p_0_in[17]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry__0_i_8
       (.I0(\half_duty_reg_n_0_[16] ),
        .O(p_0_in[16]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry__0_i_9
       (.I0(\half_duty_reg_n_0_[14] ),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out_buf0_carry_i_1
       (.I0(pwm_out_buf1[11]),
        .I1(\count_reg_n_0_[11] ),
        .I2(pwm_out_buf1[10]),
        .I3(\count_reg_n_0_[10] ),
        .I4(\count_reg_n_0_[9] ),
        .I5(pwm_out_buf1[9]),
        .O(pwm_out_buf0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_10
       (.I0(\half_duty_reg_n_0_[11] ),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_11
       (.I0(\half_duty_reg_n_0_[10] ),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_12
       (.I0(\half_duty_reg_n_0_[6] ),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_13
       (.I0(\half_duty_reg_n_0_[8] ),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_14
       (.I0(\half_duty_reg_n_0_[7] ),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_15
       (.I0(\half_duty_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_16
       (.I0(\half_duty_reg_n_0_[0] ),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_17
       (.I0(\half_duty_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_18
       (.I0(\half_duty_reg_n_0_[3] ),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_19
       (.I0(\half_duty_reg_n_0_[2] ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out_buf0_carry_i_2
       (.I0(pwm_out_buf1[8]),
        .I1(\count_reg_n_0_[8] ),
        .I2(pwm_out_buf1[7]),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[6] ),
        .I5(pwm_out_buf1[6]),
        .O(pwm_out_buf0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_20
       (.I0(\half_duty_reg_n_0_[1] ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out_buf0_carry_i_3
       (.I0(pwm_out_buf1[5]),
        .I1(\count_reg_n_0_[5] ),
        .I2(pwm_out_buf1[4]),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(pwm_out_buf1[3]),
        .O(pwm_out_buf0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8200008241000041)) 
    pwm_out_buf0_carry_i_4
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(pwm_out_buf1[2]),
        .I3(\count_reg_n_0_[0] ),
        .I4(\half_duty_reg_n_0_[0] ),
        .I5(pwm_out_buf1[1]),
        .O(pwm_out_buf0_carry_i_4_n_0));
  CARRY4 pwm_out_buf0_carry_i_5__1
       (.CI(pwm_out_buf0_carry_i_6__1_n_0),
        .CO({pwm_out_buf0_carry_i_5__1_n_0,pwm_out_buf0_carry_i_5__1_n_1,pwm_out_buf0_carry_i_5__1_n_2,pwm_out_buf0_carry_i_5__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in[9]}),
        .O(pwm_out_buf1[12:9]),
        .S({p_0_in[12:10],\half_duty_reg_n_0_[9] }));
  CARRY4 pwm_out_buf0_carry_i_6__1
       (.CI(pwm_out_buf0_carry_i_7_n_0),
        .CO({pwm_out_buf0_carry_i_6__1_n_0,pwm_out_buf0_carry_i_6__1_n_1,pwm_out_buf0_carry_i_6__1_n_2,pwm_out_buf0_carry_i_6__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_0_in[6],1'b0}),
        .O(pwm_out_buf1[8:5]),
        .S({p_0_in[8:7],\half_duty_reg_n_0_[6] ,p_0_in[5]}));
  CARRY4 pwm_out_buf0_carry_i_7
       (.CI(1'b0),
        .CO({pwm_out_buf0_carry_i_7_n_0,pwm_out_buf0_carry_i_7_n_1,pwm_out_buf0_carry_i_7_n_2,pwm_out_buf0_carry_i_7_n_3}),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pwm_out_buf1[4:1]),
        .S(p_0_in[4:1]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_8
       (.I0(\half_duty_reg_n_0_[9] ),
        .O(p_0_in[9]));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_buf0_carry_i_9
       (.I0(\half_duty_reg_n_0_[12] ),
        .O(p_0_in[12]));
  CARRY4 pwm_out_buf1_carry
       (.CI(1'b0),
        .CO({pwm_out_buf1_carry_n_0,pwm_out_buf1_carry_n_1,pwm_out_buf1_carry_n_2,pwm_out_buf1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out_buf1_carry_O_UNCONNECTED[3:0]),
        .S({pwm_out_buf1_carry_i_1_n_0,pwm_out_buf1_carry_i_2_n_0,pwm_out_buf1_carry_i_3_n_0,pwm_out_buf1_carry_i_4_n_0}));
  CARRY4 pwm_out_buf1_carry__0
       (.CI(pwm_out_buf1_carry_n_0),
        .CO({NLW_pwm_out_buf1_carry__0_CO_UNCONNECTED[3],CO,pwm_out_buf1_carry__0_n_2,pwm_out_buf1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out_buf1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,pwm_out_buf1_carry__0_i_1_n_0,pwm_out_buf1_carry__0_i_2_n_0,pwm_out_buf1_carry__0_i_3_n_0}));
  LUT3 #(
    .INIT(8'h09)) 
    pwm_out_buf1_carry__0_i_1
       (.I0(\half_duty_reg_n_0_[18] ),
        .I1(\count_reg_n_0_[18] ),
        .I2(\count_reg_n_0_[19] ),
        .O(pwm_out_buf1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out_buf1_carry__0_i_2
       (.I0(\half_duty_reg_n_0_[17] ),
        .I1(\count_reg_n_0_[17] ),
        .I2(\half_duty_reg_n_0_[16] ),
        .I3(\count_reg_n_0_[16] ),
        .I4(\count_reg_n_0_[15] ),
        .I5(\half_duty_reg_n_0_[15] ),
        .O(pwm_out_buf1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out_buf1_carry__0_i_3
       (.I0(\half_duty_reg_n_0_[14] ),
        .I1(\count_reg_n_0_[14] ),
        .I2(\half_duty_reg_n_0_[13] ),
        .I3(\count_reg_n_0_[13] ),
        .I4(\count_reg_n_0_[12] ),
        .I5(\half_duty_reg_n_0_[12] ),
        .O(pwm_out_buf1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out_buf1_carry_i_1
       (.I0(\half_duty_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[11] ),
        .I2(\half_duty_reg_n_0_[10] ),
        .I3(\count_reg_n_0_[10] ),
        .I4(\count_reg_n_0_[9] ),
        .I5(\half_duty_reg_n_0_[9] ),
        .O(pwm_out_buf1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out_buf1_carry_i_2
       (.I0(\half_duty_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[8] ),
        .I2(\half_duty_reg_n_0_[7] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[6] ),
        .I5(\half_duty_reg_n_0_[6] ),
        .O(pwm_out_buf1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out_buf1_carry_i_3
       (.I0(\half_duty_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\half_duty_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\half_duty_reg_n_0_[3] ),
        .O(pwm_out_buf1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8200008241000041)) 
    pwm_out_buf1_carry_i_4
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\half_duty_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\half_duty_reg_n_0_[0] ),
        .I5(\half_duty_reg_n_0_[1] ),
        .O(pwm_out_buf1_carry_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pwm_out_buf_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(pwm_out_buf_reg_1),
        .Q(servo_pwm_out));
endmodule

(* ORIG_REF_NAME = "PWM_Driver" *) 
module design_1_MotionController_0_0_PWM_Driver__parameterized1
   (motor_left_pwm_out,
    pwm_out_buf_reg_0,
    pwm_out_buf_reg_1,
    Q,
    pwm_out_buf_reg_2,
    s00_axi_aclk,
    \slv_reg0_reg[0] ,
    enable);
  output motor_left_pwm_out;
  output [0:0]pwm_out_buf_reg_0;
  output [0:0]pwm_out_buf_reg_1;
  input [15:0]Q;
  input pwm_out_buf_reg_2;
  input s00_axi_aclk;
  input [0:0]\slv_reg0_reg[0] ;
  input enable;

  wire [15:0]Q;
  wire [8:0]count;
  wire \count[5]_i_2_n_0 ;
  wire \count[5]_i_3_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire \count[7]_i_2_n_0 ;
  wire \count[7]_i_3_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire disabled;
  wire disabled0;
  wire disabled02_out;
  wire enable;
  wire half_duty0;
  wire [7:0]half_duty_new;
  wire [6:0]half_duty_new10_in;
  wire [14:1]half_duty_new4;
  wire half_duty_new4_carry__0_i_10__0_n_0;
  wire half_duty_new4_carry__0_i_11__0_n_0;
  wire half_duty_new4_carry__0_i_12__0_n_0;
  wire half_duty_new4_carry__0_i_13__0_n_0;
  wire half_duty_new4_carry__0_i_1_n_0;
  wire half_duty_new4_carry__0_i_2_n_0;
  wire half_duty_new4_carry__0_i_3_n_0;
  wire half_duty_new4_carry__0_i_4_n_0;
  wire half_duty_new4_carry__0_i_5_n_0;
  wire half_duty_new4_carry__0_i_6_n_0;
  wire half_duty_new4_carry__0_i_7_n_0;
  wire half_duty_new4_carry__0_i_8_n_0;
  wire half_duty_new4_carry__0_i_9__0_n_0;
  wire half_duty_new4_carry__0_i_9__0_n_1;
  wire half_duty_new4_carry__0_i_9__0_n_2;
  wire half_duty_new4_carry__0_i_9__0_n_3;
  wire half_duty_new4_carry__0_n_0;
  wire half_duty_new4_carry__0_n_1;
  wire half_duty_new4_carry__0_n_2;
  wire half_duty_new4_carry__0_n_3;
  wire half_duty_new4_carry__1_i_1__0_n_0;
  wire half_duty_new4_carry__1_i_2_n_0;
  wire half_duty_new4_carry__1_i_3__0_n_0;
  wire half_duty_new4_carry__1_i_4__0_n_0;
  wire half_duty_new4_carry__1_i_5_n_0;
  wire half_duty_new4_carry__1_i_6_n_0;
  wire half_duty_new4_carry__1_i_7__0_n_0;
  wire half_duty_new4_carry__1_i_8__0_n_0;
  wire half_duty_new4_carry__1_n_0;
  wire half_duty_new4_carry__1_n_1;
  wire half_duty_new4_carry__1_n_2;
  wire half_duty_new4_carry__1_n_3;
  wire half_duty_new4_carry__2_i_1__0_n_0;
  wire half_duty_new4_carry__2_i_2__0_n_0;
  wire half_duty_new4_carry__2_i_3__0_n_0;
  wire half_duty_new4_carry__2_i_4__0_n_0;
  wire half_duty_new4_carry__2_i_5_n_0;
  wire half_duty_new4_carry__2_i_6_n_0;
  wire half_duty_new4_carry__2_i_7_n_0;
  wire half_duty_new4_carry__2_n_0;
  wire half_duty_new4_carry__2_n_1;
  wire half_duty_new4_carry__2_n_2;
  wire half_duty_new4_carry__2_n_3;
  wire half_duty_new4_carry_i_10__0_n_0;
  wire half_duty_new4_carry_i_11__0_n_0;
  wire half_duty_new4_carry_i_11__0_n_1;
  wire half_duty_new4_carry_i_11__0_n_2;
  wire half_duty_new4_carry_i_11__0_n_3;
  wire half_duty_new4_carry_i_12__0_n_0;
  wire half_duty_new4_carry_i_13__0_n_0;
  wire half_duty_new4_carry_i_14__0_n_0;
  wire half_duty_new4_carry_i_15__0_n_0;
  wire half_duty_new4_carry_i_16__0_n_0;
  wire half_duty_new4_carry_i_17__0_n_0;
  wire half_duty_new4_carry_i_18__0_n_0;
  wire half_duty_new4_carry_i_19__0_n_0;
  wire half_duty_new4_carry_i_1_n_0;
  wire half_duty_new4_carry_i_20__0_n_0;
  wire half_duty_new4_carry_i_2_n_0;
  wire half_duty_new4_carry_i_3_n_0;
  wire half_duty_new4_carry_i_4__0_n_0;
  wire half_duty_new4_carry_i_5_n_0;
  wire half_duty_new4_carry_i_6_n_0;
  wire half_duty_new4_carry_i_7_n_0;
  wire half_duty_new4_carry_i_8_n_0;
  wire half_duty_new4_carry_i_9__0_n_0;
  wire half_duty_new4_carry_i_9__0_n_1;
  wire half_duty_new4_carry_i_9__0_n_2;
  wire half_duty_new4_carry_i_9__0_n_3;
  wire half_duty_new4_carry_n_0;
  wire half_duty_new4_carry_n_1;
  wire half_duty_new4_carry_n_2;
  wire half_duty_new4_carry_n_3;
  wire half_duty_new50_carry__0_i_1_n_0;
  wire half_duty_new50_carry__0_i_2_n_0;
  wire half_duty_new50_carry__0_i_3_n_0;
  wire half_duty_new50_carry__0_i_4_n_0;
  wire half_duty_new50_carry__0_n_0;
  wire half_duty_new50_carry__0_n_1;
  wire half_duty_new50_carry__0_n_2;
  wire half_duty_new50_carry__0_n_3;
  wire half_duty_new50_carry__1_i_1_n_0;
  wire half_duty_new50_carry__1_i_2_n_0;
  wire half_duty_new50_carry__1_i_3_n_0;
  wire half_duty_new50_carry__1_i_4_n_0;
  wire half_duty_new50_carry__1_n_0;
  wire half_duty_new50_carry__1_n_1;
  wire half_duty_new50_carry__1_n_2;
  wire half_duty_new50_carry__1_n_3;
  wire half_duty_new50_carry__2_i_1_n_0;
  wire half_duty_new50_carry__2_i_2_n_0;
  wire half_duty_new50_carry__2_i_3_n_0;
  wire half_duty_new50_carry__2_i_4_n_0;
  wire half_duty_new50_carry__2_n_0;
  wire half_duty_new50_carry__2_n_1;
  wire half_duty_new50_carry__2_n_2;
  wire half_duty_new50_carry__2_n_3;
  wire half_duty_new50_carry__3_i_1_n_0;
  wire half_duty_new50_carry__3_i_2_n_0;
  wire half_duty_new50_carry__3_i_3_n_0;
  wire half_duty_new50_carry__3_i_4_n_0;
  wire half_duty_new50_carry__3_n_0;
  wire half_duty_new50_carry__3_n_1;
  wire half_duty_new50_carry__3_n_2;
  wire half_duty_new50_carry__3_n_3;
  wire half_duty_new50_carry__4_i_1_n_0;
  wire half_duty_new50_carry__4_i_2_n_0;
  wire half_duty_new50_carry__4_i_3_n_0;
  wire half_duty_new50_carry__4_i_4_n_0;
  wire half_duty_new50_carry__4_n_0;
  wire half_duty_new50_carry__4_n_1;
  wire half_duty_new50_carry__4_n_2;
  wire half_duty_new50_carry__4_n_3;
  wire half_duty_new50_carry__5_i_1_n_0;
  wire half_duty_new50_carry__5_i_2_n_0;
  wire half_duty_new50_carry__5_n_1;
  wire half_duty_new50_carry__5_n_3;
  wire half_duty_new50_carry_i_2_n_0;
  wire half_duty_new50_carry_i_3_n_0;
  wire half_duty_new50_carry_i_4_n_0;
  wire half_duty_new50_carry_n_0;
  wire half_duty_new50_carry_n_1;
  wire half_duty_new50_carry_n_2;
  wire half_duty_new50_carry_n_3;
  wire [1:0]half_duty_new52;
  wire [26:16]half_duty_new6__0;
  wire half_duty_new6_n_100;
  wire half_duty_new6_n_101;
  wire half_duty_new6_n_102;
  wire half_duty_new6_n_103;
  wire half_duty_new6_n_104;
  wire half_duty_new6_n_105;
  wire half_duty_new6_n_79;
  wire half_duty_new6_n_80;
  wire half_duty_new6_n_81;
  wire half_duty_new6_n_82;
  wire half_duty_new6_n_83;
  wire half_duty_new6_n_84;
  wire half_duty_new6_n_85;
  wire half_duty_new6_n_86;
  wire half_duty_new6_n_87;
  wire half_duty_new6_n_88;
  wire half_duty_new6_n_89;
  wire half_duty_new6_n_90;
  wire half_duty_new6_n_91;
  wire half_duty_new6_n_92;
  wire half_duty_new6_n_93;
  wire half_duty_new6_n_94;
  wire half_duty_new6_n_95;
  wire half_duty_new6_n_96;
  wire half_duty_new6_n_97;
  wire half_duty_new6_n_98;
  wire half_duty_new6_n_99;
  wire half_duty_new7;
  wire half_duty_new7_carry__0_i_1__0_n_0;
  wire half_duty_new7_carry__0_i_2__0_n_0;
  wire half_duty_new7_carry__0_i_3__0_n_0;
  wire half_duty_new7_carry__0_i_4__0_n_0;
  wire half_duty_new7_carry__0_i_5_n_0;
  wire half_duty_new7_carry__0_i_6_n_0;
  wire half_duty_new7_carry__0_i_7_n_0;
  wire half_duty_new7_carry__0_i_8_n_0;
  wire half_duty_new7_carry__0_n_0;
  wire half_duty_new7_carry__0_n_1;
  wire half_duty_new7_carry__0_n_2;
  wire half_duty_new7_carry__0_n_3;
  wire half_duty_new7_carry__1_i_1__0_n_0;
  wire half_duty_new7_carry__1_i_2__0_n_0;
  wire half_duty_new7_carry__1_i_3__0_n_0;
  wire half_duty_new7_carry__1_i_4__0_n_0;
  wire half_duty_new7_carry__1_i_5_n_0;
  wire half_duty_new7_carry__1_i_6_n_0;
  wire half_duty_new7_carry__1_i_7_n_0;
  wire half_duty_new7_carry__1_i_8_n_0;
  wire half_duty_new7_carry__1_n_0;
  wire half_duty_new7_carry__1_n_1;
  wire half_duty_new7_carry__1_n_2;
  wire half_duty_new7_carry__1_n_3;
  wire half_duty_new7_carry__2_i_1_n_0;
  wire half_duty_new7_carry__2_i_2__0_n_0;
  wire half_duty_new7_carry__2_i_3__0_n_0;
  wire half_duty_new7_carry__2_n_3;
  wire half_duty_new7_carry_i_1__0_n_0;
  wire half_duty_new7_carry_i_2__0_n_0;
  wire half_duty_new7_carry_i_3__0_n_0;
  wire half_duty_new7_carry_i_4__0_n_0;
  wire half_duty_new7_carry_i_5_n_0;
  wire half_duty_new7_carry_i_6_n_0;
  wire half_duty_new7_carry_i_7_n_0;
  wire half_duty_new7_carry_i_8_n_0;
  wire half_duty_new7_carry_n_0;
  wire half_duty_new7_carry_n_1;
  wire half_duty_new7_carry_n_2;
  wire half_duty_new7_carry_n_3;
  wire \half_duty_new[2]_i_2__0_n_0 ;
  wire \half_duty_new[2]_i_3_n_0 ;
  wire \half_duty_new[2]_i_4_n_0 ;
  wire \half_duty_new[3]_i_2__0_n_0 ;
  wire \half_duty_new[4]_i_2_n_0 ;
  wire \half_duty_new[5]_i_2__0_n_0 ;
  wire \half_duty_new[5]_i_3_n_0 ;
  wire \half_duty_new[5]_i_4_n_0 ;
  wire \half_duty_new[5]_i_5_n_0 ;
  wire \half_duty_new[5]_i_6_n_0 ;
  wire \half_duty_new[6]_i_4_n_0 ;
  wire \half_duty_new[6]_i_5_n_0 ;
  wire \half_duty_new[7]_i_1_n_0 ;
  wire \half_duty_new[7]_i_3_n_0 ;
  wire \half_duty_new[7]_i_4__0_n_0 ;
  wire \half_duty_new[7]_i_5__0_n_0 ;
  wire \half_duty_new[7]_i_6__0_n_0 ;
  wire \half_duty_new[7]_i_7__0_n_0 ;
  wire \half_duty_new[7]_i_8_n_0 ;
  wire \half_duty_new[7]_i_9_n_0 ;
  wire \half_duty_new_reg[6]_i_2_n_1 ;
  wire \half_duty_new_reg[6]_i_2_n_3 ;
  wire \half_duty_reg_n_0_[0] ;
  wire \half_duty_reg_n_0_[1] ;
  wire \half_duty_reg_n_0_[2] ;
  wire \half_duty_reg_n_0_[3] ;
  wire \half_duty_reg_n_0_[4] ;
  wire \half_duty_reg_n_0_[5] ;
  wire \half_duty_reg_n_0_[6] ;
  wire \half_duty_reg_n_0_[7] ;
  wire motor_left_pwm_out;
  wire [7:1]p_1_in;
  wire [0:0]p_1_out0;
  wire pwm_out_buf0_carry_i_1__0_n_0;
  wire pwm_out_buf0_carry_i_2__0_n_0;
  wire pwm_out_buf0_carry_i_3__0_n_0;
  wire pwm_out_buf0_carry_i_4__0_n_0;
  wire pwm_out_buf0_carry_i_5_n_0;
  wire pwm_out_buf0_carry_i_6_n_0;
  wire pwm_out_buf0_carry_n_2;
  wire pwm_out_buf0_carry_n_3;
  wire pwm_out_buf1_carry_i_1__0_n_0;
  wire pwm_out_buf1_carry_i_2__0_n_0;
  wire pwm_out_buf1_carry_i_3__0_n_0;
  wire pwm_out_buf1_carry_n_2;
  wire pwm_out_buf1_carry_n_3;
  wire [0:0]pwm_out_buf_reg_0;
  wire [0:0]pwm_out_buf_reg_1;
  wire pwm_out_buf_reg_2;
  wire s00_axi_aclk;
  wire [0:0]\slv_reg0_reg[0] ;
  wire [3:0]NLW_half_duty_new4_carry_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new4_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new4_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new4_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new50_carry_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new50_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new50_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_half_duty_new50_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_half_duty_new50_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_half_duty_new50_carry__5_O_UNCONNECTED;
  wire NLW_half_duty_new6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_half_duty_new6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_half_duty_new6_OVERFLOW_UNCONNECTED;
  wire NLW_half_duty_new6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_half_duty_new6_PATTERNDETECT_UNCONNECTED;
  wire NLW_half_duty_new6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_half_duty_new6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_half_duty_new6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_half_duty_new6_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_half_duty_new6_P_UNCONNECTED;
  wire [47:0]NLW_half_duty_new6_PCOUT_UNCONNECTED;
  wire [3:0]NLW_half_duty_new7_carry_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new7_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new7_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_half_duty_new7_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_half_duty_new7_carry__2_O_UNCONNECTED;
  wire [3:1]\NLW_half_duty_new_reg[6]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[6]_i_2_O_UNCONNECTED ;
  wire [3:3]NLW_pwm_out_buf0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_out_buf0_carry_O_UNCONNECTED;
  wire [3:3]NLW_pwm_out_buf1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_out_buf1_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(\count_reg_n_0_[0] ),
        .O(count[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(count[1]));
  LUT6 #(
    .INIT(64'h00FFFFFFFD000000)) 
    \count[2]_i_1__0 
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count[8]_i_2_n_0 ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[2] ),
        .O(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__0 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .O(count[3]));
  LUT6 #(
    .INIT(64'hA0B0A0B0AFB0A0B0)) 
    \count[4]_i_1__0 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count[5]_i_3_n_0 ),
        .O(count[4]));
  LUT6 #(
    .INIT(64'hAAAAFFFF30000000)) 
    \count[5]_i_1__0 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(\count[5]_i_3_n_0 ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[5] ),
        .O(count[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0FF70FFF)) 
    \count[5]_i_2 
       (.I0(\count_reg_n_0_[6] ),
        .I1(\count_reg_n_0_[7] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[8] ),
        .I5(\count[5]_i_3_n_0 ),
        .O(\count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[5]_i_3 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(\count[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FFF011F0)) 
    \count[6]_i_1__0 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count[7]_i_2_n_0 ),
        .I3(\count_reg_n_0_[6] ),
        .I4(\count[7]_i_3_n_0 ),
        .I5(\count[6]_i_2_n_0 ),
        .O(count[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[6]_i_2 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[5] ),
        .O(\count[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF858F0F0F0F0F0F0)) 
    \count[7]_i_1__0 
       (.I0(\count_reg_n_0_[6] ),
        .I1(\count[7]_i_2_n_0 ),
        .I2(\count_reg_n_0_[7] ),
        .I3(\count[7]_i_3_n_0 ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(count[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \count[7]_i_2 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h77FFFF7F)) 
    \count[7]_i_3 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[8] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[2] ),
        .O(\count[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAA8AAA)) 
    \count[8]_i_1__0 
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count[8]_i_2_n_0 ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[3] ),
        .O(count[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[8]_i_2 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[7] ),
        .I3(\count_reg_n_0_[6] ),
        .O(\count[8]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[0]),
        .Q(\count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[1]),
        .Q(\count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[2]),
        .Q(\count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[3]),
        .Q(\count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[4]),
        .Q(\count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[5]),
        .Q(\count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[6]),
        .Q(\count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[7]),
        .Q(\count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[8]),
        .Q(\count_reg_n_0_[8] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b1)) 
    disabled_reg
       (.CLR(disabled0),
        .D(disabled02_out),
        .G(disabled02_out),
        .GE(1'b1),
        .Q(disabled));
  LUT3 #(
    .INIT(8'h07)) 
    disabled_reg_i_1__0
       (.I0(\slv_reg0_reg[0] ),
        .I1(enable),
        .I2(motor_left_pwm_out),
        .O(disabled02_out));
  LUT4 #(
    .INIT(16'h4000)) 
    disabled_reg_i_2__0
       (.I0(motor_left_pwm_out),
        .I1(disabled),
        .I2(\slv_reg0_reg[0] ),
        .I3(enable),
        .O(disabled0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \half_duty[7]_i_1 
       (.I0(\count[5]_i_3_n_0 ),
        .I1(\count_reg_n_0_[2] ),
        .I2(disabled),
        .I3(\count[8]_i_2_n_0 ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[8] ),
        .O(half_duty0));
  CARRY4 half_duty_new4_carry
       (.CI(1'b0),
        .CO({half_duty_new4_carry_n_0,half_duty_new4_carry_n_1,half_duty_new4_carry_n_2,half_duty_new4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({half_duty_new4_carry_i_1_n_0,half_duty_new4_carry_i_2_n_0,half_duty_new4_carry_i_3_n_0,half_duty_new4_carry_i_4__0_n_0}),
        .O(NLW_half_duty_new4_carry_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry_i_5_n_0,half_duty_new4_carry_i_6_n_0,half_duty_new4_carry_i_7_n_0,half_duty_new4_carry_i_8_n_0}));
  CARRY4 half_duty_new4_carry__0
       (.CI(half_duty_new4_carry_n_0),
        .CO({half_duty_new4_carry__0_n_0,half_duty_new4_carry__0_n_1,half_duty_new4_carry__0_n_2,half_duty_new4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({half_duty_new4_carry__0_i_1_n_0,half_duty_new4_carry__0_i_2_n_0,half_duty_new4_carry__0_i_3_n_0,half_duty_new4_carry__0_i_4_n_0}),
        .O(NLW_half_duty_new4_carry__0_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry__0_i_5_n_0,half_duty_new4_carry__0_i_6_n_0,half_duty_new4_carry__0_i_7_n_0,half_duty_new4_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'hFF110F11)) 
    half_duty_new4_carry__0_i_1
       (.I0(half_duty_new7),
        .I1(half_duty_new50_carry__5_n_1),
        .I2(\half_duty_new_reg[6]_i_2_n_1 ),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[14]),
        .O(half_duty_new4_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h3A)) 
    half_duty_new4_carry__0_i_10__0
       (.I0(half_duty_new50_carry__5_n_1),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new7),
        .O(half_duty_new4_carry__0_i_10__0_n_0));
  LUT3 #(
    .INIT(8'h3A)) 
    half_duty_new4_carry__0_i_11__0
       (.I0(half_duty_new50_carry__5_n_1),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new7),
        .O(half_duty_new4_carry__0_i_11__0_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    half_duty_new4_carry__0_i_12__0
       (.I0(half_duty_new6__0[26]),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new7),
        .O(half_duty_new4_carry__0_i_12__0_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry__0_i_13__0
       (.I0(half_duty_new6_n_80),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[25]),
        .O(half_duty_new4_carry__0_i_13__0_n_0));
  LUT5 #(
    .INIT(32'hCDCDCD01)) 
    half_duty_new4_carry__0_i_2
       (.I0(half_duty_new7),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new50_carry__5_n_1),
        .I3(half_duty_new4[12]),
        .I4(half_duty_new4[13]),
        .O(half_duty_new4_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFC00FCAAFC00FCFF)) 
    half_duty_new4_carry__0_i_3
       (.I0(half_duty_new6__0[26]),
        .I1(half_duty_new4[10]),
        .I2(half_duty_new4[11]),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new7),
        .I5(half_duty_new50_carry__5_n_1),
        .O(half_duty_new4_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFCFCFCFCFAFAFFF0)) 
    half_duty_new4_carry__0_i_4
       (.I0(half_duty_new6_n_80),
        .I1(half_duty_new4[9]),
        .I2(\half_duty_new[7]_i_5__0_n_0 ),
        .I3(half_duty_new6__0[25]),
        .I4(half_duty_new7),
        .I5(half_duty_new6_n_79),
        .O(half_duty_new4_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h22FF22F0)) 
    half_duty_new4_carry__0_i_5
       (.I0(\half_duty_new_reg[6]_i_2_n_1 ),
        .I1(half_duty_new4[14]),
        .I2(half_duty_new50_carry__5_n_1),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new7),
        .O(half_duty_new4_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h11FF11F0)) 
    half_duty_new4_carry__0_i_6
       (.I0(half_duty_new4[13]),
        .I1(half_duty_new4[12]),
        .I2(half_duty_new50_carry__5_n_1),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new7),
        .O(half_duty_new4_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0C0C0CFC0E0E0EFE)) 
    half_duty_new4_carry__0_i_7
       (.I0(half_duty_new50_carry__5_n_1),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_79),
        .I3(half_duty_new4[11]),
        .I4(half_duty_new4[10]),
        .I5(half_duty_new6__0[26]),
        .O(half_duty_new4_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000001D00FF001D)) 
    half_duty_new4_carry__0_i_8
       (.I0(half_duty_new6__0[25]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_80),
        .I3(\half_duty_new[7]_i_5__0_n_0 ),
        .I4(half_duty_new6_n_79),
        .I5(half_duty_new4[9]),
        .O(half_duty_new4_carry__0_i_8_n_0));
  CARRY4 half_duty_new4_carry__0_i_9__0
       (.CI(half_duty_new4_carry_i_9__0_n_0),
        .CO({half_duty_new4_carry__0_i_9__0_n_0,half_duty_new4_carry__0_i_9__0_n_1,half_duty_new4_carry__0_i_9__0_n_2,half_duty_new4_carry__0_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new4[12:9]),
        .S({half_duty_new4_carry__0_i_10__0_n_0,half_duty_new4_carry__0_i_11__0_n_0,half_duty_new4_carry__0_i_12__0_n_0,half_duty_new4_carry__0_i_13__0_n_0}));
  CARRY4 half_duty_new4_carry__1
       (.CI(half_duty_new4_carry__0_n_0),
        .CO({half_duty_new4_carry__1_n_0,half_duty_new4_carry__1_n_1,half_duty_new4_carry__1_n_2,half_duty_new4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({half_duty_new4_carry__1_i_1__0_n_0,half_duty_new4_carry__1_i_2_n_0,half_duty_new4_carry__1_i_3__0_n_0,half_duty_new4_carry__1_i_4__0_n_0}),
        .O(NLW_half_duty_new4_carry__1_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry__1_i_5_n_0,half_duty_new4_carry__1_i_6_n_0,half_duty_new4_carry__1_i_7__0_n_0,half_duty_new4_carry__1_i_8__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__1_i_1__0
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2_n_1 ),
        .O(half_duty_new4_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__1_i_2
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2_n_1 ),
        .O(half_duty_new4_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__1_i_3__0
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2_n_1 ),
        .O(half_duty_new4_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__1_i_4__0
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2_n_1 ),
        .O(half_duty_new4_carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__1_i_5
       (.I0(\half_duty_new_reg[6]_i_2_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__1_i_6
       (.I0(\half_duty_new_reg[6]_i_2_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__1_i_7__0
       (.I0(\half_duty_new_reg[6]_i_2_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__1_i_7__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__1_i_8__0
       (.I0(\half_duty_new_reg[6]_i_2_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__1_i_8__0_n_0));
  CARRY4 half_duty_new4_carry__2
       (.CI(half_duty_new4_carry__1_n_0),
        .CO({half_duty_new4_carry__2_n_0,half_duty_new4_carry__2_n_1,half_duty_new4_carry__2_n_2,half_duty_new4_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,half_duty_new4_carry__2_i_1__0_n_0,half_duty_new4_carry__2_i_2__0_n_0,half_duty_new4_carry__2_i_3__0_n_0}),
        .O(NLW_half_duty_new4_carry__2_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry__2_i_4__0_n_0,half_duty_new4_carry__2_i_5_n_0,half_duty_new4_carry__2_i_6_n_0,half_duty_new4_carry__2_i_7_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__2_i_1__0
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2_n_1 ),
        .O(half_duty_new4_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__2_i_2__0
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2_n_1 ),
        .O(half_duty_new4_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__2_i_3__0
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2_n_1 ),
        .O(half_duty_new4_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__2_i_4__0
       (.I0(\half_duty_new_reg[6]_i_2_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__2_i_5
       (.I0(\half_duty_new_reg[6]_i_2_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__2_i_6
       (.I0(\half_duty_new_reg[6]_i_2_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__2_i_7
       (.I0(\half_duty_new_reg[6]_i_2_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    half_duty_new4_carry_i_1
       (.I0(\half_duty_new[5]_i_3_n_0 ),
        .I1(half_duty_new6__0[23]),
        .I2(half_duty_new7),
        .I3(half_duty_new6_n_82),
        .I4(half_duty_new6_n_79),
        .I5(half_duty_new4[7]),
        .O(half_duty_new4_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    half_duty_new4_carry_i_10__0
       (.I0(half_duty_new6__0[20]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_85),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[4]),
        .O(half_duty_new4_carry_i_10__0_n_0));
  CARRY4 half_duty_new4_carry_i_11__0
       (.CI(1'b0),
        .CO({half_duty_new4_carry_i_11__0_n_0,half_duty_new4_carry_i_11__0_n_1,half_duty_new4_carry_i_11__0_n_2,half_duty_new4_carry_i_11__0_n_3}),
        .CYINIT(half_duty_new4_carry_i_16__0_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new4[4:1]),
        .S({half_duty_new4_carry_i_17__0_n_0,half_duty_new4_carry_i_18__0_n_0,half_duty_new4_carry_i_19__0_n_0,half_duty_new4_carry_i_20__0_n_0}));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_12__0
       (.I0(half_duty_new6_n_81),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[24]),
        .O(half_duty_new4_carry_i_12__0_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_13__0
       (.I0(half_duty_new6_n_82),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[23]),
        .O(half_duty_new4_carry_i_13__0_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_14__0
       (.I0(half_duty_new6_n_83),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[22]),
        .O(half_duty_new4_carry_i_14__0_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_15__0
       (.I0(half_duty_new6_n_84),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[21]),
        .O(half_duty_new4_carry_i_15__0_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    half_duty_new4_carry_i_16__0
       (.I0(half_duty_new6__0[16]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_89),
        .O(half_duty_new4_carry_i_16__0_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_17__0
       (.I0(half_duty_new6_n_85),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[20]),
        .O(half_duty_new4_carry_i_17__0_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_18__0
       (.I0(half_duty_new6_n_86),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[19]),
        .O(half_duty_new4_carry_i_18__0_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_19__0
       (.I0(half_duty_new6_n_87),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[18]),
        .O(half_duty_new4_carry_i_19__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    half_duty_new4_carry_i_2
       (.I0(half_duty_new4_carry_i_10__0_n_0),
        .I1(half_duty_new6__0[21]),
        .I2(half_duty_new7),
        .I3(half_duty_new6_n_84),
        .I4(half_duty_new6_n_79),
        .I5(half_duty_new4[5]),
        .O(half_duty_new4_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_20__0
       (.I0(half_duty_new6_n_88),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[17]),
        .O(half_duty_new4_carry_i_20__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    half_duty_new4_carry_i_3
       (.I0(\half_duty_new[2]_i_3_n_0 ),
        .I1(half_duty_new6__0[19]),
        .I2(half_duty_new7),
        .I3(half_duty_new6_n_86),
        .I4(half_duty_new6_n_79),
        .I5(half_duty_new4[3]),
        .O(half_duty_new4_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFB8BBB888)) 
    half_duty_new4_carry_i_4__0
       (.I0(half_duty_new4[1]),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new6_n_88),
        .I3(half_duty_new7),
        .I4(half_duty_new6__0[17]),
        .I5(p_1_out0),
        .O(half_duty_new4_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h0000000047444777)) 
    half_duty_new4_carry_i_5
       (.I0(half_duty_new4[7]),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new6_n_82),
        .I3(half_duty_new7),
        .I4(half_duty_new6__0[23]),
        .I5(\half_duty_new[5]_i_3_n_0 ),
        .O(half_duty_new4_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000047444777)) 
    half_duty_new4_carry_i_6
       (.I0(half_duty_new4[5]),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new6_n_84),
        .I3(half_duty_new7),
        .I4(half_duty_new6__0[21]),
        .I5(half_duty_new4_carry_i_10__0_n_0),
        .O(half_duty_new4_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000047444777)) 
    half_duty_new4_carry_i_7
       (.I0(half_duty_new4[3]),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new6_n_86),
        .I3(half_duty_new7),
        .I4(half_duty_new6__0[19]),
        .I5(\half_duty_new[2]_i_3_n_0 ),
        .O(half_duty_new4_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    half_duty_new4_carry_i_8
       (.I0(p_1_out0),
        .I1(half_duty_new6__0[17]),
        .I2(half_duty_new7),
        .I3(half_duty_new6_n_88),
        .I4(half_duty_new6_n_79),
        .I5(half_duty_new4[1]),
        .O(half_duty_new4_carry_i_8_n_0));
  CARRY4 half_duty_new4_carry_i_9__0
       (.CI(half_duty_new4_carry_i_11__0_n_0),
        .CO({half_duty_new4_carry_i_9__0_n_0,half_duty_new4_carry_i_9__0_n_1,half_duty_new4_carry_i_9__0_n_2,half_duty_new4_carry_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new4[8:5]),
        .S({half_duty_new4_carry_i_12__0_n_0,half_duty_new4_carry_i_13__0_n_0,half_duty_new4_carry_i_14__0_n_0,half_duty_new4_carry_i_15__0_n_0}));
  CARRY4 half_duty_new50_carry
       (.CI(1'b0),
        .CO({half_duty_new50_carry_n_0,half_duty_new50_carry_n_1,half_duty_new50_carry_n_2,half_duty_new50_carry_n_3}),
        .CYINIT(half_duty_new52[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_half_duty_new50_carry_O_UNCONNECTED[3:0]),
        .S({half_duty_new50_carry_i_2_n_0,half_duty_new50_carry_i_3_n_0,half_duty_new50_carry_i_4_n_0,half_duty_new52[1]}));
  CARRY4 half_duty_new50_carry__0
       (.CI(half_duty_new50_carry_n_0),
        .CO({half_duty_new50_carry__0_n_0,half_duty_new50_carry__0_n_1,half_duty_new50_carry__0_n_2,half_duty_new50_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_half_duty_new50_carry__0_O_UNCONNECTED[3:0]),
        .S({half_duty_new50_carry__0_i_1_n_0,half_duty_new50_carry__0_i_2_n_0,half_duty_new50_carry__0_i_3_n_0,half_duty_new50_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__0_i_1
       (.I0(half_duty_new6_n_97),
        .O(half_duty_new50_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__0_i_2
       (.I0(half_duty_new6_n_98),
        .O(half_duty_new50_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__0_i_3
       (.I0(half_duty_new6_n_99),
        .O(half_duty_new50_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__0_i_4
       (.I0(half_duty_new6_n_100),
        .O(half_duty_new50_carry__0_i_4_n_0));
  CARRY4 half_duty_new50_carry__1
       (.CI(half_duty_new50_carry__0_n_0),
        .CO({half_duty_new50_carry__1_n_0,half_duty_new50_carry__1_n_1,half_duty_new50_carry__1_n_2,half_duty_new50_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_half_duty_new50_carry__1_O_UNCONNECTED[3:0]),
        .S({half_duty_new50_carry__1_i_1_n_0,half_duty_new50_carry__1_i_2_n_0,half_duty_new50_carry__1_i_3_n_0,half_duty_new50_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__1_i_1
       (.I0(half_duty_new6_n_93),
        .O(half_duty_new50_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__1_i_2
       (.I0(half_duty_new6_n_94),
        .O(half_duty_new50_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__1_i_3
       (.I0(half_duty_new6_n_95),
        .O(half_duty_new50_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__1_i_4
       (.I0(half_duty_new6_n_96),
        .O(half_duty_new50_carry__1_i_4_n_0));
  CARRY4 half_duty_new50_carry__2
       (.CI(half_duty_new50_carry__1_n_0),
        .CO({half_duty_new50_carry__2_n_0,half_duty_new50_carry__2_n_1,half_duty_new50_carry__2_n_2,half_duty_new50_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({half_duty_new6__0[16],NLW_half_duty_new50_carry__2_O_UNCONNECTED[2:0]}),
        .S({half_duty_new50_carry__2_i_1_n_0,half_duty_new50_carry__2_i_2_n_0,half_duty_new50_carry__2_i_3_n_0,half_duty_new50_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__2_i_1
       (.I0(half_duty_new6_n_89),
        .O(half_duty_new50_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__2_i_2
       (.I0(half_duty_new6_n_90),
        .O(half_duty_new50_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__2_i_3
       (.I0(half_duty_new6_n_91),
        .O(half_duty_new50_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__2_i_4
       (.I0(half_duty_new6_n_92),
        .O(half_duty_new50_carry__2_i_4_n_0));
  CARRY4 half_duty_new50_carry__3
       (.CI(half_duty_new50_carry__2_n_0),
        .CO({half_duty_new50_carry__3_n_0,half_duty_new50_carry__3_n_1,half_duty_new50_carry__3_n_2,half_duty_new50_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new6__0[20:17]),
        .S({half_duty_new50_carry__3_i_1_n_0,half_duty_new50_carry__3_i_2_n_0,half_duty_new50_carry__3_i_3_n_0,half_duty_new50_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__3_i_1
       (.I0(half_duty_new6_n_85),
        .O(half_duty_new50_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__3_i_2
       (.I0(half_duty_new6_n_86),
        .O(half_duty_new50_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__3_i_3
       (.I0(half_duty_new6_n_87),
        .O(half_duty_new50_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__3_i_4
       (.I0(half_duty_new6_n_88),
        .O(half_duty_new50_carry__3_i_4_n_0));
  CARRY4 half_duty_new50_carry__4
       (.CI(half_duty_new50_carry__3_n_0),
        .CO({half_duty_new50_carry__4_n_0,half_duty_new50_carry__4_n_1,half_duty_new50_carry__4_n_2,half_duty_new50_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new6__0[24:21]),
        .S({half_duty_new50_carry__4_i_1_n_0,half_duty_new50_carry__4_i_2_n_0,half_duty_new50_carry__4_i_3_n_0,half_duty_new50_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__4_i_1
       (.I0(half_duty_new6_n_81),
        .O(half_duty_new50_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__4_i_2
       (.I0(half_duty_new6_n_82),
        .O(half_duty_new50_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__4_i_3
       (.I0(half_duty_new6_n_83),
        .O(half_duty_new50_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__4_i_4
       (.I0(half_duty_new6_n_84),
        .O(half_duty_new50_carry__4_i_4_n_0));
  CARRY4 half_duty_new50_carry__5
       (.CI(half_duty_new50_carry__4_n_0),
        .CO({NLW_half_duty_new50_carry__5_CO_UNCONNECTED[3],half_duty_new50_carry__5_n_1,NLW_half_duty_new50_carry__5_CO_UNCONNECTED[1],half_duty_new50_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b0}),
        .O({NLW_half_duty_new50_carry__5_O_UNCONNECTED[3:2],half_duty_new6__0[26:25]}),
        .S({1'b0,1'b1,half_duty_new50_carry__5_i_1_n_0,half_duty_new50_carry__5_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__5_i_1
       (.I0(half_duty_new6_n_79),
        .O(half_duty_new50_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__5_i_2
       (.I0(half_duty_new6_n_80),
        .O(half_duty_new50_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry_i_1
       (.I0(half_duty_new6_n_105),
        .O(half_duty_new52[0]));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry_i_2
       (.I0(half_duty_new6_n_101),
        .O(half_duty_new50_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry_i_3
       (.I0(half_duty_new6_n_102),
        .O(half_duty_new50_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry_i_4
       (.I0(half_duty_new6_n_103),
        .O(half_duty_new50_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry_i_5
       (.I0(half_duty_new6_n_104),
        .O(half_duty_new52[1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    half_duty_new6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_half_duty_new6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_half_duty_new6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_half_duty_new6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_half_duty_new6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_half_duty_new6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_half_duty_new6_OVERFLOW_UNCONNECTED),
        .P({NLW_half_duty_new6_P_UNCONNECTED[47:27],half_duty_new6_n_79,half_duty_new6_n_80,half_duty_new6_n_81,half_duty_new6_n_82,half_duty_new6_n_83,half_duty_new6_n_84,half_duty_new6_n_85,half_duty_new6_n_86,half_duty_new6_n_87,half_duty_new6_n_88,half_duty_new6_n_89,half_duty_new6_n_90,half_duty_new6_n_91,half_duty_new6_n_92,half_duty_new6_n_93,half_duty_new6_n_94,half_duty_new6_n_95,half_duty_new6_n_96,half_duty_new6_n_97,half_duty_new6_n_98,half_duty_new6_n_99,half_duty_new6_n_100,half_duty_new6_n_101,half_duty_new6_n_102,half_duty_new6_n_103,half_duty_new6_n_104,half_duty_new6_n_105}),
        .PATTERNBDETECT(NLW_half_duty_new6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_half_duty_new6_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_half_duty_new6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_half_duty_new6_UNDERFLOW_UNCONNECTED));
  CARRY4 half_duty_new7_carry
       (.CI(1'b0),
        .CO({half_duty_new7_carry_n_0,half_duty_new7_carry_n_1,half_duty_new7_carry_n_2,half_duty_new7_carry_n_3}),
        .CYINIT(1'b1),
        .DI({half_duty_new7_carry_i_1__0_n_0,half_duty_new7_carry_i_2__0_n_0,half_duty_new7_carry_i_3__0_n_0,half_duty_new7_carry_i_4__0_n_0}),
        .O(NLW_half_duty_new7_carry_O_UNCONNECTED[3:0]),
        .S({half_duty_new7_carry_i_5_n_0,half_duty_new7_carry_i_6_n_0,half_duty_new7_carry_i_7_n_0,half_duty_new7_carry_i_8_n_0}));
  CARRY4 half_duty_new7_carry__0
       (.CI(half_duty_new7_carry_n_0),
        .CO({half_duty_new7_carry__0_n_0,half_duty_new7_carry__0_n_1,half_duty_new7_carry__0_n_2,half_duty_new7_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({half_duty_new7_carry__0_i_1__0_n_0,half_duty_new7_carry__0_i_2__0_n_0,half_duty_new7_carry__0_i_3__0_n_0,half_duty_new7_carry__0_i_4__0_n_0}),
        .O(NLW_half_duty_new7_carry__0_O_UNCONNECTED[3:0]),
        .S({half_duty_new7_carry__0_i_5_n_0,half_duty_new7_carry__0_i_6_n_0,half_duty_new7_carry__0_i_7_n_0,half_duty_new7_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__0_i_1__0
       (.I0(half_duty_new6_n_91),
        .I1(half_duty_new6_n_90),
        .O(half_duty_new7_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__0_i_2__0
       (.I0(half_duty_new6_n_93),
        .I1(half_duty_new6_n_92),
        .O(half_duty_new7_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__0_i_3__0
       (.I0(half_duty_new6_n_95),
        .I1(half_duty_new6_n_94),
        .O(half_duty_new7_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__0_i_4__0
       (.I0(half_duty_new6_n_97),
        .I1(half_duty_new6_n_96),
        .O(half_duty_new7_carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__0_i_5
       (.I0(half_duty_new6_n_90),
        .I1(half_duty_new6_n_91),
        .O(half_duty_new7_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__0_i_6
       (.I0(half_duty_new6_n_92),
        .I1(half_duty_new6_n_93),
        .O(half_duty_new7_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__0_i_7
       (.I0(half_duty_new6_n_94),
        .I1(half_duty_new6_n_95),
        .O(half_duty_new7_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__0_i_8
       (.I0(half_duty_new6_n_96),
        .I1(half_duty_new6_n_97),
        .O(half_duty_new7_carry__0_i_8_n_0));
  CARRY4 half_duty_new7_carry__1
       (.CI(half_duty_new7_carry__0_n_0),
        .CO({half_duty_new7_carry__1_n_0,half_duty_new7_carry__1_n_1,half_duty_new7_carry__1_n_2,half_duty_new7_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({half_duty_new7_carry__1_i_1__0_n_0,half_duty_new7_carry__1_i_2__0_n_0,half_duty_new7_carry__1_i_3__0_n_0,half_duty_new7_carry__1_i_4__0_n_0}),
        .O(NLW_half_duty_new7_carry__1_O_UNCONNECTED[3:0]),
        .S({half_duty_new7_carry__1_i_5_n_0,half_duty_new7_carry__1_i_6_n_0,half_duty_new7_carry__1_i_7_n_0,half_duty_new7_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__1_i_1__0
       (.I0(half_duty_new6_n_83),
        .I1(half_duty_new6_n_82),
        .O(half_duty_new7_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__1_i_2__0
       (.I0(half_duty_new6_n_85),
        .I1(half_duty_new6_n_84),
        .O(half_duty_new7_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__1_i_3__0
       (.I0(half_duty_new6_n_87),
        .I1(half_duty_new6_n_86),
        .O(half_duty_new7_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__1_i_4__0
       (.I0(half_duty_new6_n_89),
        .I1(half_duty_new6_n_88),
        .O(half_duty_new7_carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__1_i_5
       (.I0(half_duty_new6_n_82),
        .I1(half_duty_new6_n_83),
        .O(half_duty_new7_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__1_i_6
       (.I0(half_duty_new6_n_84),
        .I1(half_duty_new6_n_85),
        .O(half_duty_new7_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__1_i_7
       (.I0(half_duty_new6_n_86),
        .I1(half_duty_new6_n_87),
        .O(half_duty_new7_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__1_i_8
       (.I0(half_duty_new6_n_88),
        .I1(half_duty_new6_n_89),
        .O(half_duty_new7_carry__1_i_8_n_0));
  CARRY4 half_duty_new7_carry__2
       (.CI(half_duty_new7_carry__1_n_0),
        .CO({NLW_half_duty_new7_carry__2_CO_UNCONNECTED[3:2],half_duty_new7,half_duty_new7_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,half_duty_new7_carry__2_i_1_n_0}),
        .O(NLW_half_duty_new7_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,half_duty_new7_carry__2_i_2__0_n_0,half_duty_new7_carry__2_i_3__0_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__2_i_1
       (.I0(half_duty_new6_n_81),
        .I1(half_duty_new6_n_80),
        .O(half_duty_new7_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new7_carry__2_i_2__0
       (.I0(half_duty_new6_n_79),
        .O(half_duty_new7_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__2_i_3__0
       (.I0(half_duty_new6_n_80),
        .I1(half_duty_new6_n_81),
        .O(half_duty_new7_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry_i_1__0
       (.I0(half_duty_new6_n_99),
        .I1(half_duty_new6_n_98),
        .O(half_duty_new7_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry_i_2__0
       (.I0(half_duty_new6_n_101),
        .I1(half_duty_new6_n_100),
        .O(half_duty_new7_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry_i_3__0
       (.I0(half_duty_new6_n_103),
        .I1(half_duty_new6_n_102),
        .O(half_duty_new7_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry_i_4__0
       (.I0(half_duty_new6_n_105),
        .I1(half_duty_new6_n_104),
        .O(half_duty_new7_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry_i_5
       (.I0(half_duty_new6_n_98),
        .I1(half_duty_new6_n_99),
        .O(half_duty_new7_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry_i_6
       (.I0(half_duty_new6_n_100),
        .I1(half_duty_new6_n_101),
        .O(half_duty_new7_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry_i_7
       (.I0(half_duty_new6_n_102),
        .I1(half_duty_new6_n_103),
        .O(half_duty_new7_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry_i_8
       (.I0(half_duty_new6_n_104),
        .I1(half_duty_new6_n_105),
        .O(half_duty_new7_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF4700B8)) 
    \half_duty_new[0]_i_1__0 
       (.I0(half_duty_new6_n_89),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[16]),
        .I3(half_duty_new4_carry__2_n_0),
        .I4(\half_duty_new[2]_i_4_n_0 ),
        .O(half_duty_new10_in[0]));
  LUT6 #(
    .INIT(64'hD20FD22DF02DF0F0)) 
    \half_duty_new[1]_i_1 
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2_n_1 ),
        .I2(\half_duty_new[2]_i_3_n_0 ),
        .I3(half_duty_new4_carry__2_n_0),
        .I4(p_1_out0),
        .I5(\half_duty_new[2]_i_4_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h636969C9696969CC)) 
    \half_duty_new[2]_i_1 
       (.I0(\half_duty_new[7]_i_3_n_0 ),
        .I1(\half_duty_new[2]_i_2__0_n_0 ),
        .I2(half_duty_new4_carry__2_n_0),
        .I3(\half_duty_new[2]_i_3_n_0 ),
        .I4(\half_duty_new[2]_i_4_n_0 ),
        .I5(p_1_out0),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[2]_i_2__0 
       (.I0(half_duty_new6__0[19]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_86),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[3]),
        .O(\half_duty_new[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[2]_i_3 
       (.I0(half_duty_new6__0[18]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_87),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[2]),
        .O(\half_duty_new[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[2]_i_4 
       (.I0(half_duty_new6__0[17]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_88),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[1]),
        .O(\half_duty_new[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \half_duty_new[2]_i_5 
       (.I0(half_duty_new6_n_89),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[16]),
        .O(p_1_out0));
  LUT4 #(
    .INIT(16'hFD02)) 
    \half_duty_new[3]_i_1 
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2_n_1 ),
        .I2(\half_duty_new[3]_i_2__0_n_0 ),
        .I3(half_duty_new10_in[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h20040005)) 
    \half_duty_new[3]_i_2__0 
       (.I0(\half_duty_new[2]_i_2__0_n_0 ),
        .I1(half_duty_new4_carry__2_n_0),
        .I2(\half_duty_new[2]_i_3_n_0 ),
        .I3(\half_duty_new[2]_i_4_n_0 ),
        .I4(p_1_out0),
        .O(\half_duty_new[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF0100FE)) 
    \half_duty_new[3]_i_3 
       (.I0(\half_duty_new[2]_i_2__0_n_0 ),
        .I1(\half_duty_new[2]_i_3_n_0 ),
        .I2(half_duty_new4_carry_i_4__0_n_0),
        .I3(half_duty_new4_carry__2_n_0),
        .I4(half_duty_new4_carry_i_10__0_n_0),
        .O(half_duty_new10_in[3]));
  LUT4 #(
    .INIT(16'hDF20)) 
    \half_duty_new[4]_i_1 
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2_n_1 ),
        .I2(\half_duty_new[4]_i_2_n_0 ),
        .I3(half_duty_new10_in[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFAFFFE)) 
    \half_duty_new[4]_i_2 
       (.I0(half_duty_new4_carry_i_10__0_n_0),
        .I1(p_1_out0),
        .I2(\half_duty_new[2]_i_4_n_0 ),
        .I3(\half_duty_new[2]_i_3_n_0 ),
        .I4(half_duty_new4_carry__2_n_0),
        .I5(\half_duty_new[2]_i_2__0_n_0 ),
        .O(\half_duty_new[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00010000FFFE)) 
    \half_duty_new[4]_i_3__0 
       (.I0(half_duty_new4_carry_i_4__0_n_0),
        .I1(\half_duty_new[2]_i_3_n_0 ),
        .I2(\half_duty_new[2]_i_2__0_n_0 ),
        .I3(half_duty_new4_carry_i_10__0_n_0),
        .I4(half_duty_new4_carry__2_n_0),
        .I5(\half_duty_new[7]_i_9_n_0 ),
        .O(half_duty_new10_in[4]));
  LUT6 #(
    .INIT(64'hD2D2D2D2D2D22DD2)) 
    \half_duty_new[5]_i_1__0 
       (.I0(\half_duty_new[5]_i_2__0_n_0 ),
        .I1(half_duty_new4_carry__2_n_0),
        .I2(\half_duty_new[5]_i_3_n_0 ),
        .I3(half_duty_new6_n_79),
        .I4(\half_duty_new_reg[6]_i_2_n_1 ),
        .I5(\half_duty_new[5]_i_4_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \half_duty_new[5]_i_2__0 
       (.I0(\half_duty_new[7]_i_9_n_0 ),
        .I1(half_duty_new4_carry_i_10__0_n_0),
        .I2(\half_duty_new[2]_i_2__0_n_0 ),
        .I3(\half_duty_new[2]_i_3_n_0 ),
        .I4(\half_duty_new[2]_i_4_n_0 ),
        .I5(p_1_out0),
        .O(\half_duty_new[5]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[5]_i_3 
       (.I0(half_duty_new6__0[22]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_83),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[6]),
        .O(\half_duty_new[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000001104000010)) 
    \half_duty_new[5]_i_4 
       (.I0(\half_duty_new[5]_i_5_n_0 ),
        .I1(\half_duty_new[7]_i_9_n_0 ),
        .I2(half_duty_new4_carry__2_n_0),
        .I3(half_duty_new4_carry_i_10__0_n_0),
        .I4(\half_duty_new[2]_i_2__0_n_0 ),
        .I5(\half_duty_new[5]_i_6_n_0 ),
        .O(\half_duty_new[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFDDDFFFBABBBAAA)) 
    \half_duty_new[5]_i_5 
       (.I0(\half_duty_new[2]_i_3_n_0 ),
        .I1(half_duty_new4_carry__2_n_0),
        .I2(half_duty_new6_n_89),
        .I3(half_duty_new7),
        .I4(half_duty_new6__0[16]),
        .I5(\half_duty_new[2]_i_4_n_0 ),
        .O(\half_duty_new[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000047)) 
    \half_duty_new[5]_i_6 
       (.I0(half_duty_new6_n_89),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[16]),
        .I3(\half_duty_new[2]_i_4_n_0 ),
        .I4(\half_duty_new[2]_i_3_n_0 ),
        .O(\half_duty_new[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \half_duty_new[6]_i_1 
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2_n_1 ),
        .I2(\half_duty_new[7]_i_4__0_n_0 ),
        .I3(half_duty_new10_in[6]),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hAB54)) 
    \half_duty_new[6]_i_3 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(\half_duty_new[5]_i_2__0_n_0 ),
        .I2(\half_duty_new[5]_i_3_n_0 ),
        .I3(\half_duty_new[7]_i_7__0_n_0 ),
        .O(half_duty_new10_in[6]));
  LUT3 #(
    .INIT(8'h3A)) 
    \half_duty_new[6]_i_4 
       (.I0(half_duty_new50_carry__5_n_1),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new7),
        .O(\half_duty_new[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \half_duty_new[6]_i_5 
       (.I0(half_duty_new50_carry__5_n_1),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new7),
        .O(\half_duty_new[6]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new[7]_i_1 
       (.I0(disabled),
        .O(\half_duty_new[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5AA55A87787878A5)) 
    \half_duty_new[7]_i_2__0 
       (.I0(\half_duty_new[7]_i_3_n_0 ),
        .I1(\half_duty_new[7]_i_4__0_n_0 ),
        .I2(\half_duty_new[7]_i_5__0_n_0 ),
        .I3(half_duty_new4_carry__2_n_0),
        .I4(\half_duty_new[7]_i_6__0_n_0 ),
        .I5(\half_duty_new[7]_i_7__0_n_0 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new[7]_i_3 
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2_n_1 ),
        .O(\half_duty_new[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFAFEFFFFFFFF)) 
    \half_duty_new[7]_i_4__0 
       (.I0(\half_duty_new[5]_i_3_n_0 ),
        .I1(\half_duty_new[7]_i_8_n_0 ),
        .I2(half_duty_new4_carry_i_10__0_n_0),
        .I3(half_duty_new4_carry__2_n_0),
        .I4(\half_duty_new[7]_i_9_n_0 ),
        .I5(\half_duty_new[3]_i_2__0_n_0 ),
        .O(\half_duty_new[7]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[7]_i_5__0 
       (.I0(half_duty_new6__0[24]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_81),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[8]),
        .O(\half_duty_new[7]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h1015101010151515)) 
    \half_duty_new[7]_i_6__0 
       (.I0(\half_duty_new[5]_i_2__0_n_0 ),
        .I1(half_duty_new4[6]),
        .I2(half_duty_new6_n_79),
        .I3(half_duty_new6_n_83),
        .I4(half_duty_new7),
        .I5(half_duty_new6__0[22]),
        .O(\half_duty_new[7]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[7]_i_7__0 
       (.I0(half_duty_new6__0[23]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_82),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[7]),
        .O(\half_duty_new[7]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFFFE)) 
    \half_duty_new[7]_i_8 
       (.I0(\half_duty_new[2]_i_2__0_n_0 ),
        .I1(\half_duty_new[2]_i_3_n_0 ),
        .I2(\half_duty_new[2]_i_4_n_0 ),
        .I3(half_duty_new6__0[16]),
        .I4(half_duty_new7),
        .I5(half_duty_new6_n_89),
        .O(\half_duty_new[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[7]_i_9 
       (.I0(half_duty_new6__0[21]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_84),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[5]),
        .O(\half_duty_new[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1_n_0 ),
        .D(half_duty_new10_in[0]),
        .Q(half_duty_new[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(half_duty_new[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(half_duty_new[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(half_duty_new[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(half_duty_new[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(half_duty_new[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(half_duty_new[6]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[6]_i_2 
       (.CI(half_duty_new4_carry__0_i_9__0_n_0),
        .CO({\NLW_half_duty_new_reg[6]_i_2_CO_UNCONNECTED [3],\half_duty_new_reg[6]_i_2_n_1 ,\NLW_half_duty_new_reg[6]_i_2_CO_UNCONNECTED [1],\half_duty_new_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_half_duty_new_reg[6]_i_2_O_UNCONNECTED [3:2],half_duty_new4[14:13]}),
        .S({1'b0,1'b1,\half_duty_new[6]_i_4_n_0 ,\half_duty_new[6]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(half_duty_new[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[0] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[0]),
        .Q(\half_duty_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[1] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[1]),
        .Q(\half_duty_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[2] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[2]),
        .Q(\half_duty_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[3] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[3]),
        .Q(\half_duty_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[4] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[4]),
        .Q(\half_duty_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[5] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[5]),
        .Q(\half_duty_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[6] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[6]),
        .Q(\half_duty_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[7] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[7]),
        .Q(\half_duty_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 pwm_out_buf0_carry
       (.CI(1'b0),
        .CO({NLW_pwm_out_buf0_carry_CO_UNCONNECTED[3],pwm_out_buf_reg_1,pwm_out_buf0_carry_n_2,pwm_out_buf0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out_buf0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,pwm_out_buf0_carry_i_1__0_n_0,pwm_out_buf0_carry_i_2__0_n_0,pwm_out_buf0_carry_i_3__0_n_0}));
  LUT6 #(
    .INIT(64'h1004088008800440)) 
    pwm_out_buf0_carry_i_1__0
       (.I0(pwm_out_buf0_carry_i_4__0_n_0),
        .I1(\count_reg_n_0_[8] ),
        .I2(\half_duty_reg_n_0_[7] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[6] ),
        .I5(\half_duty_reg_n_0_[6] ),
        .O(pwm_out_buf0_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h4200002800424200)) 
    pwm_out_buf0_carry_i_2__0
       (.I0(pwm_out_buf0_carry_i_5_n_0),
        .I1(\half_duty_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\half_duty_reg_n_0_[3] ),
        .I5(pwm_out_buf0_carry_i_6_n_0),
        .O(pwm_out_buf0_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0090090090000006)) 
    pwm_out_buf0_carry_i_3__0
       (.I0(\half_duty_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\half_duty_reg_n_0_[1] ),
        .I4(\half_duty_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[1] ),
        .O(pwm_out_buf0_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h77777777777FFFFF)) 
    pwm_out_buf0_carry_i_4__0
       (.I0(\half_duty_reg_n_0_[5] ),
        .I1(\half_duty_reg_n_0_[4] ),
        .I2(\half_duty_reg_n_0_[1] ),
        .I3(\half_duty_reg_n_0_[0] ),
        .I4(\half_duty_reg_n_0_[2] ),
        .I5(\half_duty_reg_n_0_[3] ),
        .O(pwm_out_buf0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pwm_out_buf0_carry_i_5
       (.I0(\half_duty_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[5] ),
        .O(pwm_out_buf0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    pwm_out_buf0_carry_i_6
       (.I0(\half_duty_reg_n_0_[1] ),
        .I1(\half_duty_reg_n_0_[0] ),
        .I2(\half_duty_reg_n_0_[2] ),
        .O(pwm_out_buf0_carry_i_6_n_0));
  CARRY4 pwm_out_buf1_carry
       (.CI(1'b0),
        .CO({NLW_pwm_out_buf1_carry_CO_UNCONNECTED[3],pwm_out_buf_reg_0,pwm_out_buf1_carry_n_2,pwm_out_buf1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out_buf1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,pwm_out_buf1_carry_i_1__0_n_0,pwm_out_buf1_carry_i_2__0_n_0,pwm_out_buf1_carry_i_3__0_n_0}));
  LUT5 #(
    .INIT(32'h21000021)) 
    pwm_out_buf1_carry_i_1__0
       (.I0(\half_duty_reg_n_0_[6] ),
        .I1(\count_reg_n_0_[8] ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\half_duty_reg_n_0_[7] ),
        .O(pwm_out_buf1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out_buf1_carry_i_2__0
       (.I0(\half_duty_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\half_duty_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\half_duty_reg_n_0_[3] ),
        .O(pwm_out_buf1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h8421000000008421)) 
    pwm_out_buf1_carry_i_3__0
       (.I0(\half_duty_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\half_duty_reg_n_0_[0] ),
        .I4(\half_duty_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[2] ),
        .O(pwm_out_buf1_carry_i_3__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pwm_out_buf_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(pwm_out_buf_reg_2),
        .Q(motor_left_pwm_out));
endmodule

(* ORIG_REF_NAME = "PWM_Driver" *) 
module design_1_MotionController_0_0_PWM_Driver__parameterized1_0
   (motor_right_pwm_out,
    pwm_out_buf_reg_0,
    pwm_out_buf_reg_1,
    Q,
    pwm_out_buf_reg_2,
    s00_axi_aclk,
    \slv_reg0_reg[0] ,
    enable);
  output motor_right_pwm_out;
  output [0:0]pwm_out_buf_reg_0;
  output [0:0]pwm_out_buf_reg_1;
  input [15:0]Q;
  input pwm_out_buf_reg_2;
  input s00_axi_aclk;
  input [0:0]\slv_reg0_reg[0] ;
  input enable;

  wire [15:0]Q;
  wire [8:0]count;
  wire \count[5]_i_2__0_n_0 ;
  wire \count[5]_i_3__0_n_0 ;
  wire \count[6]_i_2__0_n_0 ;
  wire \count[7]_i_2__0_n_0 ;
  wire \count[7]_i_3__0_n_0 ;
  wire \count[8]_i_2__0_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire disabled;
  wire disabled0;
  wire disabled02_out;
  wire enable;
  wire half_duty0;
  wire [7:0]half_duty_new;
  wire [6:0]half_duty_new10_in;
  wire [14:1]half_duty_new4;
  wire half_duty_new4_carry__0_i_10__1_n_0;
  wire half_duty_new4_carry__0_i_11__1_n_0;
  wire half_duty_new4_carry__0_i_12__1_n_0;
  wire half_duty_new4_carry__0_i_13__1_n_0;
  wire half_duty_new4_carry__0_i_1__0_n_0;
  wire half_duty_new4_carry__0_i_2__0_n_0;
  wire half_duty_new4_carry__0_i_3__0_n_0;
  wire half_duty_new4_carry__0_i_4__0_n_0;
  wire half_duty_new4_carry__0_i_5__0_n_0;
  wire half_duty_new4_carry__0_i_6__0_n_0;
  wire half_duty_new4_carry__0_i_7__0_n_0;
  wire half_duty_new4_carry__0_i_8__0_n_0;
  wire half_duty_new4_carry__0_i_9__1_n_0;
  wire half_duty_new4_carry__0_i_9__1_n_1;
  wire half_duty_new4_carry__0_i_9__1_n_2;
  wire half_duty_new4_carry__0_i_9__1_n_3;
  wire half_duty_new4_carry__0_n_0;
  wire half_duty_new4_carry__0_n_1;
  wire half_duty_new4_carry__0_n_2;
  wire half_duty_new4_carry__0_n_3;
  wire half_duty_new4_carry__1_i_1__1_n_0;
  wire half_duty_new4_carry__1_i_2__0_n_0;
  wire half_duty_new4_carry__1_i_3__1_n_0;
  wire half_duty_new4_carry__1_i_4__1_n_0;
  wire half_duty_new4_carry__1_i_5__0_n_0;
  wire half_duty_new4_carry__1_i_6__0_n_0;
  wire half_duty_new4_carry__1_i_7__1_n_0;
  wire half_duty_new4_carry__1_i_8__1_n_0;
  wire half_duty_new4_carry__1_n_0;
  wire half_duty_new4_carry__1_n_1;
  wire half_duty_new4_carry__1_n_2;
  wire half_duty_new4_carry__1_n_3;
  wire half_duty_new4_carry__2_i_1__1_n_0;
  wire half_duty_new4_carry__2_i_2__1_n_0;
  wire half_duty_new4_carry__2_i_3__1_n_0;
  wire half_duty_new4_carry__2_i_4__1_n_0;
  wire half_duty_new4_carry__2_i_5__0_n_0;
  wire half_duty_new4_carry__2_i_6__0_n_0;
  wire half_duty_new4_carry__2_i_7__0_n_0;
  wire half_duty_new4_carry__2_n_0;
  wire half_duty_new4_carry__2_n_1;
  wire half_duty_new4_carry__2_n_2;
  wire half_duty_new4_carry__2_n_3;
  wire half_duty_new4_carry_i_10__1_n_0;
  wire half_duty_new4_carry_i_11__1_n_0;
  wire half_duty_new4_carry_i_11__1_n_1;
  wire half_duty_new4_carry_i_11__1_n_2;
  wire half_duty_new4_carry_i_11__1_n_3;
  wire half_duty_new4_carry_i_12__1_n_0;
  wire half_duty_new4_carry_i_13__1_n_0;
  wire half_duty_new4_carry_i_14__1_n_0;
  wire half_duty_new4_carry_i_15__1_n_0;
  wire half_duty_new4_carry_i_16__1_n_0;
  wire half_duty_new4_carry_i_17__1_n_0;
  wire half_duty_new4_carry_i_18__1_n_0;
  wire half_duty_new4_carry_i_19__1_n_0;
  wire half_duty_new4_carry_i_1__0_n_0;
  wire half_duty_new4_carry_i_20__1_n_0;
  wire half_duty_new4_carry_i_2__0_n_0;
  wire half_duty_new4_carry_i_3__0_n_0;
  wire half_duty_new4_carry_i_4__1_n_0;
  wire half_duty_new4_carry_i_5__0_n_0;
  wire half_duty_new4_carry_i_6__0_n_0;
  wire half_duty_new4_carry_i_7__0_n_0;
  wire half_duty_new4_carry_i_8__0_n_0;
  wire half_duty_new4_carry_i_9__1_n_0;
  wire half_duty_new4_carry_i_9__1_n_1;
  wire half_duty_new4_carry_i_9__1_n_2;
  wire half_duty_new4_carry_i_9__1_n_3;
  wire half_duty_new4_carry_n_0;
  wire half_duty_new4_carry_n_1;
  wire half_duty_new4_carry_n_2;
  wire half_duty_new4_carry_n_3;
  wire half_duty_new50_carry__0_i_1__0_n_0;
  wire half_duty_new50_carry__0_i_2__0_n_0;
  wire half_duty_new50_carry__0_i_3__0_n_0;
  wire half_duty_new50_carry__0_i_4__0_n_0;
  wire half_duty_new50_carry__0_n_0;
  wire half_duty_new50_carry__0_n_1;
  wire half_duty_new50_carry__0_n_2;
  wire half_duty_new50_carry__0_n_3;
  wire half_duty_new50_carry__1_i_1__0_n_0;
  wire half_duty_new50_carry__1_i_2__0_n_0;
  wire half_duty_new50_carry__1_i_3__0_n_0;
  wire half_duty_new50_carry__1_i_4__0_n_0;
  wire half_duty_new50_carry__1_n_0;
  wire half_duty_new50_carry__1_n_1;
  wire half_duty_new50_carry__1_n_2;
  wire half_duty_new50_carry__1_n_3;
  wire half_duty_new50_carry__2_i_1__0_n_0;
  wire half_duty_new50_carry__2_i_2__0_n_0;
  wire half_duty_new50_carry__2_i_3__0_n_0;
  wire half_duty_new50_carry__2_i_4__0_n_0;
  wire half_duty_new50_carry__2_n_0;
  wire half_duty_new50_carry__2_n_1;
  wire half_duty_new50_carry__2_n_2;
  wire half_duty_new50_carry__2_n_3;
  wire half_duty_new50_carry__3_i_1__0_n_0;
  wire half_duty_new50_carry__3_i_2__0_n_0;
  wire half_duty_new50_carry__3_i_3__0_n_0;
  wire half_duty_new50_carry__3_i_4__0_n_0;
  wire half_duty_new50_carry__3_n_0;
  wire half_duty_new50_carry__3_n_1;
  wire half_duty_new50_carry__3_n_2;
  wire half_duty_new50_carry__3_n_3;
  wire half_duty_new50_carry__4_i_1__0_n_0;
  wire half_duty_new50_carry__4_i_2__0_n_0;
  wire half_duty_new50_carry__4_i_3__0_n_0;
  wire half_duty_new50_carry__4_i_4__0_n_0;
  wire half_duty_new50_carry__4_n_0;
  wire half_duty_new50_carry__4_n_1;
  wire half_duty_new50_carry__4_n_2;
  wire half_duty_new50_carry__4_n_3;
  wire half_duty_new50_carry__5_i_1__0_n_0;
  wire half_duty_new50_carry__5_i_2__0_n_0;
  wire half_duty_new50_carry__5_n_1;
  wire half_duty_new50_carry__5_n_3;
  wire half_duty_new50_carry_i_2__0_n_0;
  wire half_duty_new50_carry_i_3__0_n_0;
  wire half_duty_new50_carry_i_4__0_n_0;
  wire half_duty_new50_carry_n_0;
  wire half_duty_new50_carry_n_1;
  wire half_duty_new50_carry_n_2;
  wire half_duty_new50_carry_n_3;
  wire [1:0]half_duty_new52;
  wire [26:16]half_duty_new6__0;
  wire half_duty_new6_n_100;
  wire half_duty_new6_n_101;
  wire half_duty_new6_n_102;
  wire half_duty_new6_n_103;
  wire half_duty_new6_n_104;
  wire half_duty_new6_n_105;
  wire half_duty_new6_n_79;
  wire half_duty_new6_n_80;
  wire half_duty_new6_n_81;
  wire half_duty_new6_n_82;
  wire half_duty_new6_n_83;
  wire half_duty_new6_n_84;
  wire half_duty_new6_n_85;
  wire half_duty_new6_n_86;
  wire half_duty_new6_n_87;
  wire half_duty_new6_n_88;
  wire half_duty_new6_n_89;
  wire half_duty_new6_n_90;
  wire half_duty_new6_n_91;
  wire half_duty_new6_n_92;
  wire half_duty_new6_n_93;
  wire half_duty_new6_n_94;
  wire half_duty_new6_n_95;
  wire half_duty_new6_n_96;
  wire half_duty_new6_n_97;
  wire half_duty_new6_n_98;
  wire half_duty_new6_n_99;
  wire half_duty_new7;
  wire half_duty_new7_carry__0_i_1__1_n_0;
  wire half_duty_new7_carry__0_i_2__1_n_0;
  wire half_duty_new7_carry__0_i_3__1_n_0;
  wire half_duty_new7_carry__0_i_4__1_n_0;
  wire half_duty_new7_carry__0_i_5__0_n_0;
  wire half_duty_new7_carry__0_i_6__0_n_0;
  wire half_duty_new7_carry__0_i_7__0_n_0;
  wire half_duty_new7_carry__0_i_8__0_n_0;
  wire half_duty_new7_carry__0_n_0;
  wire half_duty_new7_carry__0_n_1;
  wire half_duty_new7_carry__0_n_2;
  wire half_duty_new7_carry__0_n_3;
  wire half_duty_new7_carry__1_i_1__1_n_0;
  wire half_duty_new7_carry__1_i_2__1_n_0;
  wire half_duty_new7_carry__1_i_3__1_n_0;
  wire half_duty_new7_carry__1_i_4__1_n_0;
  wire half_duty_new7_carry__1_i_5__0_n_0;
  wire half_duty_new7_carry__1_i_6__0_n_0;
  wire half_duty_new7_carry__1_i_7__0_n_0;
  wire half_duty_new7_carry__1_i_8__0_n_0;
  wire half_duty_new7_carry__1_n_0;
  wire half_duty_new7_carry__1_n_1;
  wire half_duty_new7_carry__1_n_2;
  wire half_duty_new7_carry__1_n_3;
  wire half_duty_new7_carry__2_i_1__0_n_0;
  wire half_duty_new7_carry__2_i_2__1_n_0;
  wire half_duty_new7_carry__2_i_3__1_n_0;
  wire half_duty_new7_carry__2_n_3;
  wire half_duty_new7_carry_i_1__1_n_0;
  wire half_duty_new7_carry_i_2__1_n_0;
  wire half_duty_new7_carry_i_3__1_n_0;
  wire half_duty_new7_carry_i_4__1_n_0;
  wire half_duty_new7_carry_i_5__0_n_0;
  wire half_duty_new7_carry_i_6__0_n_0;
  wire half_duty_new7_carry_i_7__0_n_0;
  wire half_duty_new7_carry_i_8__0_n_0;
  wire half_duty_new7_carry_n_0;
  wire half_duty_new7_carry_n_1;
  wire half_duty_new7_carry_n_2;
  wire half_duty_new7_carry_n_3;
  wire \half_duty_new[2]_i_2__1_n_0 ;
  wire \half_duty_new[2]_i_3__0_n_0 ;
  wire \half_duty_new[2]_i_4__0_n_0 ;
  wire \half_duty_new[3]_i_2__1_n_0 ;
  wire \half_duty_new[4]_i_2__0_n_0 ;
  wire \half_duty_new[5]_i_2__1_n_0 ;
  wire \half_duty_new[5]_i_3__0_n_0 ;
  wire \half_duty_new[5]_i_4__0_n_0 ;
  wire \half_duty_new[5]_i_5__0_n_0 ;
  wire \half_duty_new[5]_i_6__0_n_0 ;
  wire \half_duty_new[6]_i_4__0_n_0 ;
  wire \half_duty_new[6]_i_5__0_n_0 ;
  wire \half_duty_new[7]_i_1__0_n_0 ;
  wire \half_duty_new[7]_i_3__0_n_0 ;
  wire \half_duty_new[7]_i_4__1_n_0 ;
  wire \half_duty_new[7]_i_5__1_n_0 ;
  wire \half_duty_new[7]_i_6__1_n_0 ;
  wire \half_duty_new[7]_i_7__1_n_0 ;
  wire \half_duty_new[7]_i_8__0_n_0 ;
  wire \half_duty_new[7]_i_9__0_n_0 ;
  wire \half_duty_new_reg[6]_i_2__0_n_1 ;
  wire \half_duty_new_reg[6]_i_2__0_n_3 ;
  wire \half_duty_reg_n_0_[0] ;
  wire \half_duty_reg_n_0_[1] ;
  wire \half_duty_reg_n_0_[2] ;
  wire \half_duty_reg_n_0_[3] ;
  wire \half_duty_reg_n_0_[4] ;
  wire \half_duty_reg_n_0_[5] ;
  wire \half_duty_reg_n_0_[6] ;
  wire \half_duty_reg_n_0_[7] ;
  wire motor_right_pwm_out;
  wire [7:1]p_1_in;
  wire [0:0]p_1_out0;
  wire pwm_out_buf0_carry_i_1__1_n_0;
  wire pwm_out_buf0_carry_i_2__1_n_0;
  wire pwm_out_buf0_carry_i_3__1_n_0;
  wire pwm_out_buf0_carry_i_4__1_n_0;
  wire pwm_out_buf0_carry_i_5__0_n_0;
  wire pwm_out_buf0_carry_i_6__0_n_0;
  wire pwm_out_buf0_carry_n_2;
  wire pwm_out_buf0_carry_n_3;
  wire pwm_out_buf1_carry_i_1__1_n_0;
  wire pwm_out_buf1_carry_i_2__1_n_0;
  wire pwm_out_buf1_carry_i_3__1_n_0;
  wire pwm_out_buf1_carry_n_2;
  wire pwm_out_buf1_carry_n_3;
  wire [0:0]pwm_out_buf_reg_0;
  wire [0:0]pwm_out_buf_reg_1;
  wire pwm_out_buf_reg_2;
  wire s00_axi_aclk;
  wire [0:0]\slv_reg0_reg[0] ;
  wire [3:0]NLW_half_duty_new4_carry_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new4_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new4_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new4_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new50_carry_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new50_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new50_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_half_duty_new50_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_half_duty_new50_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_half_duty_new50_carry__5_O_UNCONNECTED;
  wire NLW_half_duty_new6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_half_duty_new6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_half_duty_new6_OVERFLOW_UNCONNECTED;
  wire NLW_half_duty_new6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_half_duty_new6_PATTERNDETECT_UNCONNECTED;
  wire NLW_half_duty_new6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_half_duty_new6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_half_duty_new6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_half_duty_new6_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_half_duty_new6_P_UNCONNECTED;
  wire [47:0]NLW_half_duty_new6_PCOUT_UNCONNECTED;
  wire [3:0]NLW_half_duty_new7_carry_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new7_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_half_duty_new7_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_half_duty_new7_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_half_duty_new7_carry__2_O_UNCONNECTED;
  wire [3:1]\NLW_half_duty_new_reg[6]_i_2__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_half_duty_new_reg[6]_i_2__0_O_UNCONNECTED ;
  wire [3:3]NLW_pwm_out_buf0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_out_buf0_carry_O_UNCONNECTED;
  wire [3:3]NLW_pwm_out_buf1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_out_buf1_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__1 
       (.I0(\count_reg_n_0_[0] ),
        .O(count[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(count[1]));
  LUT6 #(
    .INIT(64'h00FFFFFFFD000000)) 
    \count[2]_i_1__1 
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count[8]_i_2__0_n_0 ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[2] ),
        .O(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .O(count[3]));
  LUT6 #(
    .INIT(64'hA0B0A0B0AFB0A0B0)) 
    \count[4]_i_1__1 
       (.I0(\count[5]_i_2__0_n_0 ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count[5]_i_3__0_n_0 ),
        .O(count[4]));
  LUT6 #(
    .INIT(64'hAAAAFFFF30000000)) 
    \count[5]_i_1__1 
       (.I0(\count[5]_i_2__0_n_0 ),
        .I1(\count[5]_i_3__0_n_0 ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[5] ),
        .O(count[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0FF70FFF)) 
    \count[5]_i_2__0 
       (.I0(\count_reg_n_0_[6] ),
        .I1(\count_reg_n_0_[7] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[8] ),
        .I5(\count[5]_i_3__0_n_0 ),
        .O(\count[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[5]_i_3__0 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(\count[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FFF011F0)) 
    \count[6]_i_1__1 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count[7]_i_2__0_n_0 ),
        .I3(\count_reg_n_0_[6] ),
        .I4(\count[7]_i_3__0_n_0 ),
        .I5(\count[6]_i_2__0_n_0 ),
        .O(count[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[6]_i_2__0 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[5] ),
        .O(\count[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hF858F0F0F0F0F0F0)) 
    \count[7]_i_1__1 
       (.I0(\count_reg_n_0_[6] ),
        .I1(\count[7]_i_2__0_n_0 ),
        .I2(\count_reg_n_0_[7] ),
        .I3(\count[7]_i_3__0_n_0 ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(count[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \count[7]_i_2__0 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h77FFFF7F)) 
    \count[7]_i_3__0 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[8] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[2] ),
        .O(\count[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAA8AAA)) 
    \count[8]_i_1__1 
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count[8]_i_2__0_n_0 ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[3] ),
        .O(count[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[8]_i_2__0 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[7] ),
        .I3(\count_reg_n_0_[6] ),
        .O(\count[8]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[0]),
        .Q(\count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[1]),
        .Q(\count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[2]),
        .Q(\count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[3]),
        .Q(\count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[4]),
        .Q(\count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[5]),
        .Q(\count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[6]),
        .Q(\count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[7]),
        .Q(\count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(count[8]),
        .Q(\count_reg_n_0_[8] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b1)) 
    disabled_reg
       (.CLR(disabled0),
        .D(disabled02_out),
        .G(disabled02_out),
        .GE(1'b1),
        .Q(disabled));
  LUT3 #(
    .INIT(8'h07)) 
    disabled_reg_i_1
       (.I0(\slv_reg0_reg[0] ),
        .I1(enable),
        .I2(motor_right_pwm_out),
        .O(disabled02_out));
  LUT4 #(
    .INIT(16'h4000)) 
    disabled_reg_i_2
       (.I0(motor_right_pwm_out),
        .I1(disabled),
        .I2(\slv_reg0_reg[0] ),
        .I3(enable),
        .O(disabled0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \half_duty[7]_i_1__0 
       (.I0(\count[5]_i_3__0_n_0 ),
        .I1(\count_reg_n_0_[2] ),
        .I2(disabled),
        .I3(\count[8]_i_2__0_n_0 ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[8] ),
        .O(half_duty0));
  CARRY4 half_duty_new4_carry
       (.CI(1'b0),
        .CO({half_duty_new4_carry_n_0,half_duty_new4_carry_n_1,half_duty_new4_carry_n_2,half_duty_new4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({half_duty_new4_carry_i_1__0_n_0,half_duty_new4_carry_i_2__0_n_0,half_duty_new4_carry_i_3__0_n_0,half_duty_new4_carry_i_4__1_n_0}),
        .O(NLW_half_duty_new4_carry_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry_i_5__0_n_0,half_duty_new4_carry_i_6__0_n_0,half_duty_new4_carry_i_7__0_n_0,half_duty_new4_carry_i_8__0_n_0}));
  CARRY4 half_duty_new4_carry__0
       (.CI(half_duty_new4_carry_n_0),
        .CO({half_duty_new4_carry__0_n_0,half_duty_new4_carry__0_n_1,half_duty_new4_carry__0_n_2,half_duty_new4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({half_duty_new4_carry__0_i_1__0_n_0,half_duty_new4_carry__0_i_2__0_n_0,half_duty_new4_carry__0_i_3__0_n_0,half_duty_new4_carry__0_i_4__0_n_0}),
        .O(NLW_half_duty_new4_carry__0_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry__0_i_5__0_n_0,half_duty_new4_carry__0_i_6__0_n_0,half_duty_new4_carry__0_i_7__0_n_0,half_duty_new4_carry__0_i_8__0_n_0}));
  LUT3 #(
    .INIT(8'h3A)) 
    half_duty_new4_carry__0_i_10__1
       (.I0(half_duty_new50_carry__5_n_1),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new7),
        .O(half_duty_new4_carry__0_i_10__1_n_0));
  LUT3 #(
    .INIT(8'h3A)) 
    half_duty_new4_carry__0_i_11__1
       (.I0(half_duty_new50_carry__5_n_1),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new7),
        .O(half_duty_new4_carry__0_i_11__1_n_0));
  LUT3 #(
    .INIT(8'h35)) 
    half_duty_new4_carry__0_i_12__1
       (.I0(half_duty_new6__0[26]),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new7),
        .O(half_duty_new4_carry__0_i_12__1_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry__0_i_13__1
       (.I0(half_duty_new6_n_80),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[25]),
        .O(half_duty_new4_carry__0_i_13__1_n_0));
  LUT5 #(
    .INIT(32'hFF110F11)) 
    half_duty_new4_carry__0_i_1__0
       (.I0(half_duty_new7),
        .I1(half_duty_new50_carry__5_n_1),
        .I2(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[14]),
        .O(half_duty_new4_carry__0_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hCDCDCD01)) 
    half_duty_new4_carry__0_i_2__0
       (.I0(half_duty_new7),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new50_carry__5_n_1),
        .I3(half_duty_new4[12]),
        .I4(half_duty_new4[13]),
        .O(half_duty_new4_carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFC00FCAAFC00FCFF)) 
    half_duty_new4_carry__0_i_3__0
       (.I0(half_duty_new6__0[26]),
        .I1(half_duty_new4[10]),
        .I2(half_duty_new4[11]),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new7),
        .I5(half_duty_new50_carry__5_n_1),
        .O(half_duty_new4_carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFCFCFCFCFAFAFFF0)) 
    half_duty_new4_carry__0_i_4__0
       (.I0(half_duty_new6_n_80),
        .I1(half_duty_new4[9]),
        .I2(\half_duty_new[7]_i_5__1_n_0 ),
        .I3(half_duty_new6__0[25]),
        .I4(half_duty_new7),
        .I5(half_duty_new6_n_79),
        .O(half_duty_new4_carry__0_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h22FF22F0)) 
    half_duty_new4_carry__0_i_5__0
       (.I0(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I1(half_duty_new4[14]),
        .I2(half_duty_new50_carry__5_n_1),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new7),
        .O(half_duty_new4_carry__0_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h11FF11F0)) 
    half_duty_new4_carry__0_i_6__0
       (.I0(half_duty_new4[13]),
        .I1(half_duty_new4[12]),
        .I2(half_duty_new50_carry__5_n_1),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new7),
        .O(half_duty_new4_carry__0_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h0C0C0CFC0E0E0EFE)) 
    half_duty_new4_carry__0_i_7__0
       (.I0(half_duty_new50_carry__5_n_1),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_79),
        .I3(half_duty_new4[11]),
        .I4(half_duty_new4[10]),
        .I5(half_duty_new6__0[26]),
        .O(half_duty_new4_carry__0_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h0000001D00FF001D)) 
    half_duty_new4_carry__0_i_8__0
       (.I0(half_duty_new6__0[25]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_80),
        .I3(\half_duty_new[7]_i_5__1_n_0 ),
        .I4(half_duty_new6_n_79),
        .I5(half_duty_new4[9]),
        .O(half_duty_new4_carry__0_i_8__0_n_0));
  CARRY4 half_duty_new4_carry__0_i_9__1
       (.CI(half_duty_new4_carry_i_9__1_n_0),
        .CO({half_duty_new4_carry__0_i_9__1_n_0,half_duty_new4_carry__0_i_9__1_n_1,half_duty_new4_carry__0_i_9__1_n_2,half_duty_new4_carry__0_i_9__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new4[12:9]),
        .S({half_duty_new4_carry__0_i_10__1_n_0,half_duty_new4_carry__0_i_11__1_n_0,half_duty_new4_carry__0_i_12__1_n_0,half_duty_new4_carry__0_i_13__1_n_0}));
  CARRY4 half_duty_new4_carry__1
       (.CI(half_duty_new4_carry__0_n_0),
        .CO({half_duty_new4_carry__1_n_0,half_duty_new4_carry__1_n_1,half_duty_new4_carry__1_n_2,half_duty_new4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({half_duty_new4_carry__1_i_1__1_n_0,half_duty_new4_carry__1_i_2__0_n_0,half_duty_new4_carry__1_i_3__1_n_0,half_duty_new4_carry__1_i_4__1_n_0}),
        .O(NLW_half_duty_new4_carry__1_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry__1_i_5__0_n_0,half_duty_new4_carry__1_i_6__0_n_0,half_duty_new4_carry__1_i_7__1_n_0,half_duty_new4_carry__1_i_8__1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__1_i_1__1
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .O(half_duty_new4_carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__1_i_2__0
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .O(half_duty_new4_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__1_i_3__1
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .O(half_duty_new4_carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__1_i_4__1
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .O(half_duty_new4_carry__1_i_4__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__1_i_5__0
       (.I0(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__1_i_5__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__1_i_6__0
       (.I0(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__1_i_6__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__1_i_7__1
       (.I0(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__1_i_7__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__1_i_8__1
       (.I0(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__1_i_8__1_n_0));
  CARRY4 half_duty_new4_carry__2
       (.CI(half_duty_new4_carry__1_n_0),
        .CO({half_duty_new4_carry__2_n_0,half_duty_new4_carry__2_n_1,half_duty_new4_carry__2_n_2,half_duty_new4_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,half_duty_new4_carry__2_i_1__1_n_0,half_duty_new4_carry__2_i_2__1_n_0,half_duty_new4_carry__2_i_3__1_n_0}),
        .O(NLW_half_duty_new4_carry__2_O_UNCONNECTED[3:0]),
        .S({half_duty_new4_carry__2_i_4__1_n_0,half_duty_new4_carry__2_i_5__0_n_0,half_duty_new4_carry__2_i_6__0_n_0,half_duty_new4_carry__2_i_7__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__2_i_1__1
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .O(half_duty_new4_carry__2_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__2_i_2__1
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .O(half_duty_new4_carry__2_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    half_duty_new4_carry__2_i_3__1
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .O(half_duty_new4_carry__2_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__2_i_4__1
       (.I0(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__2_i_4__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__2_i_5__0
       (.I0(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__2_i_5__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__2_i_6__0
       (.I0(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__2_i_6__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    half_duty_new4_carry__2_i_7__0
       (.I0(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I1(half_duty_new6_n_79),
        .O(half_duty_new4_carry__2_i_7__0_n_0));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    half_duty_new4_carry_i_10__1
       (.I0(half_duty_new6__0[20]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_85),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[4]),
        .O(half_duty_new4_carry_i_10__1_n_0));
  CARRY4 half_duty_new4_carry_i_11__1
       (.CI(1'b0),
        .CO({half_duty_new4_carry_i_11__1_n_0,half_duty_new4_carry_i_11__1_n_1,half_duty_new4_carry_i_11__1_n_2,half_duty_new4_carry_i_11__1_n_3}),
        .CYINIT(half_duty_new4_carry_i_16__1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new4[4:1]),
        .S({half_duty_new4_carry_i_17__1_n_0,half_duty_new4_carry_i_18__1_n_0,half_duty_new4_carry_i_19__1_n_0,half_duty_new4_carry_i_20__1_n_0}));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_12__1
       (.I0(half_duty_new6_n_81),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[24]),
        .O(half_duty_new4_carry_i_12__1_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_13__1
       (.I0(half_duty_new6_n_82),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[23]),
        .O(half_duty_new4_carry_i_13__1_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_14__1
       (.I0(half_duty_new6_n_83),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[22]),
        .O(half_duty_new4_carry_i_14__1_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_15__1
       (.I0(half_duty_new6_n_84),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[21]),
        .O(half_duty_new4_carry_i_15__1_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    half_duty_new4_carry_i_16__1
       (.I0(half_duty_new6__0[16]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_89),
        .O(half_duty_new4_carry_i_16__1_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_17__1
       (.I0(half_duty_new6_n_85),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[20]),
        .O(half_duty_new4_carry_i_17__1_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_18__1
       (.I0(half_duty_new6_n_86),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[19]),
        .O(half_duty_new4_carry_i_18__1_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_19__1
       (.I0(half_duty_new6_n_87),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[18]),
        .O(half_duty_new4_carry_i_19__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    half_duty_new4_carry_i_1__0
       (.I0(\half_duty_new[5]_i_3__0_n_0 ),
        .I1(half_duty_new6__0[23]),
        .I2(half_duty_new7),
        .I3(half_duty_new6_n_82),
        .I4(half_duty_new6_n_79),
        .I5(half_duty_new4[7]),
        .O(half_duty_new4_carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    half_duty_new4_carry_i_20__1
       (.I0(half_duty_new6_n_88),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[17]),
        .O(half_duty_new4_carry_i_20__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    half_duty_new4_carry_i_2__0
       (.I0(half_duty_new4_carry_i_10__1_n_0),
        .I1(half_duty_new6__0[21]),
        .I2(half_duty_new7),
        .I3(half_duty_new6_n_84),
        .I4(half_duty_new6_n_79),
        .I5(half_duty_new4[5]),
        .O(half_duty_new4_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    half_duty_new4_carry_i_3__0
       (.I0(\half_duty_new[2]_i_3__0_n_0 ),
        .I1(half_duty_new6__0[19]),
        .I2(half_duty_new7),
        .I3(half_duty_new6_n_86),
        .I4(half_duty_new6_n_79),
        .I5(half_duty_new4[3]),
        .O(half_duty_new4_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFB8BBB888)) 
    half_duty_new4_carry_i_4__1
       (.I0(half_duty_new4[1]),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new6_n_88),
        .I3(half_duty_new7),
        .I4(half_duty_new6__0[17]),
        .I5(p_1_out0),
        .O(half_duty_new4_carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h0000000047444777)) 
    half_duty_new4_carry_i_5__0
       (.I0(half_duty_new4[7]),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new6_n_82),
        .I3(half_duty_new7),
        .I4(half_duty_new6__0[23]),
        .I5(\half_duty_new[5]_i_3__0_n_0 ),
        .O(half_duty_new4_carry_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h0000000047444777)) 
    half_duty_new4_carry_i_6__0
       (.I0(half_duty_new4[5]),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new6_n_84),
        .I3(half_duty_new7),
        .I4(half_duty_new6__0[21]),
        .I5(half_duty_new4_carry_i_10__1_n_0),
        .O(half_duty_new4_carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h0000000047444777)) 
    half_duty_new4_carry_i_7__0
       (.I0(half_duty_new4[3]),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new6_n_86),
        .I3(half_duty_new7),
        .I4(half_duty_new6__0[19]),
        .I5(\half_duty_new[2]_i_3__0_n_0 ),
        .O(half_duty_new4_carry_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    half_duty_new4_carry_i_8__0
       (.I0(p_1_out0),
        .I1(half_duty_new6__0[17]),
        .I2(half_duty_new7),
        .I3(half_duty_new6_n_88),
        .I4(half_duty_new6_n_79),
        .I5(half_duty_new4[1]),
        .O(half_duty_new4_carry_i_8__0_n_0));
  CARRY4 half_duty_new4_carry_i_9__1
       (.CI(half_duty_new4_carry_i_11__1_n_0),
        .CO({half_duty_new4_carry_i_9__1_n_0,half_duty_new4_carry_i_9__1_n_1,half_duty_new4_carry_i_9__1_n_2,half_duty_new4_carry_i_9__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new4[8:5]),
        .S({half_duty_new4_carry_i_12__1_n_0,half_duty_new4_carry_i_13__1_n_0,half_duty_new4_carry_i_14__1_n_0,half_duty_new4_carry_i_15__1_n_0}));
  CARRY4 half_duty_new50_carry
       (.CI(1'b0),
        .CO({half_duty_new50_carry_n_0,half_duty_new50_carry_n_1,half_duty_new50_carry_n_2,half_duty_new50_carry_n_3}),
        .CYINIT(half_duty_new52[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_half_duty_new50_carry_O_UNCONNECTED[3:0]),
        .S({half_duty_new50_carry_i_2__0_n_0,half_duty_new50_carry_i_3__0_n_0,half_duty_new50_carry_i_4__0_n_0,half_duty_new52[1]}));
  CARRY4 half_duty_new50_carry__0
       (.CI(half_duty_new50_carry_n_0),
        .CO({half_duty_new50_carry__0_n_0,half_duty_new50_carry__0_n_1,half_duty_new50_carry__0_n_2,half_duty_new50_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_half_duty_new50_carry__0_O_UNCONNECTED[3:0]),
        .S({half_duty_new50_carry__0_i_1__0_n_0,half_duty_new50_carry__0_i_2__0_n_0,half_duty_new50_carry__0_i_3__0_n_0,half_duty_new50_carry__0_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__0_i_1__0
       (.I0(half_duty_new6_n_97),
        .O(half_duty_new50_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__0_i_2__0
       (.I0(half_duty_new6_n_98),
        .O(half_duty_new50_carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__0_i_3__0
       (.I0(half_duty_new6_n_99),
        .O(half_duty_new50_carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__0_i_4__0
       (.I0(half_duty_new6_n_100),
        .O(half_duty_new50_carry__0_i_4__0_n_0));
  CARRY4 half_duty_new50_carry__1
       (.CI(half_duty_new50_carry__0_n_0),
        .CO({half_duty_new50_carry__1_n_0,half_duty_new50_carry__1_n_1,half_duty_new50_carry__1_n_2,half_duty_new50_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_half_duty_new50_carry__1_O_UNCONNECTED[3:0]),
        .S({half_duty_new50_carry__1_i_1__0_n_0,half_duty_new50_carry__1_i_2__0_n_0,half_duty_new50_carry__1_i_3__0_n_0,half_duty_new50_carry__1_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__1_i_1__0
       (.I0(half_duty_new6_n_93),
        .O(half_duty_new50_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__1_i_2__0
       (.I0(half_duty_new6_n_94),
        .O(half_duty_new50_carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__1_i_3__0
       (.I0(half_duty_new6_n_95),
        .O(half_duty_new50_carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__1_i_4__0
       (.I0(half_duty_new6_n_96),
        .O(half_duty_new50_carry__1_i_4__0_n_0));
  CARRY4 half_duty_new50_carry__2
       (.CI(half_duty_new50_carry__1_n_0),
        .CO({half_duty_new50_carry__2_n_0,half_duty_new50_carry__2_n_1,half_duty_new50_carry__2_n_2,half_duty_new50_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({half_duty_new6__0[16],NLW_half_duty_new50_carry__2_O_UNCONNECTED[2:0]}),
        .S({half_duty_new50_carry__2_i_1__0_n_0,half_duty_new50_carry__2_i_2__0_n_0,half_duty_new50_carry__2_i_3__0_n_0,half_duty_new50_carry__2_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__2_i_1__0
       (.I0(half_duty_new6_n_89),
        .O(half_duty_new50_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__2_i_2__0
       (.I0(half_duty_new6_n_90),
        .O(half_duty_new50_carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__2_i_3__0
       (.I0(half_duty_new6_n_91),
        .O(half_duty_new50_carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__2_i_4__0
       (.I0(half_duty_new6_n_92),
        .O(half_duty_new50_carry__2_i_4__0_n_0));
  CARRY4 half_duty_new50_carry__3
       (.CI(half_duty_new50_carry__2_n_0),
        .CO({half_duty_new50_carry__3_n_0,half_duty_new50_carry__3_n_1,half_duty_new50_carry__3_n_2,half_duty_new50_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new6__0[20:17]),
        .S({half_duty_new50_carry__3_i_1__0_n_0,half_duty_new50_carry__3_i_2__0_n_0,half_duty_new50_carry__3_i_3__0_n_0,half_duty_new50_carry__3_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__3_i_1__0
       (.I0(half_duty_new6_n_85),
        .O(half_duty_new50_carry__3_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__3_i_2__0
       (.I0(half_duty_new6_n_86),
        .O(half_duty_new50_carry__3_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__3_i_3__0
       (.I0(half_duty_new6_n_87),
        .O(half_duty_new50_carry__3_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__3_i_4__0
       (.I0(half_duty_new6_n_88),
        .O(half_duty_new50_carry__3_i_4__0_n_0));
  CARRY4 half_duty_new50_carry__4
       (.CI(half_duty_new50_carry__3_n_0),
        .CO({half_duty_new50_carry__4_n_0,half_duty_new50_carry__4_n_1,half_duty_new50_carry__4_n_2,half_duty_new50_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(half_duty_new6__0[24:21]),
        .S({half_duty_new50_carry__4_i_1__0_n_0,half_duty_new50_carry__4_i_2__0_n_0,half_duty_new50_carry__4_i_3__0_n_0,half_duty_new50_carry__4_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__4_i_1__0
       (.I0(half_duty_new6_n_81),
        .O(half_duty_new50_carry__4_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__4_i_2__0
       (.I0(half_duty_new6_n_82),
        .O(half_duty_new50_carry__4_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__4_i_3__0
       (.I0(half_duty_new6_n_83),
        .O(half_duty_new50_carry__4_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__4_i_4__0
       (.I0(half_duty_new6_n_84),
        .O(half_duty_new50_carry__4_i_4__0_n_0));
  CARRY4 half_duty_new50_carry__5
       (.CI(half_duty_new50_carry__4_n_0),
        .CO({NLW_half_duty_new50_carry__5_CO_UNCONNECTED[3],half_duty_new50_carry__5_n_1,NLW_half_duty_new50_carry__5_CO_UNCONNECTED[1],half_duty_new50_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b0}),
        .O({NLW_half_duty_new50_carry__5_O_UNCONNECTED[3:2],half_duty_new6__0[26:25]}),
        .S({1'b0,1'b1,half_duty_new50_carry__5_i_1__0_n_0,half_duty_new50_carry__5_i_2__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__5_i_1__0
       (.I0(half_duty_new6_n_79),
        .O(half_duty_new50_carry__5_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry__5_i_2__0
       (.I0(half_duty_new6_n_80),
        .O(half_duty_new50_carry__5_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry_i_1__0
       (.I0(half_duty_new6_n_105),
        .O(half_duty_new52[0]));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry_i_2__0
       (.I0(half_duty_new6_n_101),
        .O(half_duty_new50_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry_i_3__0
       (.I0(half_duty_new6_n_102),
        .O(half_duty_new50_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry_i_4__0
       (.I0(half_duty_new6_n_103),
        .O(half_duty_new50_carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new50_carry_i_5__0
       (.I0(half_duty_new6_n_104),
        .O(half_duty_new52[1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    half_duty_new6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_half_duty_new6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_half_duty_new6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_half_duty_new6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_half_duty_new6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_half_duty_new6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_half_duty_new6_OVERFLOW_UNCONNECTED),
        .P({NLW_half_duty_new6_P_UNCONNECTED[47:27],half_duty_new6_n_79,half_duty_new6_n_80,half_duty_new6_n_81,half_duty_new6_n_82,half_duty_new6_n_83,half_duty_new6_n_84,half_duty_new6_n_85,half_duty_new6_n_86,half_duty_new6_n_87,half_duty_new6_n_88,half_duty_new6_n_89,half_duty_new6_n_90,half_duty_new6_n_91,half_duty_new6_n_92,half_duty_new6_n_93,half_duty_new6_n_94,half_duty_new6_n_95,half_duty_new6_n_96,half_duty_new6_n_97,half_duty_new6_n_98,half_duty_new6_n_99,half_duty_new6_n_100,half_duty_new6_n_101,half_duty_new6_n_102,half_duty_new6_n_103,half_duty_new6_n_104,half_duty_new6_n_105}),
        .PATTERNBDETECT(NLW_half_duty_new6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_half_duty_new6_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_half_duty_new6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_half_duty_new6_UNDERFLOW_UNCONNECTED));
  CARRY4 half_duty_new7_carry
       (.CI(1'b0),
        .CO({half_duty_new7_carry_n_0,half_duty_new7_carry_n_1,half_duty_new7_carry_n_2,half_duty_new7_carry_n_3}),
        .CYINIT(1'b1),
        .DI({half_duty_new7_carry_i_1__1_n_0,half_duty_new7_carry_i_2__1_n_0,half_duty_new7_carry_i_3__1_n_0,half_duty_new7_carry_i_4__1_n_0}),
        .O(NLW_half_duty_new7_carry_O_UNCONNECTED[3:0]),
        .S({half_duty_new7_carry_i_5__0_n_0,half_duty_new7_carry_i_6__0_n_0,half_duty_new7_carry_i_7__0_n_0,half_duty_new7_carry_i_8__0_n_0}));
  CARRY4 half_duty_new7_carry__0
       (.CI(half_duty_new7_carry_n_0),
        .CO({half_duty_new7_carry__0_n_0,half_duty_new7_carry__0_n_1,half_duty_new7_carry__0_n_2,half_duty_new7_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({half_duty_new7_carry__0_i_1__1_n_0,half_duty_new7_carry__0_i_2__1_n_0,half_duty_new7_carry__0_i_3__1_n_0,half_duty_new7_carry__0_i_4__1_n_0}),
        .O(NLW_half_duty_new7_carry__0_O_UNCONNECTED[3:0]),
        .S({half_duty_new7_carry__0_i_5__0_n_0,half_duty_new7_carry__0_i_6__0_n_0,half_duty_new7_carry__0_i_7__0_n_0,half_duty_new7_carry__0_i_8__0_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__0_i_1__1
       (.I0(half_duty_new6_n_91),
        .I1(half_duty_new6_n_90),
        .O(half_duty_new7_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__0_i_2__1
       (.I0(half_duty_new6_n_93),
        .I1(half_duty_new6_n_92),
        .O(half_duty_new7_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__0_i_3__1
       (.I0(half_duty_new6_n_95),
        .I1(half_duty_new6_n_94),
        .O(half_duty_new7_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__0_i_4__1
       (.I0(half_duty_new6_n_97),
        .I1(half_duty_new6_n_96),
        .O(half_duty_new7_carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__0_i_5__0
       (.I0(half_duty_new6_n_90),
        .I1(half_duty_new6_n_91),
        .O(half_duty_new7_carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__0_i_6__0
       (.I0(half_duty_new6_n_92),
        .I1(half_duty_new6_n_93),
        .O(half_duty_new7_carry__0_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__0_i_7__0
       (.I0(half_duty_new6_n_94),
        .I1(half_duty_new6_n_95),
        .O(half_duty_new7_carry__0_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__0_i_8__0
       (.I0(half_duty_new6_n_96),
        .I1(half_duty_new6_n_97),
        .O(half_duty_new7_carry__0_i_8__0_n_0));
  CARRY4 half_duty_new7_carry__1
       (.CI(half_duty_new7_carry__0_n_0),
        .CO({half_duty_new7_carry__1_n_0,half_duty_new7_carry__1_n_1,half_duty_new7_carry__1_n_2,half_duty_new7_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({half_duty_new7_carry__1_i_1__1_n_0,half_duty_new7_carry__1_i_2__1_n_0,half_duty_new7_carry__1_i_3__1_n_0,half_duty_new7_carry__1_i_4__1_n_0}),
        .O(NLW_half_duty_new7_carry__1_O_UNCONNECTED[3:0]),
        .S({half_duty_new7_carry__1_i_5__0_n_0,half_duty_new7_carry__1_i_6__0_n_0,half_duty_new7_carry__1_i_7__0_n_0,half_duty_new7_carry__1_i_8__0_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__1_i_1__1
       (.I0(half_duty_new6_n_83),
        .I1(half_duty_new6_n_82),
        .O(half_duty_new7_carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__1_i_2__1
       (.I0(half_duty_new6_n_85),
        .I1(half_duty_new6_n_84),
        .O(half_duty_new7_carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__1_i_3__1
       (.I0(half_duty_new6_n_87),
        .I1(half_duty_new6_n_86),
        .O(half_duty_new7_carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__1_i_4__1
       (.I0(half_duty_new6_n_89),
        .I1(half_duty_new6_n_88),
        .O(half_duty_new7_carry__1_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__1_i_5__0
       (.I0(half_duty_new6_n_82),
        .I1(half_duty_new6_n_83),
        .O(half_duty_new7_carry__1_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__1_i_6__0
       (.I0(half_duty_new6_n_84),
        .I1(half_duty_new6_n_85),
        .O(half_duty_new7_carry__1_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__1_i_7__0
       (.I0(half_duty_new6_n_86),
        .I1(half_duty_new6_n_87),
        .O(half_duty_new7_carry__1_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__1_i_8__0
       (.I0(half_duty_new6_n_88),
        .I1(half_duty_new6_n_89),
        .O(half_duty_new7_carry__1_i_8__0_n_0));
  CARRY4 half_duty_new7_carry__2
       (.CI(half_duty_new7_carry__1_n_0),
        .CO({NLW_half_duty_new7_carry__2_CO_UNCONNECTED[3:2],half_duty_new7,half_duty_new7_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,half_duty_new7_carry__2_i_1__0_n_0}),
        .O(NLW_half_duty_new7_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,half_duty_new7_carry__2_i_2__1_n_0,half_duty_new7_carry__2_i_3__1_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry__2_i_1__0
       (.I0(half_duty_new6_n_81),
        .I1(half_duty_new6_n_80),
        .O(half_duty_new7_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    half_duty_new7_carry__2_i_2__1
       (.I0(half_duty_new6_n_79),
        .O(half_duty_new7_carry__2_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry__2_i_3__1
       (.I0(half_duty_new6_n_80),
        .I1(half_duty_new6_n_81),
        .O(half_duty_new7_carry__2_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry_i_1__1
       (.I0(half_duty_new6_n_99),
        .I1(half_duty_new6_n_98),
        .O(half_duty_new7_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry_i_2__1
       (.I0(half_duty_new6_n_101),
        .I1(half_duty_new6_n_100),
        .O(half_duty_new7_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry_i_3__1
       (.I0(half_duty_new6_n_103),
        .I1(half_duty_new6_n_102),
        .O(half_duty_new7_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    half_duty_new7_carry_i_4__1
       (.I0(half_duty_new6_n_105),
        .I1(half_duty_new6_n_104),
        .O(half_duty_new7_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry_i_5__0
       (.I0(half_duty_new6_n_98),
        .I1(half_duty_new6_n_99),
        .O(half_duty_new7_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry_i_6__0
       (.I0(half_duty_new6_n_100),
        .I1(half_duty_new6_n_101),
        .O(half_duty_new7_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry_i_7__0
       (.I0(half_duty_new6_n_102),
        .I1(half_duty_new6_n_103),
        .O(half_duty_new7_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    half_duty_new7_carry_i_8__0
       (.I0(half_duty_new6_n_104),
        .I1(half_duty_new6_n_105),
        .O(half_duty_new7_carry_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF4700B8)) 
    \half_duty_new[0]_i_1__1 
       (.I0(half_duty_new6_n_89),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[16]),
        .I3(half_duty_new4_carry__2_n_0),
        .I4(\half_duty_new[2]_i_4__0_n_0 ),
        .O(half_duty_new10_in[0]));
  LUT6 #(
    .INIT(64'hD20FD22DF02DF0F0)) 
    \half_duty_new[1]_i_1__0 
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I2(\half_duty_new[2]_i_3__0_n_0 ),
        .I3(half_duty_new4_carry__2_n_0),
        .I4(p_1_out0),
        .I5(\half_duty_new[2]_i_4__0_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h636969C9696969CC)) 
    \half_duty_new[2]_i_1__0 
       (.I0(\half_duty_new[7]_i_3__0_n_0 ),
        .I1(\half_duty_new[2]_i_2__1_n_0 ),
        .I2(half_duty_new4_carry__2_n_0),
        .I3(\half_duty_new[2]_i_3__0_n_0 ),
        .I4(\half_duty_new[2]_i_4__0_n_0 ),
        .I5(p_1_out0),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[2]_i_2__1 
       (.I0(half_duty_new6__0[19]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_86),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[3]),
        .O(\half_duty_new[2]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[2]_i_3__0 
       (.I0(half_duty_new6__0[18]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_87),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[2]),
        .O(\half_duty_new[2]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[2]_i_4__0 
       (.I0(half_duty_new6__0[17]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_88),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[1]),
        .O(\half_duty_new[2]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \half_duty_new[2]_i_5__0 
       (.I0(half_duty_new6_n_89),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[16]),
        .O(p_1_out0));
  LUT4 #(
    .INIT(16'hFD02)) 
    \half_duty_new[3]_i_1__0 
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I2(\half_duty_new[3]_i_2__1_n_0 ),
        .I3(half_duty_new10_in[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h20040005)) 
    \half_duty_new[3]_i_2__1 
       (.I0(\half_duty_new[2]_i_2__1_n_0 ),
        .I1(half_duty_new4_carry__2_n_0),
        .I2(\half_duty_new[2]_i_3__0_n_0 ),
        .I3(\half_duty_new[2]_i_4__0_n_0 ),
        .I4(p_1_out0),
        .O(\half_duty_new[3]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFF0100FE)) 
    \half_duty_new[3]_i_3__0 
       (.I0(\half_duty_new[2]_i_2__1_n_0 ),
        .I1(\half_duty_new[2]_i_3__0_n_0 ),
        .I2(half_duty_new4_carry_i_4__1_n_0),
        .I3(half_duty_new4_carry__2_n_0),
        .I4(half_duty_new4_carry_i_10__1_n_0),
        .O(half_duty_new10_in[3]));
  LUT4 #(
    .INIT(16'hDF20)) 
    \half_duty_new[4]_i_1__0 
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I2(\half_duty_new[4]_i_2__0_n_0 ),
        .I3(half_duty_new10_in[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFAFFFE)) 
    \half_duty_new[4]_i_2__0 
       (.I0(half_duty_new4_carry_i_10__1_n_0),
        .I1(p_1_out0),
        .I2(\half_duty_new[2]_i_4__0_n_0 ),
        .I3(\half_duty_new[2]_i_3__0_n_0 ),
        .I4(half_duty_new4_carry__2_n_0),
        .I5(\half_duty_new[2]_i_2__1_n_0 ),
        .O(\half_duty_new[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00010000FFFE)) 
    \half_duty_new[4]_i_3__1 
       (.I0(half_duty_new4_carry_i_4__1_n_0),
        .I1(\half_duty_new[2]_i_3__0_n_0 ),
        .I2(\half_duty_new[2]_i_2__1_n_0 ),
        .I3(half_duty_new4_carry_i_10__1_n_0),
        .I4(half_duty_new4_carry__2_n_0),
        .I5(\half_duty_new[7]_i_9__0_n_0 ),
        .O(half_duty_new10_in[4]));
  LUT6 #(
    .INIT(64'hD2D2D2D2D2D22DD2)) 
    \half_duty_new[5]_i_1__1 
       (.I0(\half_duty_new[5]_i_2__1_n_0 ),
        .I1(half_duty_new4_carry__2_n_0),
        .I2(\half_duty_new[5]_i_3__0_n_0 ),
        .I3(half_duty_new6_n_79),
        .I4(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I5(\half_duty_new[5]_i_4__0_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \half_duty_new[5]_i_2__1 
       (.I0(\half_duty_new[7]_i_9__0_n_0 ),
        .I1(half_duty_new4_carry_i_10__1_n_0),
        .I2(\half_duty_new[2]_i_2__1_n_0 ),
        .I3(\half_duty_new[2]_i_3__0_n_0 ),
        .I4(\half_duty_new[2]_i_4__0_n_0 ),
        .I5(p_1_out0),
        .O(\half_duty_new[5]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[5]_i_3__0 
       (.I0(half_duty_new6__0[22]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_83),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[6]),
        .O(\half_duty_new[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000001104000010)) 
    \half_duty_new[5]_i_4__0 
       (.I0(\half_duty_new[5]_i_5__0_n_0 ),
        .I1(\half_duty_new[7]_i_9__0_n_0 ),
        .I2(half_duty_new4_carry__2_n_0),
        .I3(half_duty_new4_carry_i_10__1_n_0),
        .I4(\half_duty_new[2]_i_2__1_n_0 ),
        .I5(\half_duty_new[5]_i_6__0_n_0 ),
        .O(\half_duty_new[5]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFDDDFFFBABBBAAA)) 
    \half_duty_new[5]_i_5__0 
       (.I0(\half_duty_new[2]_i_3__0_n_0 ),
        .I1(half_duty_new4_carry__2_n_0),
        .I2(half_duty_new6_n_89),
        .I3(half_duty_new7),
        .I4(half_duty_new6__0[16]),
        .I5(\half_duty_new[2]_i_4__0_n_0 ),
        .O(\half_duty_new[5]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000047)) 
    \half_duty_new[5]_i_6__0 
       (.I0(half_duty_new6_n_89),
        .I1(half_duty_new7),
        .I2(half_duty_new6__0[16]),
        .I3(\half_duty_new[2]_i_4__0_n_0 ),
        .I4(\half_duty_new[2]_i_3__0_n_0 ),
        .O(\half_duty_new[5]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \half_duty_new[6]_i_1__0 
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .I2(\half_duty_new[7]_i_4__1_n_0 ),
        .I3(half_duty_new10_in[6]),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hAB54)) 
    \half_duty_new[6]_i_3__0 
       (.I0(half_duty_new4_carry__2_n_0),
        .I1(\half_duty_new[5]_i_2__1_n_0 ),
        .I2(\half_duty_new[5]_i_3__0_n_0 ),
        .I3(\half_duty_new[7]_i_7__1_n_0 ),
        .O(half_duty_new10_in[6]));
  LUT3 #(
    .INIT(8'h3A)) 
    \half_duty_new[6]_i_4__0 
       (.I0(half_duty_new50_carry__5_n_1),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new7),
        .O(\half_duty_new[6]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \half_duty_new[6]_i_5__0 
       (.I0(half_duty_new50_carry__5_n_1),
        .I1(half_duty_new6_n_79),
        .I2(half_duty_new7),
        .O(\half_duty_new[6]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_duty_new[7]_i_1__0 
       (.I0(disabled),
        .O(\half_duty_new[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5AA55A87787878A5)) 
    \half_duty_new[7]_i_2__1 
       (.I0(\half_duty_new[7]_i_3__0_n_0 ),
        .I1(\half_duty_new[7]_i_4__1_n_0 ),
        .I2(\half_duty_new[7]_i_5__1_n_0 ),
        .I3(half_duty_new4_carry__2_n_0),
        .I4(\half_duty_new[7]_i_6__1_n_0 ),
        .I5(\half_duty_new[7]_i_7__1_n_0 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half_duty_new[7]_i_3__0 
       (.I0(half_duty_new6_n_79),
        .I1(\half_duty_new_reg[6]_i_2__0_n_1 ),
        .O(\half_duty_new[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFAFEFFFFFFFF)) 
    \half_duty_new[7]_i_4__1 
       (.I0(\half_duty_new[5]_i_3__0_n_0 ),
        .I1(\half_duty_new[7]_i_8__0_n_0 ),
        .I2(half_duty_new4_carry_i_10__1_n_0),
        .I3(half_duty_new4_carry__2_n_0),
        .I4(\half_duty_new[7]_i_9__0_n_0 ),
        .I5(\half_duty_new[3]_i_2__1_n_0 ),
        .O(\half_duty_new[7]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[7]_i_5__1 
       (.I0(half_duty_new6__0[24]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_81),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[8]),
        .O(\half_duty_new[7]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h1015101010151515)) 
    \half_duty_new[7]_i_6__1 
       (.I0(\half_duty_new[5]_i_2__1_n_0 ),
        .I1(half_duty_new4[6]),
        .I2(half_duty_new6_n_79),
        .I3(half_duty_new6_n_83),
        .I4(half_duty_new7),
        .I5(half_duty_new6__0[22]),
        .O(\half_duty_new[7]_i_6__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[7]_i_7__1 
       (.I0(half_duty_new6__0[23]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_82),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[7]),
        .O(\half_duty_new[7]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFFFE)) 
    \half_duty_new[7]_i_8__0 
       (.I0(\half_duty_new[2]_i_2__1_n_0 ),
        .I1(\half_duty_new[2]_i_3__0_n_0 ),
        .I2(\half_duty_new[2]_i_4__0_n_0 ),
        .I3(half_duty_new6__0[16]),
        .I4(half_duty_new7),
        .I5(half_duty_new6_n_89),
        .O(\half_duty_new[7]_i_8__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \half_duty_new[7]_i_9__0 
       (.I0(half_duty_new6__0[21]),
        .I1(half_duty_new7),
        .I2(half_duty_new6_n_84),
        .I3(half_duty_new6_n_79),
        .I4(half_duty_new4[5]),
        .O(\half_duty_new[7]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1__0_n_0 ),
        .D(half_duty_new10_in[0]),
        .Q(half_duty_new[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1__0_n_0 ),
        .D(p_1_in[1]),
        .Q(half_duty_new[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1__0_n_0 ),
        .D(p_1_in[2]),
        .Q(half_duty_new[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1__0_n_0 ),
        .D(p_1_in[3]),
        .Q(half_duty_new[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1__0_n_0 ),
        .D(p_1_in[4]),
        .Q(half_duty_new[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1__0_n_0 ),
        .D(p_1_in[5]),
        .Q(half_duty_new[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1__0_n_0 ),
        .D(p_1_in[6]),
        .Q(half_duty_new[6]),
        .R(1'b0));
  CARRY4 \half_duty_new_reg[6]_i_2__0 
       (.CI(half_duty_new4_carry__0_i_9__1_n_0),
        .CO({\NLW_half_duty_new_reg[6]_i_2__0_CO_UNCONNECTED [3],\half_duty_new_reg[6]_i_2__0_n_1 ,\NLW_half_duty_new_reg[6]_i_2__0_CO_UNCONNECTED [1],\half_duty_new_reg[6]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_half_duty_new_reg[6]_i_2__0_O_UNCONNECTED [3:2],half_duty_new4[14:13]}),
        .S({1'b0,1'b1,\half_duty_new[6]_i_4__0_n_0 ,\half_duty_new[6]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_new_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\half_duty_new[7]_i_1__0_n_0 ),
        .D(p_1_in[7]),
        .Q(half_duty_new[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[0] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[0]),
        .Q(\half_duty_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[1] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[1]),
        .Q(\half_duty_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[2] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[2]),
        .Q(\half_duty_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[3] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[3]),
        .Q(\half_duty_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[4] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[4]),
        .Q(\half_duty_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[5] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[5]),
        .Q(\half_duty_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[6] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[6]),
        .Q(\half_duty_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_duty_reg[7] 
       (.C(s00_axi_aclk),
        .CE(half_duty0),
        .D(half_duty_new[7]),
        .Q(\half_duty_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 pwm_out_buf0_carry
       (.CI(1'b0),
        .CO({NLW_pwm_out_buf0_carry_CO_UNCONNECTED[3],pwm_out_buf_reg_1,pwm_out_buf0_carry_n_2,pwm_out_buf0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out_buf0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,pwm_out_buf0_carry_i_1__1_n_0,pwm_out_buf0_carry_i_2__1_n_0,pwm_out_buf0_carry_i_3__1_n_0}));
  LUT6 #(
    .INIT(64'h1004088008800440)) 
    pwm_out_buf0_carry_i_1__1
       (.I0(pwm_out_buf0_carry_i_4__1_n_0),
        .I1(\count_reg_n_0_[8] ),
        .I2(\half_duty_reg_n_0_[7] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[6] ),
        .I5(\half_duty_reg_n_0_[6] ),
        .O(pwm_out_buf0_carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h4200002800424200)) 
    pwm_out_buf0_carry_i_2__1
       (.I0(pwm_out_buf0_carry_i_5__0_n_0),
        .I1(\half_duty_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\half_duty_reg_n_0_[3] ),
        .I5(pwm_out_buf0_carry_i_6__0_n_0),
        .O(pwm_out_buf0_carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0090090090000006)) 
    pwm_out_buf0_carry_i_3__1
       (.I0(\half_duty_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\half_duty_reg_n_0_[1] ),
        .I4(\half_duty_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[1] ),
        .O(pwm_out_buf0_carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h77777777777FFFFF)) 
    pwm_out_buf0_carry_i_4__1
       (.I0(\half_duty_reg_n_0_[5] ),
        .I1(\half_duty_reg_n_0_[4] ),
        .I2(\half_duty_reg_n_0_[1] ),
        .I3(\half_duty_reg_n_0_[0] ),
        .I4(\half_duty_reg_n_0_[2] ),
        .I5(\half_duty_reg_n_0_[3] ),
        .O(pwm_out_buf0_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pwm_out_buf0_carry_i_5__0
       (.I0(\half_duty_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[5] ),
        .O(pwm_out_buf0_carry_i_5__0_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    pwm_out_buf0_carry_i_6__0
       (.I0(\half_duty_reg_n_0_[1] ),
        .I1(\half_duty_reg_n_0_[0] ),
        .I2(\half_duty_reg_n_0_[2] ),
        .O(pwm_out_buf0_carry_i_6__0_n_0));
  CARRY4 pwm_out_buf1_carry
       (.CI(1'b0),
        .CO({NLW_pwm_out_buf1_carry_CO_UNCONNECTED[3],pwm_out_buf_reg_0,pwm_out_buf1_carry_n_2,pwm_out_buf1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_out_buf1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,pwm_out_buf1_carry_i_1__1_n_0,pwm_out_buf1_carry_i_2__1_n_0,pwm_out_buf1_carry_i_3__1_n_0}));
  LUT5 #(
    .INIT(32'h21000021)) 
    pwm_out_buf1_carry_i_1__1
       (.I0(\half_duty_reg_n_0_[6] ),
        .I1(\count_reg_n_0_[8] ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\half_duty_reg_n_0_[7] ),
        .O(pwm_out_buf1_carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pwm_out_buf1_carry_i_2__1
       (.I0(\half_duty_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\half_duty_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\half_duty_reg_n_0_[3] ),
        .O(pwm_out_buf1_carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h8421000000008421)) 
    pwm_out_buf1_carry_i_3__1
       (.I0(\half_duty_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\half_duty_reg_n_0_[0] ),
        .I4(\half_duty_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[2] ),
        .O(pwm_out_buf1_carry_i_3__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pwm_out_buf_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(disabled),
        .D(pwm_out_buf_reg_2),
        .Q(motor_right_pwm_out));
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
