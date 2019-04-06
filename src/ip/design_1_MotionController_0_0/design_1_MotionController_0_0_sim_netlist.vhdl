-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sat Apr  6 11:59:39 2019
-- Host        : catabit running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/catabit/TestSDCar/SDCar/SDCarVivado/SDCarVivado.srcs/sources_1/bd/design_1/ip/design_1_MotionController_0_0/design_1_MotionController_0_0_sim_netlist.vhdl
-- Design      : design_1_MotionController_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MotionController_0_0_PWM_Driver is
  port (
    servo_pwm_out : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_out_buf_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_out_buf_reg_1 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC;
    \slv_reg1_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg1_reg[10]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg1_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MotionController_0_0_PWM_Driver : entity is "PWM_Driver";
end design_1_MotionController_0_0_PWM_Driver;

architecture STRUCTURE of design_1_MotionController_0_0_PWM_Driver is
  signal count : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__3_n_2\ : STD_LOGIC;
  signal \count0_carry__3_n_3\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[19]_i_2_n_0\ : STD_LOGIC;
  signal \count[19]_i_3_n_0\ : STD_LOGIC;
  signal \count[19]_i_4_n_0\ : STD_LOGIC;
  signal \count[19]_i_5_n_0\ : STD_LOGIC;
  signal \count[19]_i_6_n_0\ : STD_LOGIC;
  signal \count[19]_i_7_n_0\ : STD_LOGIC;
  signal \count[19]_i_8_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal disabled : STD_LOGIC;
  signal disabled0 : STD_LOGIC;
  signal disabled02_out : STD_LOGIC;
  signal half_duty0 : STD_LOGIC;
  signal half_duty_new : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal half_duty_new1 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal half_duty_new3 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal half_duty_new4 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal \half_duty_new4_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_11_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_11_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_11_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_12_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_12_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_12_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_20_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_21_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_22_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_23_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_24_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_25_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_26_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_27_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_28_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_7__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_8__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_9_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_9_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_5__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_6__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_7_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_n_3\ : STD_LOGIC;
  signal half_duty_new4_carry_i_10_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_10_n_1 : STD_LOGIC;
  signal half_duty_new4_carry_i_10_n_2 : STD_LOGIC;
  signal half_duty_new4_carry_i_10_n_3 : STD_LOGIC;
  signal half_duty_new4_carry_i_11_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_11_n_1 : STD_LOGIC;
  signal half_duty_new4_carry_i_11_n_2 : STD_LOGIC;
  signal half_duty_new4_carry_i_11_n_3 : STD_LOGIC;
  signal half_duty_new4_carry_i_12_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_12_n_1 : STD_LOGIC;
  signal half_duty_new4_carry_i_12_n_2 : STD_LOGIC;
  signal half_duty_new4_carry_i_12_n_3 : STD_LOGIC;
  signal half_duty_new4_carry_i_13_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_13_n_1 : STD_LOGIC;
  signal half_duty_new4_carry_i_13_n_2 : STD_LOGIC;
  signal half_duty_new4_carry_i_13_n_3 : STD_LOGIC;
  signal half_duty_new4_carry_i_14_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_15_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_16_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_17_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_18_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_19_n_0 : STD_LOGIC;
  signal \half_duty_new4_carry_i_1__1_n_0\ : STD_LOGIC;
  signal half_duty_new4_carry_i_20_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_21_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_22_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_23_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_24_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_25_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_26_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_27_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_28_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_29_n_0 : STD_LOGIC;
  signal \half_duty_new4_carry_i_2__1_n_0\ : STD_LOGIC;
  signal half_duty_new4_carry_i_30_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_31_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_31_n_1 : STD_LOGIC;
  signal half_duty_new4_carry_i_31_n_2 : STD_LOGIC;
  signal half_duty_new4_carry_i_31_n_3 : STD_LOGIC;
  signal half_duty_new4_carry_i_32_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_33_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_34_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_35_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_36_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_36_n_1 : STD_LOGIC;
  signal half_duty_new4_carry_i_36_n_2 : STD_LOGIC;
  signal half_duty_new4_carry_i_36_n_3 : STD_LOGIC;
  signal half_duty_new4_carry_i_37_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_38_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_39_n_0 : STD_LOGIC;
  signal \half_duty_new4_carry_i_3__1_n_0\ : STD_LOGIC;
  signal half_duty_new4_carry_i_40_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_41_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_42_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_43_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_44_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_45_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_4_n_0 : STD_LOGIC;
  signal \half_duty_new4_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_8__1_n_0\ : STD_LOGIC;
  signal half_duty_new4_carry_i_9_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_9_n_1 : STD_LOGIC;
  signal half_duty_new4_carry_i_9_n_2 : STD_LOGIC;
  signal half_duty_new4_carry_i_9_n_3 : STD_LOGIC;
  signal half_duty_new4_carry_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_n_1 : STD_LOGIC;
  signal half_duty_new4_carry_n_2 : STD_LOGIC;
  signal half_duty_new4_carry_n_3 : STD_LOGIC;
  signal \half_duty_new6__0\ : STD_LOGIC_VECTOR ( 30 downto 12 );
  signal half_duty_new6_i_10_n_0 : STD_LOGIC;
  signal half_duty_new6_i_11_n_0 : STD_LOGIC;
  signal half_duty_new6_i_12_n_0 : STD_LOGIC;
  signal half_duty_new6_i_1_n_0 : STD_LOGIC;
  signal half_duty_new6_i_2_n_0 : STD_LOGIC;
  signal half_duty_new6_i_3_n_0 : STD_LOGIC;
  signal half_duty_new6_i_4_n_0 : STD_LOGIC;
  signal half_duty_new6_i_5_n_0 : STD_LOGIC;
  signal half_duty_new6_i_6_n_0 : STD_LOGIC;
  signal half_duty_new6_i_7_n_0 : STD_LOGIC;
  signal half_duty_new6_i_8_n_0 : STD_LOGIC;
  signal half_duty_new6_i_9_n_0 : STD_LOGIC;
  signal half_duty_new6_n_100 : STD_LOGIC;
  signal half_duty_new6_n_101 : STD_LOGIC;
  signal half_duty_new6_n_102 : STD_LOGIC;
  signal half_duty_new6_n_103 : STD_LOGIC;
  signal half_duty_new6_n_104 : STD_LOGIC;
  signal half_duty_new6_n_105 : STD_LOGIC;
  signal half_duty_new6_n_72 : STD_LOGIC;
  signal half_duty_new6_n_73 : STD_LOGIC;
  signal half_duty_new6_n_74 : STD_LOGIC;
  signal half_duty_new6_n_75 : STD_LOGIC;
  signal half_duty_new6_n_76 : STD_LOGIC;
  signal half_duty_new6_n_77 : STD_LOGIC;
  signal half_duty_new6_n_78 : STD_LOGIC;
  signal half_duty_new6_n_79 : STD_LOGIC;
  signal half_duty_new6_n_80 : STD_LOGIC;
  signal half_duty_new6_n_81 : STD_LOGIC;
  signal half_duty_new6_n_82 : STD_LOGIC;
  signal half_duty_new6_n_83 : STD_LOGIC;
  signal half_duty_new6_n_84 : STD_LOGIC;
  signal half_duty_new6_n_85 : STD_LOGIC;
  signal half_duty_new6_n_86 : STD_LOGIC;
  signal half_duty_new6_n_87 : STD_LOGIC;
  signal half_duty_new6_n_88 : STD_LOGIC;
  signal half_duty_new6_n_89 : STD_LOGIC;
  signal half_duty_new6_n_90 : STD_LOGIC;
  signal half_duty_new6_n_91 : STD_LOGIC;
  signal half_duty_new6_n_92 : STD_LOGIC;
  signal half_duty_new6_n_93 : STD_LOGIC;
  signal half_duty_new6_n_94 : STD_LOGIC;
  signal half_duty_new6_n_95 : STD_LOGIC;
  signal half_duty_new6_n_96 : STD_LOGIC;
  signal half_duty_new6_n_97 : STD_LOGIC;
  signal half_duty_new6_n_98 : STD_LOGIC;
  signal half_duty_new6_n_99 : STD_LOGIC;
  signal half_duty_new7 : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_7__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_8__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_5__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_6__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_7__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_8__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_n_1\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_n_2\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_n_3\ : STD_LOGIC;
  signal half_duty_new7_carry_i_1_n_0 : STD_LOGIC;
  signal half_duty_new7_carry_i_2_n_0 : STD_LOGIC;
  signal half_duty_new7_carry_i_3_n_0 : STD_LOGIC;
  signal half_duty_new7_carry_i_4_n_0 : STD_LOGIC;
  signal \half_duty_new7_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_8__1_n_0\ : STD_LOGIC;
  signal half_duty_new7_carry_n_0 : STD_LOGIC;
  signal half_duty_new7_carry_n_1 : STD_LOGIC;
  signal half_duty_new7_carry_n_2 : STD_LOGIC;
  signal half_duty_new7_carry_n_3 : STD_LOGIC;
  signal \half_duty_new[0]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[10]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[11]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[11]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[11]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[11]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[11]_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new[12]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[12]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[12]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[12]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[12]_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new[13]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[14]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[15]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[15]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[15]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[15]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[15]_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new[16]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[16]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[16]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[16]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[16]_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new[17]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[18]_i_10_n_0\ : STD_LOGIC;
  signal \half_duty_new[18]_i_11_n_0\ : STD_LOGIC;
  signal \half_duty_new[18]_i_12_n_0\ : STD_LOGIC;
  signal \half_duty_new[18]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[18]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[18]_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new[18]_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new[18]_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new[1]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[2]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[3]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[3]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[3]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[3]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[3]_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new[3]_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new[4]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[4]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[4]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[4]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[4]_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new[4]_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new[5]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[6]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new[8]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[8]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[8]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[8]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[8]_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new[9]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[15]_i_3_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[18]_i_3_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[18]_i_4_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[18]_i_4_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[18]_i_5_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[18]_i_5_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[3]_i_3_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[3]_i_3_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[0]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[10]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[11]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[12]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[13]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[14]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[15]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[16]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[17]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[18]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[1]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[2]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[3]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[4]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[5]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[6]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[7]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[8]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \pwm_out_buf0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry__0_i_4_n_3\ : STD_LOGIC;
  signal \pwm_out_buf0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry__0_i_5_n_1\ : STD_LOGIC;
  signal \pwm_out_buf0_carry__0_i_5_n_2\ : STD_LOGIC;
  signal \pwm_out_buf0_carry__0_i_5_n_3\ : STD_LOGIC;
  signal \pwm_out_buf0_carry__0_n_2\ : STD_LOGIC;
  signal \pwm_out_buf0_carry__0_n_3\ : STD_LOGIC;
  signal pwm_out_buf0_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_out_buf0_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_out_buf0_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_out_buf0_carry_i_4_n_0 : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_5__1_n_1\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_5__1_n_2\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_5__1_n_3\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_6__1_n_1\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_6__1_n_2\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_6__1_n_3\ : STD_LOGIC;
  signal pwm_out_buf0_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_out_buf0_carry_i_7_n_1 : STD_LOGIC;
  signal pwm_out_buf0_carry_i_7_n_2 : STD_LOGIC;
  signal pwm_out_buf0_carry_i_7_n_3 : STD_LOGIC;
  signal pwm_out_buf0_carry_n_0 : STD_LOGIC;
  signal pwm_out_buf0_carry_n_1 : STD_LOGIC;
  signal pwm_out_buf0_carry_n_2 : STD_LOGIC;
  signal pwm_out_buf0_carry_n_3 : STD_LOGIC;
  signal pwm_out_buf1 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \pwm_out_buf1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_out_buf1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_out_buf1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_out_buf1_carry__0_n_2\ : STD_LOGIC;
  signal \pwm_out_buf1_carry__0_n_3\ : STD_LOGIC;
  signal pwm_out_buf1_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_out_buf1_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_out_buf1_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_out_buf1_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_out_buf1_carry_n_0 : STD_LOGIC;
  signal pwm_out_buf1_carry_n_1 : STD_LOGIC;
  signal pwm_out_buf1_carry_n_2 : STD_LOGIC;
  signal pwm_out_buf1_carry_n_3 : STD_LOGIC;
  signal \^servo_pwm_out\ : STD_LOGIC;
  signal \NLW_count0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_half_duty_new4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new4_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new4_carry__1_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new4_carry__1_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new4_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_half_duty_new4_carry_i_13_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_half_duty_new4_carry_i_31_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_half_duty_new4_carry_i_36_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_half_duty_new6_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_half_duty_new6_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_half_duty_new6_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_half_duty_new6_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 34 );
  signal NLW_half_duty_new6_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_half_duty_new7_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new7_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new7_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new7_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[18]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[18]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new_reg[18]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[18]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new_reg[18]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new_reg[18]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwm_out_buf0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_buf0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pwm_out_buf0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_buf0_carry__0_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm_out_buf0_carry__0_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_pwm_out_buf1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out_buf1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pwm_out_buf1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count[12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count[13]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[18]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[19]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of disabled_reg : label is "LDC";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of half_duty_new6 : label is "{SYNTH-13 {cell *THIS*}}";
begin
  servo_pwm_out <= \^servo_pwm_out\;
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \count_reg_n_0_[12]\,
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \count_reg_n_0_[16]\,
      S(2) => \count_reg_n_0_[15]\,
      S(1) => \count_reg_n_0_[14]\,
      S(0) => \count_reg_n_0_[13]\
    );
\count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__2_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__3_n_2\,
      CO(0) => \count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(19 downto 17),
      S(3) => '0',
      S(2) => \count_reg_n_0_[19]\,
      S(1) => \count_reg_n_0_[18]\,
      S(0) => \count_reg_n_0_[17]\
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => count(0)
    );
\count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(10),
      O => count(10)
    );
\count[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(11),
      O => count(11)
    );
\count[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(12),
      O => count(12)
    );
\count[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(13),
      O => count(13)
    );
\count[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(14),
      O => count(14)
    );
\count[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(15),
      O => count(15)
    );
\count[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(16),
      O => count(16)
    );
\count[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(17),
      O => count(17)
    );
\count[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(18),
      O => count(18)
    );
\count[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(19),
      O => count(19)
    );
\count[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \count[19]_i_3_n_0\,
      I1 => \count[19]_i_4_n_0\,
      I2 => \count_reg_n_0_[19]\,
      I3 => \count_reg_n_0_[18]\,
      I4 => \count[19]_i_5_n_0\,
      I5 => \count[19]_i_6_n_0\,
      O => \count[19]_i_2_n_0\
    );
\count[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count_reg_n_0_[7]\,
      I2 => \count_reg_n_0_[6]\,
      O => \count[19]_i_3_n_0\
    );
\count[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \count_reg_n_0_[11]\,
      I1 => \count_reg_n_0_[10]\,
      I2 => \count_reg_n_0_[9]\,
      O => \count[19]_i_4_n_0\
    );
\count[19]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[3]\,
      O => \count[19]_i_5_n_0\
    );
\count[19]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \count[19]_i_7_n_0\,
      I1 => \count[19]_i_8_n_0\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[2]\,
      O => \count[19]_i_6_n_0\
    );
\count[19]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \count_reg_n_0_[17]\,
      I1 => \count_reg_n_0_[16]\,
      I2 => \count_reg_n_0_[15]\,
      O => \count[19]_i_7_n_0\
    );
\count[19]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \count_reg_n_0_[14]\,
      I1 => \count_reg_n_0_[13]\,
      I2 => \count_reg_n_0_[12]\,
      O => \count[19]_i_8_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(1),
      O => count(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(2),
      O => count(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(3),
      O => count(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(4),
      O => count(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(5),
      O => count(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(6),
      O => count(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(7),
      O => count(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(8),
      O => count(8)
    );
\count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => data0(9),
      O => count(9)
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(0),
      Q => \count_reg_n_0_[0]\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(10),
      Q => \count_reg_n_0_[10]\
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(11),
      Q => \count_reg_n_0_[11]\
    );
\count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(12),
      Q => \count_reg_n_0_[12]\
    );
\count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(13),
      Q => \count_reg_n_0_[13]\
    );
\count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(14),
      Q => \count_reg_n_0_[14]\
    );
\count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(15),
      Q => \count_reg_n_0_[15]\
    );
\count_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(16),
      Q => \count_reg_n_0_[16]\
    );
\count_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(17),
      Q => \count_reg_n_0_[17]\
    );
\count_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(18),
      Q => \count_reg_n_0_[18]\
    );
\count_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(19),
      Q => \count_reg_n_0_[19]\
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(1),
      Q => \count_reg_n_0_[1]\
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(2),
      Q => \count_reg_n_0_[2]\
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(3),
      Q => \count_reg_n_0_[3]\
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(4),
      Q => \count_reg_n_0_[4]\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(5),
      Q => \count_reg_n_0_[5]\
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(6),
      Q => \count_reg_n_0_[6]\
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(7),
      Q => \count_reg_n_0_[7]\
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(8),
      Q => \count_reg_n_0_[8]\
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(9),
      Q => \count_reg_n_0_[9]\
    );
disabled_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => disabled0,
      D => disabled02_out,
      G => disabled02_out,
      GE => '1',
      Q => disabled
    );
\disabled_reg_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => Q(0),
      I1 => enable,
      I2 => \^servo_pwm_out\,
      O => disabled02_out
    );
\disabled_reg_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^servo_pwm_out\,
      I1 => disabled,
      I2 => Q(0),
      I3 => enable,
      O => disabled0
    );
\half_duty[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count[19]_i_2_n_0\,
      I1 => disabled,
      O => half_duty0
    );
half_duty_new4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => half_duty_new4_carry_n_0,
      CO(2) => half_duty_new4_carry_n_1,
      CO(1) => half_duty_new4_carry_n_2,
      CO(0) => half_duty_new4_carry_n_3,
      CYINIT => '1',
      DI(3) => \half_duty_new4_carry_i_1__1_n_0\,
      DI(2) => \half_duty_new4_carry_i_2__1_n_0\,
      DI(1) => \half_duty_new4_carry_i_3__1_n_0\,
      DI(0) => half_duty_new4_carry_i_4_n_0,
      O(3 downto 0) => NLW_half_duty_new4_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \half_duty_new4_carry_i_5__1_n_0\,
      S(2) => \half_duty_new4_carry_i_6__1_n_0\,
      S(1) => \half_duty_new4_carry_i_7__1_n_0\,
      S(0) => \half_duty_new4_carry_i_8__1_n_0\
    );
\half_duty_new4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new4_carry_n_0,
      CO(3) => \half_duty_new4_carry__0_n_0\,
      CO(2) => \half_duty_new4_carry__0_n_1\,
      CO(1) => \half_duty_new4_carry__0_n_2\,
      CO(0) => \half_duty_new4_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new4_carry__0_i_1__1_n_0\,
      DI(2) => \half_duty_new4_carry__0_i_2__1_n_0\,
      DI(1) => \half_duty_new4_carry__0_i_3__1_n_0\,
      DI(0) => \half_duty_new4_carry__0_i_4__1_n_0\,
      O(3 downto 0) => \NLW_half_duty_new4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new4_carry__0_i_5__1_n_0\,
      S(2) => \half_duty_new4_carry__0_i_6__1_n_0\,
      S(1) => \half_duty_new4_carry__0_i_7__1_n_0\,
      S(0) => \half_duty_new4_carry__0_i_8__1_n_0\
    );
\half_duty_new4_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry__0_i_12_n_0\,
      CO(3) => \half_duty_new4_carry__0_i_10_n_0\,
      CO(2) => \half_duty_new4_carry__0_i_10_n_1\,
      CO(1) => \half_duty_new4_carry__0_i_10_n_2\,
      CO(0) => \half_duty_new4_carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new6__0\(28 downto 25),
      S(3) => \half_duty_new4_carry__0_i_17_n_0\,
      S(2) => \half_duty_new4_carry__0_i_18_n_0\,
      S(1) => \half_duty_new4_carry__0_i_19_n_0\,
      S(0) => \half_duty_new4_carry__0_i_20_n_0\
    );
\half_duty_new4_carry__0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new4_carry_i_9_n_0,
      CO(3) => \half_duty_new4_carry__0_i_11_n_0\,
      CO(2) => \half_duty_new4_carry__0_i_11_n_1\,
      CO(1) => \half_duty_new4_carry__0_i_11_n_2\,
      CO(0) => \half_duty_new4_carry__0_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new4(12 downto 9),
      S(3) => \half_duty_new4_carry__0_i_21_n_0\,
      S(2) => \half_duty_new4_carry__0_i_22_n_0\,
      S(1) => \half_duty_new4_carry__0_i_23_n_0\,
      S(0) => \half_duty_new4_carry__0_i_24_n_0\
    );
\half_duty_new4_carry__0_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new4_carry_i_10_n_0,
      CO(3) => \half_duty_new4_carry__0_i_12_n_0\,
      CO(2) => \half_duty_new4_carry__0_i_12_n_1\,
      CO(1) => \half_duty_new4_carry__0_i_12_n_2\,
      CO(0) => \half_duty_new4_carry__0_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new6__0\(24 downto 21),
      S(3) => \half_duty_new4_carry__0_i_25_n_0\,
      S(2) => \half_duty_new4_carry__0_i_26_n_0\,
      S(1) => \half_duty_new4_carry__0_i_27_n_0\,
      S(0) => \half_duty_new4_carry__0_i_28_n_0\
    );
\half_duty_new4_carry__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(28),
      I2 => half_duty_new6_n_77,
      O => \half_duty_new4_carry__0_i_13_n_0\
    );
\half_duty_new4_carry__0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(27),
      I2 => half_duty_new6_n_78,
      O => \half_duty_new4_carry__0_i_14_n_0\
    );
\half_duty_new4_carry__0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(26),
      I2 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__0_i_15_n_0\
    );
\half_duty_new4_carry__0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(25),
      I2 => half_duty_new6_n_80,
      O => \half_duty_new4_carry__0_i_16_n_0\
    );
\half_duty_new4_carry__0_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_77,
      O => \half_duty_new4_carry__0_i_17_n_0\
    );
\half_duty_new4_carry__0_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_78,
      O => \half_duty_new4_carry__0_i_18_n_0\
    );
\half_duty_new4_carry__0_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__0_i_19_n_0\
    );
\half_duty_new4_carry__0_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD8D8DD88"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new4(14),
      I2 => half_duty_new6_n_79,
      I3 => \half_duty_new6__0\(26),
      I4 => half_duty_new7,
      I5 => \half_duty_new[14]_i_2_n_0\,
      O => \half_duty_new4_carry__0_i_1__1_n_0\
    );
\half_duty_new4_carry__0_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_80,
      O => \half_duty_new4_carry__0_i_20_n_0\
    );
\half_duty_new4_carry__0_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(24),
      I2 => half_duty_new6_n_81,
      O => \half_duty_new4_carry__0_i_21_n_0\
    );
\half_duty_new4_carry__0_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(23),
      I2 => half_duty_new6_n_82,
      O => \half_duty_new4_carry__0_i_22_n_0\
    );
\half_duty_new4_carry__0_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(22),
      I2 => half_duty_new6_n_83,
      O => \half_duty_new4_carry__0_i_23_n_0\
    );
\half_duty_new4_carry__0_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(21),
      I2 => half_duty_new6_n_84,
      O => \half_duty_new4_carry__0_i_24_n_0\
    );
\half_duty_new4_carry__0_i_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_81,
      O => \half_duty_new4_carry__0_i_25_n_0\
    );
\half_duty_new4_carry__0_i_26\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_82,
      O => \half_duty_new4_carry__0_i_26_n_0\
    );
\half_duty_new4_carry__0_i_27\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_83,
      O => \half_duty_new4_carry__0_i_27_n_0\
    );
\half_duty_new4_carry__0_i_28\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_84,
      O => \half_duty_new4_carry__0_i_28_n_0\
    );
\half_duty_new4_carry__0_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD8D8DD88"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new4(12),
      I2 => half_duty_new6_n_81,
      I3 => \half_duty_new6__0\(24),
      I4 => half_duty_new7,
      I5 => \half_duty_new[12]_i_3_n_0\,
      O => \half_duty_new4_carry__0_i_2__1_n_0\
    );
\half_duty_new4_carry__0_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD8D8DD88"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new4(10),
      I2 => half_duty_new6_n_83,
      I3 => \half_duty_new6__0\(22),
      I4 => half_duty_new7,
      I5 => \half_duty_new[10]_i_2_n_0\,
      O => \half_duty_new4_carry__0_i_3__1_n_0\
    );
\half_duty_new4_carry__0_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD8D8DD88"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new4(8),
      I2 => half_duty_new6_n_85,
      I3 => \half_duty_new6__0\(20),
      I4 => half_duty_new7,
      I5 => \half_duty_new[8]_i_3_n_0\,
      O => \half_duty_new4_carry__0_i_4__1_n_0\
    );
\half_duty_new4_carry__0_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(26),
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(14),
      I5 => \half_duty_new[14]_i_2_n_0\,
      O => \half_duty_new4_carry__0_i_5__1_n_0\
    );
\half_duty_new4_carry__0_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(24),
      I3 => half_duty_new6_n_81,
      I4 => half_duty_new4(12),
      I5 => \half_duty_new[12]_i_3_n_0\,
      O => \half_duty_new4_carry__0_i_6__1_n_0\
    );
\half_duty_new4_carry__0_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(22),
      I3 => half_duty_new6_n_83,
      I4 => half_duty_new4(10),
      I5 => \half_duty_new[10]_i_2_n_0\,
      O => \half_duty_new4_carry__0_i_7__1_n_0\
    );
\half_duty_new4_carry__0_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(20),
      I3 => half_duty_new6_n_85,
      I4 => half_duty_new4(8),
      I5 => \half_duty_new[8]_i_3_n_0\,
      O => \half_duty_new4_carry__0_i_8__1_n_0\
    );
\half_duty_new4_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry__0_i_11_n_0\,
      CO(3) => \half_duty_new4_carry__0_i_9_n_0\,
      CO(2) => \half_duty_new4_carry__0_i_9_n_1\,
      CO(1) => \half_duty_new4_carry__0_i_9_n_2\,
      CO(0) => \half_duty_new4_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new4(16 downto 13),
      S(3) => \half_duty_new4_carry__0_i_13_n_0\,
      S(2) => \half_duty_new4_carry__0_i_14_n_0\,
      S(1) => \half_duty_new4_carry__0_i_15_n_0\,
      S(0) => \half_duty_new4_carry__0_i_16_n_0\
    );
\half_duty_new4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry__0_n_0\,
      CO(3) => \half_duty_new4_carry__1_n_0\,
      CO(2) => \half_duty_new4_carry__1_n_1\,
      CO(1) => \half_duty_new4_carry__1_n_2\,
      CO(0) => \half_duty_new4_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"11",
      DI(1) => \half_duty_new4_carry__1_i_1_n_0\,
      DI(0) => \half_duty_new4_carry__1_i_2__1_n_0\,
      O(3 downto 0) => \NLW_half_duty_new4_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new4_carry__1_i_3_n_0\,
      S(2) => \half_duty_new4_carry__1_i_4_n_0\,
      S(1) => \half_duty_new4_carry__1_i_5__1_n_0\,
      S(0) => \half_duty_new4_carry__1_i_6__1_n_0\
    );
\half_duty_new4_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFFCFCAAFF0C0C"
    )
        port map (
      I0 => half_duty_new4(18),
      I1 => \half_duty_new6__0\(30),
      I2 => half_duty_new7,
      I3 => \half_duty_new_reg[18]_i_4_n_1\,
      I4 => half_duty_new6_n_74,
      I5 => half_duty_new6_n_75,
      O => \half_duty_new4_carry__1_i_1_n_0\
    );
\half_duty_new4_carry__1_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD8D8DD88"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new4(16),
      I2 => half_duty_new6_n_77,
      I3 => \half_duty_new6__0\(28),
      I4 => half_duty_new7,
      I5 => \half_duty_new[16]_i_3_n_0\,
      O => \half_duty_new4_carry__1_i_2__1_n_0\
    );
\half_duty_new4_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[18]_i_4_n_1\,
      I1 => half_duty_new6_n_74,
      O => \half_duty_new4_carry__1_i_3_n_0\
    );
\half_duty_new4_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[18]_i_4_n_1\,
      I1 => half_duty_new6_n_74,
      O => \half_duty_new4_carry__1_i_4_n_0\
    );
\half_duty_new4_carry__1_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0011110F00BBBB"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(30),
      I2 => half_duty_new4(18),
      I3 => \half_duty_new_reg[18]_i_4_n_1\,
      I4 => half_duty_new6_n_74,
      I5 => half_duty_new6_n_75,
      O => \half_duty_new4_carry__1_i_5__1_n_0\
    );
\half_duty_new4_carry__1_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(28),
      I3 => half_duty_new6_n_77,
      I4 => half_duty_new4(16),
      I5 => \half_duty_new[16]_i_3_n_0\,
      O => \half_duty_new4_carry__1_i_6__1_n_0\
    );
\half_duty_new4_carry__1_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry__0_i_10_n_0\,
      CO(3 downto 1) => \NLW_half_duty_new4_carry__1_i_7_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \half_duty_new4_carry__1_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_half_duty_new4_carry__1_i_7_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \half_duty_new6__0\(30 downto 29),
      S(3 downto 2) => B"00",
      S(1) => \half_duty_new4_carry__1_i_8_n_0\,
      S(0) => \half_duty_new4_carry__1_i_9_n_0\
    );
\half_duty_new4_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_75,
      O => \half_duty_new4_carry__1_i_8_n_0\
    );
\half_duty_new4_carry__1_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_76,
      O => \half_duty_new4_carry__1_i_9_n_0\
    );
\half_duty_new4_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry__1_n_0\,
      CO(3) => \half_duty_new4_carry__2_n_0\,
      CO(2) => \half_duty_new4_carry__2_n_1\,
      CO(1) => \half_duty_new4_carry__2_n_2\,
      CO(0) => \half_duty_new4_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_half_duty_new4_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new4_carry__2_i_1_n_0\,
      S(2) => \half_duty_new4_carry__2_i_2_n_0\,
      S(1) => \half_duty_new4_carry__2_i_3_n_0\,
      S(0) => \half_duty_new4_carry__2_i_4_n_0\
    );
\half_duty_new4_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[18]_i_4_n_1\,
      I1 => half_duty_new6_n_74,
      O => \half_duty_new4_carry__2_i_1_n_0\
    );
\half_duty_new4_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[18]_i_4_n_1\,
      I1 => half_duty_new6_n_74,
      O => \half_duty_new4_carry__2_i_2_n_0\
    );
\half_duty_new4_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[18]_i_4_n_1\,
      I1 => half_duty_new6_n_74,
      O => \half_duty_new4_carry__2_i_3_n_0\
    );
\half_duty_new4_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[18]_i_4_n_1\,
      I1 => half_duty_new6_n_74,
      O => \half_duty_new4_carry__2_i_4_n_0\
    );
half_duty_new4_carry_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new4_carry_i_12_n_0,
      CO(3) => half_duty_new4_carry_i_10_n_0,
      CO(2) => half_duty_new4_carry_i_10_n_1,
      CO(1) => half_duty_new4_carry_i_10_n_2,
      CO(0) => half_duty_new4_carry_i_10_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new6__0\(20 downto 17),
      S(3) => half_duty_new4_carry_i_18_n_0,
      S(2) => half_duty_new4_carry_i_19_n_0,
      S(1) => half_duty_new4_carry_i_20_n_0,
      S(0) => half_duty_new4_carry_i_21_n_0
    );
half_duty_new4_carry_i_11: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => half_duty_new4_carry_i_11_n_0,
      CO(2) => half_duty_new4_carry_i_11_n_1,
      CO(1) => half_duty_new4_carry_i_11_n_2,
      CO(0) => half_duty_new4_carry_i_11_n_3,
      CYINIT => half_duty_new4_carry_i_22_n_0,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new4(4 downto 1),
      S(3) => half_duty_new4_carry_i_23_n_0,
      S(2) => half_duty_new4_carry_i_24_n_0,
      S(1) => half_duty_new4_carry_i_25_n_0,
      S(0) => half_duty_new4_carry_i_26_n_0
    );
half_duty_new4_carry_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new4_carry_i_13_n_0,
      CO(3) => half_duty_new4_carry_i_12_n_0,
      CO(2) => half_duty_new4_carry_i_12_n_1,
      CO(1) => half_duty_new4_carry_i_12_n_2,
      CO(0) => half_duty_new4_carry_i_12_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new6__0\(16 downto 13),
      S(3) => half_duty_new4_carry_i_27_n_0,
      S(2) => half_duty_new4_carry_i_28_n_0,
      S(1) => half_duty_new4_carry_i_29_n_0,
      S(0) => half_duty_new4_carry_i_30_n_0
    );
half_duty_new4_carry_i_13: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new4_carry_i_31_n_0,
      CO(3) => half_duty_new4_carry_i_13_n_0,
      CO(2) => half_duty_new4_carry_i_13_n_1,
      CO(1) => half_duty_new4_carry_i_13_n_2,
      CO(0) => half_duty_new4_carry_i_13_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \half_duty_new6__0\(12),
      O(2 downto 0) => NLW_half_duty_new4_carry_i_13_O_UNCONNECTED(2 downto 0),
      S(3) => half_duty_new4_carry_i_32_n_0,
      S(2) => half_duty_new4_carry_i_33_n_0,
      S(1) => half_duty_new4_carry_i_34_n_0,
      S(0) => half_duty_new4_carry_i_35_n_0
    );
half_duty_new4_carry_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(20),
      I2 => half_duty_new6_n_85,
      O => half_duty_new4_carry_i_14_n_0
    );
half_duty_new4_carry_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(19),
      I2 => half_duty_new6_n_86,
      O => half_duty_new4_carry_i_15_n_0
    );
half_duty_new4_carry_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(18),
      I2 => half_duty_new6_n_87,
      O => half_duty_new4_carry_i_16_n_0
    );
half_duty_new4_carry_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(17),
      I2 => half_duty_new6_n_88,
      O => half_duty_new4_carry_i_17_n_0
    );
half_duty_new4_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_85,
      O => half_duty_new4_carry_i_18_n_0
    );
half_duty_new4_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_86,
      O => half_duty_new4_carry_i_19_n_0
    );
\half_duty_new4_carry_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD8D8DD88"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new4(6),
      I2 => half_duty_new6_n_87,
      I3 => \half_duty_new6__0\(18),
      I4 => half_duty_new7,
      I5 => \half_duty_new[6]_i_2_n_0\,
      O => \half_duty_new4_carry_i_1__1_n_0\
    );
half_duty_new4_carry_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_87,
      O => half_duty_new4_carry_i_20_n_0
    );
half_duty_new4_carry_i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_88,
      O => half_duty_new4_carry_i_21_n_0
    );
half_duty_new4_carry_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(12),
      I2 => half_duty_new6_n_93,
      O => half_duty_new4_carry_i_22_n_0
    );
half_duty_new4_carry_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(16),
      I2 => half_duty_new6_n_89,
      O => half_duty_new4_carry_i_23_n_0
    );
half_duty_new4_carry_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(15),
      I2 => half_duty_new6_n_90,
      O => half_duty_new4_carry_i_24_n_0
    );
half_duty_new4_carry_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(14),
      I2 => half_duty_new6_n_91,
      O => half_duty_new4_carry_i_25_n_0
    );
half_duty_new4_carry_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(13),
      I2 => half_duty_new6_n_92,
      O => half_duty_new4_carry_i_26_n_0
    );
half_duty_new4_carry_i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_89,
      O => half_duty_new4_carry_i_27_n_0
    );
half_duty_new4_carry_i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_90,
      O => half_duty_new4_carry_i_28_n_0
    );
half_duty_new4_carry_i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_91,
      O => half_duty_new4_carry_i_29_n_0
    );
\half_duty_new4_carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD8D8DD88"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new4(4),
      I2 => half_duty_new6_n_89,
      I3 => \half_duty_new6__0\(16),
      I4 => half_duty_new7,
      I5 => \half_duty_new[4]_i_3_n_0\,
      O => \half_duty_new4_carry_i_2__1_n_0\
    );
half_duty_new4_carry_i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_92,
      O => half_duty_new4_carry_i_30_n_0
    );
half_duty_new4_carry_i_31: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new4_carry_i_36_n_0,
      CO(3) => half_duty_new4_carry_i_31_n_0,
      CO(2) => half_duty_new4_carry_i_31_n_1,
      CO(1) => half_duty_new4_carry_i_31_n_2,
      CO(0) => half_duty_new4_carry_i_31_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_half_duty_new4_carry_i_31_O_UNCONNECTED(3 downto 0),
      S(3) => half_duty_new4_carry_i_37_n_0,
      S(2) => half_duty_new4_carry_i_38_n_0,
      S(1) => half_duty_new4_carry_i_39_n_0,
      S(0) => half_duty_new4_carry_i_40_n_0
    );
half_duty_new4_carry_i_32: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_93,
      O => half_duty_new4_carry_i_32_n_0
    );
half_duty_new4_carry_i_33: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_94,
      O => half_duty_new4_carry_i_33_n_0
    );
half_duty_new4_carry_i_34: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_95,
      O => half_duty_new4_carry_i_34_n_0
    );
half_duty_new4_carry_i_35: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_96,
      O => half_duty_new4_carry_i_35_n_0
    );
half_duty_new4_carry_i_36: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => half_duty_new4_carry_i_36_n_0,
      CO(2) => half_duty_new4_carry_i_36_n_1,
      CO(1) => half_duty_new4_carry_i_36_n_2,
      CO(0) => half_duty_new4_carry_i_36_n_3,
      CYINIT => half_duty_new4_carry_i_41_n_0,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_half_duty_new4_carry_i_36_O_UNCONNECTED(3 downto 0),
      S(3) => half_duty_new4_carry_i_42_n_0,
      S(2) => half_duty_new4_carry_i_43_n_0,
      S(1) => half_duty_new4_carry_i_44_n_0,
      S(0) => half_duty_new4_carry_i_45_n_0
    );
half_duty_new4_carry_i_37: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_97,
      O => half_duty_new4_carry_i_37_n_0
    );
half_duty_new4_carry_i_38: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_98,
      O => half_duty_new4_carry_i_38_n_0
    );
half_duty_new4_carry_i_39: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_99,
      O => half_duty_new4_carry_i_39_n_0
    );
\half_duty_new4_carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD8D8DD88"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new4(2),
      I2 => half_duty_new6_n_91,
      I3 => \half_duty_new6__0\(14),
      I4 => half_duty_new7,
      I5 => \half_duty_new[2]_i_2_n_0\,
      O => \half_duty_new4_carry_i_3__1_n_0\
    );
half_duty_new4_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAC"
    )
        port map (
      I0 => half_duty_new6_n_93,
      I1 => \half_duty_new6__0\(12),
      I2 => half_duty_new7,
      I3 => \half_duty_new[0]_i_2_n_0\,
      O => half_duty_new4_carry_i_4_n_0
    );
half_duty_new4_carry_i_40: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_100,
      O => half_duty_new4_carry_i_40_n_0
    );
half_duty_new4_carry_i_41: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_105,
      O => half_duty_new4_carry_i_41_n_0
    );
half_duty_new4_carry_i_42: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_101,
      O => half_duty_new4_carry_i_42_n_0
    );
half_duty_new4_carry_i_43: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_102,
      O => half_duty_new4_carry_i_43_n_0
    );
half_duty_new4_carry_i_44: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_103,
      O => half_duty_new4_carry_i_44_n_0
    );
half_duty_new4_carry_i_45: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_104,
      O => half_duty_new4_carry_i_45_n_0
    );
\half_duty_new4_carry_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(18),
      I3 => half_duty_new6_n_87,
      I4 => half_duty_new4(6),
      I5 => \half_duty_new[6]_i_2_n_0\,
      O => \half_duty_new4_carry_i_5__1_n_0\
    );
\half_duty_new4_carry_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(16),
      I3 => half_duty_new6_n_89,
      I4 => half_duty_new4(4),
      I5 => \half_duty_new[4]_i_3_n_0\,
      O => \half_duty_new4_carry_i_6__1_n_0\
    );
\half_duty_new4_carry_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(14),
      I3 => half_duty_new6_n_91,
      I4 => half_duty_new4(2),
      I5 => \half_duty_new[2]_i_2_n_0\,
      O => \half_duty_new4_carry_i_7__1_n_0\
    );
\half_duty_new4_carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(12),
      I2 => half_duty_new6_n_93,
      I3 => \half_duty_new[0]_i_2_n_0\,
      O => \half_duty_new4_carry_i_8__1_n_0\
    );
half_duty_new4_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new4_carry_i_11_n_0,
      CO(3) => half_duty_new4_carry_i_9_n_0,
      CO(2) => half_duty_new4_carry_i_9_n_1,
      CO(1) => half_duty_new4_carry_i_9_n_2,
      CO(0) => half_duty_new4_carry_i_9_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new4(8 downto 5),
      S(3) => half_duty_new4_carry_i_14_n_0,
      S(2) => half_duty_new4_carry_i_15_n_0,
      S(1) => half_duty_new4_carry_i_16_n_0,
      S(0) => half_duty_new4_carry_i_17_n_0
    );
half_duty_new6: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000011110100001001000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_half_duty_new6_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 12) => B"000000",
      B(11) => half_duty_new6_i_1_n_0,
      B(10) => half_duty_new6_i_2_n_0,
      B(9) => half_duty_new6_i_3_n_0,
      B(8) => half_duty_new6_i_4_n_0,
      B(7) => half_duty_new6_i_5_n_0,
      B(6) => half_duty_new6_i_6_n_0,
      B(5) => half_duty_new6_i_7_n_0,
      B(4) => half_duty_new6_i_8_n_0,
      B(3) => half_duty_new6_i_9_n_0,
      B(2) => half_duty_new6_i_10_n_0,
      B(1) => half_duty_new6_i_11_n_0,
      B(0) => half_duty_new6_i_12_n_0,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_half_duty_new6_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_half_duty_new6_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_half_duty_new6_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_half_duty_new6_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_half_duty_new6_OVERFLOW_UNCONNECTED,
      P(47 downto 34) => NLW_half_duty_new6_P_UNCONNECTED(47 downto 34),
      P(33) => half_duty_new6_n_72,
      P(32) => half_duty_new6_n_73,
      P(31) => half_duty_new6_n_74,
      P(30) => half_duty_new6_n_75,
      P(29) => half_duty_new6_n_76,
      P(28) => half_duty_new6_n_77,
      P(27) => half_duty_new6_n_78,
      P(26) => half_duty_new6_n_79,
      P(25) => half_duty_new6_n_80,
      P(24) => half_duty_new6_n_81,
      P(23) => half_duty_new6_n_82,
      P(22) => half_duty_new6_n_83,
      P(21) => half_duty_new6_n_84,
      P(20) => half_duty_new6_n_85,
      P(19) => half_duty_new6_n_86,
      P(18) => half_duty_new6_n_87,
      P(17) => half_duty_new6_n_88,
      P(16) => half_duty_new6_n_89,
      P(15) => half_duty_new6_n_90,
      P(14) => half_duty_new6_n_91,
      P(13) => half_duty_new6_n_92,
      P(12) => half_duty_new6_n_93,
      P(11) => half_duty_new6_n_94,
      P(10) => half_duty_new6_n_95,
      P(9) => half_duty_new6_n_96,
      P(8) => half_duty_new6_n_97,
      P(7) => half_duty_new6_n_98,
      P(6) => half_duty_new6_n_99,
      P(5) => half_duty_new6_n_100,
      P(4) => half_duty_new6_n_101,
      P(3) => half_duty_new6_n_102,
      P(2) => half_duty_new6_n_103,
      P(1) => half_duty_new6_n_104,
      P(0) => half_duty_new6_n_105,
      PATTERNBDETECT => NLW_half_duty_new6_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_half_duty_new6_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_half_duty_new6_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_half_duty_new6_UNDERFLOW_UNCONNECTED
    );
half_duty_new6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \slv_reg1_reg[10]\(0),
      I1 => \slv_reg1_reg[10]_0\(0),
      I2 => \slv_reg1_reg[11]\(11),
      O => half_duty_new6_i_1_n_0
    );
half_duty_new6_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \slv_reg1_reg[10]\(0),
      I1 => \slv_reg1_reg[11]\(2),
      I2 => \slv_reg1_reg[10]_0\(0),
      O => half_duty_new6_i_10_n_0
    );
half_duty_new6_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \slv_reg1_reg[10]\(0),
      I1 => \slv_reg1_reg[11]\(1),
      I2 => \slv_reg1_reg[10]_0\(0),
      O => half_duty_new6_i_11_n_0
    );
half_duty_new6_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \slv_reg1_reg[10]\(0),
      I1 => \slv_reg1_reg[10]_0\(0),
      I2 => \slv_reg1_reg[11]\(0),
      O => half_duty_new6_i_12_n_0
    );
half_duty_new6_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \slv_reg1_reg[10]\(0),
      I1 => \slv_reg1_reg[10]_0\(0),
      I2 => \slv_reg1_reg[11]\(10),
      O => half_duty_new6_i_2_n_0
    );
half_duty_new6_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \slv_reg1_reg[10]\(0),
      I1 => \slv_reg1_reg[10]_0\(0),
      I2 => \slv_reg1_reg[11]\(9),
      O => half_duty_new6_i_3_n_0
    );
half_duty_new6_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \slv_reg1_reg[10]\(0),
      I1 => \slv_reg1_reg[10]_0\(0),
      I2 => \slv_reg1_reg[11]\(8),
      O => half_duty_new6_i_4_n_0
    );
half_duty_new6_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \slv_reg1_reg[10]\(0),
      I1 => \slv_reg1_reg[10]_0\(0),
      I2 => \slv_reg1_reg[11]\(7),
      O => half_duty_new6_i_5_n_0
    );
half_duty_new6_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \slv_reg1_reg[10]\(0),
      I1 => \slv_reg1_reg[11]\(6),
      I2 => \slv_reg1_reg[10]_0\(0),
      O => half_duty_new6_i_6_n_0
    );
half_duty_new6_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \slv_reg1_reg[10]\(0),
      I1 => \slv_reg1_reg[11]\(5),
      I2 => \slv_reg1_reg[10]_0\(0),
      O => half_duty_new6_i_7_n_0
    );
half_duty_new6_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \slv_reg1_reg[10]\(0),
      I1 => \slv_reg1_reg[10]_0\(0),
      I2 => \slv_reg1_reg[11]\(4),
      O => half_duty_new6_i_8_n_0
    );
half_duty_new6_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \slv_reg1_reg[10]\(0),
      I1 => \slv_reg1_reg[10]_0\(0),
      I2 => \slv_reg1_reg[11]\(3),
      O => half_duty_new6_i_9_n_0
    );
half_duty_new7_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => half_duty_new7_carry_n_0,
      CO(2) => half_duty_new7_carry_n_1,
      CO(1) => half_duty_new7_carry_n_2,
      CO(0) => half_duty_new7_carry_n_3,
      CYINIT => '1',
      DI(3) => half_duty_new7_carry_i_1_n_0,
      DI(2) => half_duty_new7_carry_i_2_n_0,
      DI(1) => half_duty_new7_carry_i_3_n_0,
      DI(0) => half_duty_new7_carry_i_4_n_0,
      O(3 downto 0) => NLW_half_duty_new7_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \half_duty_new7_carry_i_5__1_n_0\,
      S(2) => \half_duty_new7_carry_i_6__1_n_0\,
      S(1) => \half_duty_new7_carry_i_7__1_n_0\,
      S(0) => \half_duty_new7_carry_i_8__1_n_0\
    );
\half_duty_new7_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new7_carry_n_0,
      CO(3) => \half_duty_new7_carry__0_n_0\,
      CO(2) => \half_duty_new7_carry__0_n_1\,
      CO(1) => \half_duty_new7_carry__0_n_2\,
      CO(0) => \half_duty_new7_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new7_carry__0_i_1_n_0\,
      DI(2) => \half_duty_new7_carry__0_i_2_n_0\,
      DI(1) => \half_duty_new7_carry__0_i_3_n_0\,
      DI(0) => \half_duty_new7_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new7_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new7_carry__0_i_5__1_n_0\,
      S(2) => \half_duty_new7_carry__0_i_6__1_n_0\,
      S(1) => \half_duty_new7_carry__0_i_7__1_n_0\,
      S(0) => \half_duty_new7_carry__0_i_8__1_n_0\
    );
\half_duty_new7_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_91,
      I1 => half_duty_new6_n_90,
      O => \half_duty_new7_carry__0_i_1_n_0\
    );
\half_duty_new7_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_93,
      I1 => half_duty_new6_n_92,
      O => \half_duty_new7_carry__0_i_2_n_0\
    );
\half_duty_new7_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_95,
      I1 => half_duty_new6_n_94,
      O => \half_duty_new7_carry__0_i_3_n_0\
    );
\half_duty_new7_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_97,
      I1 => half_duty_new6_n_96,
      O => \half_duty_new7_carry__0_i_4_n_0\
    );
\half_duty_new7_carry__0_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_91,
      I1 => half_duty_new6_n_90,
      O => \half_duty_new7_carry__0_i_5__1_n_0\
    );
\half_duty_new7_carry__0_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_93,
      I1 => half_duty_new6_n_92,
      O => \half_duty_new7_carry__0_i_6__1_n_0\
    );
\half_duty_new7_carry__0_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_95,
      I1 => half_duty_new6_n_94,
      O => \half_duty_new7_carry__0_i_7__1_n_0\
    );
\half_duty_new7_carry__0_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_97,
      I1 => half_duty_new6_n_96,
      O => \half_duty_new7_carry__0_i_8__1_n_0\
    );
\half_duty_new7_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new7_carry__0_n_0\,
      CO(3) => \half_duty_new7_carry__1_n_0\,
      CO(2) => \half_duty_new7_carry__1_n_1\,
      CO(1) => \half_duty_new7_carry__1_n_2\,
      CO(0) => \half_duty_new7_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new7_carry__1_i_1_n_0\,
      DI(2) => \half_duty_new7_carry__1_i_2_n_0\,
      DI(1) => \half_duty_new7_carry__1_i_3_n_0\,
      DI(0) => \half_duty_new7_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new7_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new7_carry__1_i_5__1_n_0\,
      S(2) => \half_duty_new7_carry__1_i_6__1_n_0\,
      S(1) => \half_duty_new7_carry__1_i_7__1_n_0\,
      S(0) => \half_duty_new7_carry__1_i_8__1_n_0\
    );
\half_duty_new7_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_83,
      I1 => half_duty_new6_n_82,
      O => \half_duty_new7_carry__1_i_1_n_0\
    );
\half_duty_new7_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_85,
      I1 => half_duty_new6_n_84,
      O => \half_duty_new7_carry__1_i_2_n_0\
    );
\half_duty_new7_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_87,
      I1 => half_duty_new6_n_86,
      O => \half_duty_new7_carry__1_i_3_n_0\
    );
\half_duty_new7_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_89,
      I1 => half_duty_new6_n_88,
      O => \half_duty_new7_carry__1_i_4_n_0\
    );
\half_duty_new7_carry__1_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_83,
      I1 => half_duty_new6_n_82,
      O => \half_duty_new7_carry__1_i_5__1_n_0\
    );
\half_duty_new7_carry__1_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_85,
      I1 => half_duty_new6_n_84,
      O => \half_duty_new7_carry__1_i_6__1_n_0\
    );
\half_duty_new7_carry__1_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_87,
      I1 => half_duty_new6_n_86,
      O => \half_duty_new7_carry__1_i_7__1_n_0\
    );
\half_duty_new7_carry__1_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_89,
      I1 => half_duty_new6_n_88,
      O => \half_duty_new7_carry__1_i_8__1_n_0\
    );
\half_duty_new7_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new7_carry__1_n_0\,
      CO(3) => half_duty_new7,
      CO(2) => \half_duty_new7_carry__2_n_1\,
      CO(1) => \half_duty_new7_carry__2_n_2\,
      CO(0) => \half_duty_new7_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new7_carry__2_i_1__1_n_0\,
      DI(2) => \half_duty_new7_carry__2_i_2_n_0\,
      DI(1) => \half_duty_new7_carry__2_i_3_n_0\,
      DI(0) => \half_duty_new7_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new7_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new7_carry__2_i_5_n_0\,
      S(2) => \half_duty_new7_carry__2_i_6_n_0\,
      S(1) => \half_duty_new7_carry__2_i_7_n_0\,
      S(0) => \half_duty_new7_carry__2_i_8_n_0\
    );
\half_duty_new7_carry__2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_75,
      I1 => half_duty_new6_n_74,
      O => \half_duty_new7_carry__2_i_1__1_n_0\
    );
\half_duty_new7_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_77,
      I1 => half_duty_new6_n_76,
      O => \half_duty_new7_carry__2_i_2_n_0\
    );
\half_duty_new7_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => half_duty_new6_n_78,
      O => \half_duty_new7_carry__2_i_3_n_0\
    );
\half_duty_new7_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_81,
      I1 => half_duty_new6_n_80,
      O => \half_duty_new7_carry__2_i_4_n_0\
    );
\half_duty_new7_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_75,
      I1 => half_duty_new6_n_74,
      O => \half_duty_new7_carry__2_i_5_n_0\
    );
\half_duty_new7_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_77,
      I1 => half_duty_new6_n_76,
      O => \half_duty_new7_carry__2_i_6_n_0\
    );
\half_duty_new7_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => half_duty_new6_n_78,
      O => \half_duty_new7_carry__2_i_7_n_0\
    );
\half_duty_new7_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_81,
      I1 => half_duty_new6_n_80,
      O => \half_duty_new7_carry__2_i_8_n_0\
    );
half_duty_new7_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_99,
      I1 => half_duty_new6_n_98,
      O => half_duty_new7_carry_i_1_n_0
    );
half_duty_new7_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_101,
      I1 => half_duty_new6_n_100,
      O => half_duty_new7_carry_i_2_n_0
    );
half_duty_new7_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_103,
      I1 => half_duty_new6_n_102,
      O => half_duty_new7_carry_i_3_n_0
    );
half_duty_new7_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_105,
      I1 => half_duty_new6_n_104,
      O => half_duty_new7_carry_i_4_n_0
    );
\half_duty_new7_carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_99,
      I1 => half_duty_new6_n_98,
      O => \half_duty_new7_carry_i_5__1_n_0\
    );
\half_duty_new7_carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_101,
      I1 => half_duty_new6_n_100,
      O => \half_duty_new7_carry_i_6__1_n_0\
    );
\half_duty_new7_carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_103,
      I1 => half_duty_new6_n_102,
      O => \half_duty_new7_carry_i_7__1_n_0\
    );
\half_duty_new7_carry_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_105,
      I1 => half_duty_new6_n_104,
      O => \half_duty_new7_carry_i_8__1_n_0\
    );
\half_duty_new[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \half_duty_new[0]_i_2_n_0\,
      I1 => half_duty_new3(1),
      I2 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(0)
    );
\half_duty_new[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(1),
      I1 => half_duty_new6_n_92,
      I2 => \half_duty_new6__0\(13),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[0]_i_2_n_0\
    );
\half_duty_new[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(10),
      I3 => \half_duty_new[10]_i_2_n_0\,
      I4 => half_duty_new3(11),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(10)
    );
\half_duty_new[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(11),
      I1 => half_duty_new6_n_82,
      I2 => \half_duty_new6__0\(23),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[10]_i_2_n_0\
    );
\half_duty_new[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(11),
      I3 => \half_duty_new[11]_i_2_n_0\,
      I4 => half_duty_new3(12),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(11)
    );
\half_duty_new[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(12),
      I1 => half_duty_new6_n_81,
      I2 => \half_duty_new6__0\(24),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[11]_i_2_n_0\
    );
\half_duty_new[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(24),
      I3 => half_duty_new6_n_81,
      I4 => half_duty_new4(12),
      O => \half_duty_new[11]_i_4_n_0\
    );
\half_duty_new[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(23),
      I3 => half_duty_new6_n_82,
      I4 => half_duty_new4(11),
      O => \half_duty_new[11]_i_5_n_0\
    );
\half_duty_new[11]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(22),
      I3 => half_duty_new6_n_83,
      I4 => half_duty_new4(10),
      O => \half_duty_new[11]_i_6_n_0\
    );
\half_duty_new[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(21),
      I3 => half_duty_new6_n_84,
      I4 => half_duty_new4(9),
      O => \half_duty_new[11]_i_7_n_0\
    );
\half_duty_new[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(12),
      I3 => \half_duty_new[12]_i_3_n_0\,
      I4 => half_duty_new3(13),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(12)
    );
\half_duty_new[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(13),
      I1 => half_duty_new6_n_80,
      I2 => \half_duty_new6__0\(25),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[12]_i_3_n_0\
    );
\half_duty_new[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(13),
      I2 => \half_duty_new[12]_i_3_n_0\,
      O => \half_duty_new[12]_i_4_n_0\
    );
\half_duty_new[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(12),
      I2 => \half_duty_new[11]_i_2_n_0\,
      O => \half_duty_new[12]_i_5_n_0\
    );
\half_duty_new[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(11),
      I2 => \half_duty_new[10]_i_2_n_0\,
      O => \half_duty_new[12]_i_6_n_0\
    );
\half_duty_new[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(10),
      I2 => \half_duty_new[9]_i_2_n_0\,
      O => \half_duty_new[12]_i_7_n_0\
    );
\half_duty_new[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(13),
      I3 => \half_duty_new[13]_i_2_n_0\,
      I4 => half_duty_new3(14),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(13)
    );
\half_duty_new[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(14),
      I1 => half_duty_new6_n_79,
      I2 => \half_duty_new6__0\(26),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[13]_i_2_n_0\
    );
\half_duty_new[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(14),
      I3 => \half_duty_new[14]_i_2_n_0\,
      I4 => half_duty_new3(15),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(14)
    );
\half_duty_new[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(15),
      I1 => half_duty_new6_n_78,
      I2 => \half_duty_new6__0\(27),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[14]_i_2_n_0\
    );
\half_duty_new[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(15),
      I3 => \half_duty_new[15]_i_2_n_0\,
      I4 => half_duty_new3(16),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(15)
    );
\half_duty_new[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(16),
      I1 => half_duty_new6_n_77,
      I2 => \half_duty_new6__0\(28),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[15]_i_2_n_0\
    );
\half_duty_new[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(28),
      I3 => half_duty_new6_n_77,
      I4 => half_duty_new4(16),
      O => \half_duty_new[15]_i_4_n_0\
    );
\half_duty_new[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(27),
      I3 => half_duty_new6_n_78,
      I4 => half_duty_new4(15),
      O => \half_duty_new[15]_i_5_n_0\
    );
\half_duty_new[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(26),
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(14),
      O => \half_duty_new[15]_i_6_n_0\
    );
\half_duty_new[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(25),
      I3 => half_duty_new6_n_80,
      I4 => half_duty_new4(13),
      O => \half_duty_new[15]_i_7_n_0\
    );
\half_duty_new[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(16),
      I3 => \half_duty_new[16]_i_3_n_0\,
      I4 => half_duty_new3(17),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(16)
    );
\half_duty_new[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(17),
      I1 => half_duty_new6_n_76,
      I2 => \half_duty_new6__0\(29),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[16]_i_3_n_0\
    );
\half_duty_new[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(17),
      I2 => \half_duty_new[16]_i_3_n_0\,
      O => \half_duty_new[16]_i_4_n_0\
    );
\half_duty_new[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(16),
      I2 => \half_duty_new[15]_i_2_n_0\,
      O => \half_duty_new[16]_i_5_n_0\
    );
\half_duty_new[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(15),
      I2 => \half_duty_new[14]_i_2_n_0\,
      O => \half_duty_new[16]_i_6_n_0\
    );
\half_duty_new[16]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(14),
      I2 => \half_duty_new[13]_i_2_n_0\,
      O => \half_duty_new[16]_i_7_n_0\
    );
\half_duty_new[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(17),
      I3 => \half_duty_new[17]_i_2_n_0\,
      I4 => half_duty_new3(18),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(17)
    );
\half_duty_new[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(18),
      I1 => half_duty_new6_n_75,
      I2 => \half_duty_new6__0\(30),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[17]_i_2_n_0\
    );
\half_duty_new[18]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disabled,
      O => \half_duty_new[18]_i_1_n_0\
    );
\half_duty_new[18]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[18]_i_4_n_1\,
      I1 => half_duty_new6_n_74,
      O => \half_duty_new[18]_i_10_n_0\
    );
\half_duty_new[18]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(30),
      I3 => half_duty_new6_n_75,
      I4 => half_duty_new4(18),
      O => \half_duty_new[18]_i_11_n_0\
    );
\half_duty_new[18]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(29),
      I3 => half_duty_new6_n_76,
      I4 => half_duty_new4(17),
      O => \half_duty_new[18]_i_12_n_0\
    );
\half_duty_new[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => half_duty_new1(18),
      I1 => half_duty_new6_n_74,
      I2 => \half_duty_new_reg[18]_i_4_n_1\,
      I3 => half_duty_new3(19),
      I4 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(18)
    );
\half_duty_new[18]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B1BB"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(19),
      I2 => \half_duty_new_reg[18]_i_4_n_1\,
      I3 => half_duty_new6_n_74,
      O => \half_duty_new[18]_i_6_n_0\
    );
\half_duty_new[18]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(18),
      I2 => \half_duty_new[17]_i_2_n_0\,
      O => \half_duty_new[18]_i_7_n_0\
    );
\half_duty_new[18]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(30),
      I2 => half_duty_new6_n_75,
      O => \half_duty_new[18]_i_8_n_0\
    );
\half_duty_new[18]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(29),
      I2 => half_duty_new6_n_76,
      O => \half_duty_new[18]_i_9_n_0\
    );
\half_duty_new[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(1),
      I3 => \half_duty_new[1]_i_2_n_0\,
      I4 => half_duty_new3(2),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(1)
    );
\half_duty_new[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(2),
      I1 => half_duty_new6_n_91,
      I2 => \half_duty_new6__0\(14),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[1]_i_2_n_0\
    );
\half_duty_new[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(2),
      I3 => \half_duty_new[2]_i_2_n_0\,
      I4 => half_duty_new3(3),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(2)
    );
\half_duty_new[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(3),
      I1 => half_duty_new6_n_90,
      I2 => \half_duty_new6__0\(15),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[2]_i_2_n_0\
    );
\half_duty_new[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(3),
      I3 => \half_duty_new[3]_i_2_n_0\,
      I4 => half_duty_new3(4),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(3)
    );
\half_duty_new[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(4),
      I1 => half_duty_new6_n_89,
      I2 => \half_duty_new6__0\(16),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[3]_i_2_n_0\
    );
\half_duty_new[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new6__0\(12),
      I2 => half_duty_new6_n_93,
      O => \half_duty_new[3]_i_4_n_0\
    );
\half_duty_new[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(16),
      I3 => half_duty_new6_n_89,
      I4 => half_duty_new4(4),
      O => \half_duty_new[3]_i_5_n_0\
    );
\half_duty_new[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(15),
      I3 => half_duty_new6_n_90,
      I4 => half_duty_new4(3),
      O => \half_duty_new[3]_i_6_n_0\
    );
\half_duty_new[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(14),
      I3 => half_duty_new6_n_91,
      I4 => half_duty_new4(2),
      O => \half_duty_new[3]_i_7_n_0\
    );
\half_duty_new[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(13),
      I3 => half_duty_new6_n_92,
      I4 => half_duty_new4(1),
      O => \half_duty_new[3]_i_8_n_0\
    );
\half_duty_new[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(4),
      I3 => \half_duty_new[4]_i_3_n_0\,
      I4 => half_duty_new3(5),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(4)
    );
\half_duty_new[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(5),
      I1 => half_duty_new6_n_88,
      I2 => \half_duty_new6__0\(17),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[4]_i_3_n_0\
    );
\half_duty_new[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(1),
      I2 => \half_duty_new[0]_i_2_n_0\,
      O => \half_duty_new[4]_i_4_n_0\
    );
\half_duty_new[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(5),
      I2 => \half_duty_new[4]_i_3_n_0\,
      O => \half_duty_new[4]_i_5_n_0\
    );
\half_duty_new[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(4),
      I2 => \half_duty_new[3]_i_2_n_0\,
      O => \half_duty_new[4]_i_6_n_0\
    );
\half_duty_new[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(3),
      I2 => \half_duty_new[2]_i_2_n_0\,
      O => \half_duty_new[4]_i_7_n_0\
    );
\half_duty_new[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(2),
      I2 => \half_duty_new[1]_i_2_n_0\,
      O => \half_duty_new[4]_i_8_n_0\
    );
\half_duty_new[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(5),
      I3 => \half_duty_new[5]_i_2_n_0\,
      I4 => half_duty_new3(6),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(5)
    );
\half_duty_new[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(6),
      I1 => half_duty_new6_n_87,
      I2 => \half_duty_new6__0\(18),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[5]_i_2_n_0\
    );
\half_duty_new[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(6),
      I3 => \half_duty_new[6]_i_2_n_0\,
      I4 => half_duty_new3(7),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(6)
    );
\half_duty_new[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(7),
      I1 => half_duty_new6_n_86,
      I2 => \half_duty_new6__0\(19),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[6]_i_2_n_0\
    );
\half_duty_new[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(7),
      I3 => \half_duty_new[7]_i_2_n_0\,
      I4 => half_duty_new3(8),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(7)
    );
\half_duty_new[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(8),
      I1 => half_duty_new6_n_85,
      I2 => \half_duty_new6__0\(20),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[7]_i_2_n_0\
    );
\half_duty_new[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(20),
      I3 => half_duty_new6_n_85,
      I4 => half_duty_new4(8),
      O => \half_duty_new[7]_i_4_n_0\
    );
\half_duty_new[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(19),
      I3 => half_duty_new6_n_86,
      I4 => half_duty_new4(7),
      O => \half_duty_new[7]_i_5_n_0\
    );
\half_duty_new[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(18),
      I3 => half_duty_new6_n_87,
      I4 => half_duty_new4(6),
      O => \half_duty_new[7]_i_6_n_0\
    );
\half_duty_new[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0145ABEF"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(17),
      I3 => half_duty_new6_n_88,
      I4 => half_duty_new4(5),
      O => \half_duty_new[7]_i_7_n_0\
    );
\half_duty_new[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(8),
      I3 => \half_duty_new[8]_i_3_n_0\,
      I4 => half_duty_new3(9),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(8)
    );
\half_duty_new[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(9),
      I1 => half_duty_new6_n_84,
      I2 => \half_duty_new6__0\(21),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[8]_i_3_n_0\
    );
\half_duty_new[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(9),
      I2 => \half_duty_new[8]_i_3_n_0\,
      O => \half_duty_new[8]_i_4_n_0\
    );
\half_duty_new[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(8),
      I2 => \half_duty_new[7]_i_2_n_0\,
      O => \half_duty_new[8]_i_5_n_0\
    );
\half_duty_new[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(7),
      I2 => \half_duty_new[6]_i_2_n_0\,
      O => \half_duty_new[8]_i_6_n_0\
    );
\half_duty_new[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => half_duty_new3(6),
      I2 => \half_duty_new[5]_i_2_n_0\,
      O => \half_duty_new[8]_i_7_n_0\
    );
\half_duty_new[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD20FD20FDFD2020"
    )
        port map (
      I0 => half_duty_new6_n_74,
      I1 => \half_duty_new_reg[18]_i_4_n_1\,
      I2 => half_duty_new1(9),
      I3 => \half_duty_new[9]_i_2_n_0\,
      I4 => half_duty_new3(10),
      I5 => \half_duty_new4_carry__2_n_0\,
      O => p_1_in(9)
    );
\half_duty_new[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => half_duty_new4(10),
      I1 => half_duty_new6_n_83,
      I2 => \half_duty_new6__0\(22),
      I3 => half_duty_new7,
      I4 => half_duty_new6_n_74,
      O => \half_duty_new[9]_i_2_n_0\
    );
\half_duty_new_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(0),
      Q => half_duty_new(0),
      R => '0'
    );
\half_duty_new_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(10),
      Q => half_duty_new(10),
      R => '0'
    );
\half_duty_new_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(11),
      Q => half_duty_new(11),
      R => '0'
    );
\half_duty_new_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[7]_i_3_n_0\,
      CO(3) => \half_duty_new_reg[11]_i_3_n_0\,
      CO(2) => \half_duty_new_reg[11]_i_3_n_1\,
      CO(1) => \half_duty_new_reg[11]_i_3_n_2\,
      CO(0) => \half_duty_new_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new3(12 downto 9),
      S(3) => \half_duty_new[11]_i_4_n_0\,
      S(2) => \half_duty_new[11]_i_5_n_0\,
      S(1) => \half_duty_new[11]_i_6_n_0\,
      S(0) => \half_duty_new[11]_i_7_n_0\
    );
\half_duty_new_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(12),
      Q => half_duty_new(12),
      R => '0'
    );
\half_duty_new_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[8]_i_2_n_0\,
      CO(3) => \half_duty_new_reg[12]_i_2_n_0\,
      CO(2) => \half_duty_new_reg[12]_i_2_n_1\,
      CO(1) => \half_duty_new_reg[12]_i_2_n_2\,
      CO(0) => \half_duty_new_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new1(12 downto 9),
      S(3) => \half_duty_new[12]_i_4_n_0\,
      S(2) => \half_duty_new[12]_i_5_n_0\,
      S(1) => \half_duty_new[12]_i_6_n_0\,
      S(0) => \half_duty_new[12]_i_7_n_0\
    );
\half_duty_new_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(13),
      Q => half_duty_new(13),
      R => '0'
    );
\half_duty_new_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(14),
      Q => half_duty_new(14),
      R => '0'
    );
\half_duty_new_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(15),
      Q => half_duty_new(15),
      R => '0'
    );
\half_duty_new_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[11]_i_3_n_0\,
      CO(3) => \half_duty_new_reg[15]_i_3_n_0\,
      CO(2) => \half_duty_new_reg[15]_i_3_n_1\,
      CO(1) => \half_duty_new_reg[15]_i_3_n_2\,
      CO(0) => \half_duty_new_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new3(16 downto 13),
      S(3) => \half_duty_new[15]_i_4_n_0\,
      S(2) => \half_duty_new[15]_i_5_n_0\,
      S(1) => \half_duty_new[15]_i_6_n_0\,
      S(0) => \half_duty_new[15]_i_7_n_0\
    );
\half_duty_new_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(16),
      Q => half_duty_new(16),
      R => '0'
    );
\half_duty_new_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[12]_i_2_n_0\,
      CO(3) => \half_duty_new_reg[16]_i_2_n_0\,
      CO(2) => \half_duty_new_reg[16]_i_2_n_1\,
      CO(1) => \half_duty_new_reg[16]_i_2_n_2\,
      CO(0) => \half_duty_new_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new1(16 downto 13),
      S(3) => \half_duty_new[16]_i_4_n_0\,
      S(2) => \half_duty_new[16]_i_5_n_0\,
      S(1) => \half_duty_new[16]_i_6_n_0\,
      S(0) => \half_duty_new[16]_i_7_n_0\
    );
\half_duty_new_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(17),
      Q => half_duty_new(17),
      R => '0'
    );
\half_duty_new_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(18),
      Q => half_duty_new(18),
      R => '0'
    );
\half_duty_new_reg[18]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[16]_i_2_n_0\,
      CO(3 downto 1) => \NLW_half_duty_new_reg[18]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \half_duty_new_reg[18]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_half_duty_new_reg[18]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => half_duty_new1(18 downto 17),
      S(3 downto 2) => B"00",
      S(1) => \half_duty_new[18]_i_6_n_0\,
      S(0) => \half_duty_new[18]_i_7_n_0\
    );
\half_duty_new_reg[18]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry__0_i_9_n_0\,
      CO(3) => \NLW_half_duty_new_reg[18]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new_reg[18]_i_4_n_1\,
      CO(1) => \NLW_half_duty_new_reg[18]_i_4_CO_UNCONNECTED\(1),
      CO(0) => \half_duty_new_reg[18]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_half_duty_new_reg[18]_i_4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => half_duty_new4(18 downto 17),
      S(3 downto 2) => B"01",
      S(1) => \half_duty_new[18]_i_8_n_0\,
      S(0) => \half_duty_new[18]_i_9_n_0\
    );
\half_duty_new_reg[18]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[15]_i_3_n_0\,
      CO(3 downto 2) => \NLW_half_duty_new_reg[18]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \half_duty_new_reg[18]_i_5_n_2\,
      CO(0) => \half_duty_new_reg[18]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_half_duty_new_reg[18]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => half_duty_new3(19 downto 17),
      S(3) => '0',
      S(2) => \half_duty_new[18]_i_10_n_0\,
      S(1) => \half_duty_new[18]_i_11_n_0\,
      S(0) => \half_duty_new[18]_i_12_n_0\
    );
\half_duty_new_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(1),
      Q => half_duty_new(1),
      R => '0'
    );
\half_duty_new_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(2),
      Q => half_duty_new(2),
      R => '0'
    );
\half_duty_new_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(3),
      Q => half_duty_new(3),
      R => '0'
    );
\half_duty_new_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[3]_i_3_n_0\,
      CO(2) => \half_duty_new_reg[3]_i_3_n_1\,
      CO(1) => \half_duty_new_reg[3]_i_3_n_2\,
      CO(0) => \half_duty_new_reg[3]_i_3_n_3\,
      CYINIT => \half_duty_new[3]_i_4_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new3(4 downto 1),
      S(3) => \half_duty_new[3]_i_5_n_0\,
      S(2) => \half_duty_new[3]_i_6_n_0\,
      S(1) => \half_duty_new[3]_i_7_n_0\,
      S(0) => \half_duty_new[3]_i_8_n_0\
    );
\half_duty_new_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(4),
      Q => half_duty_new(4),
      R => '0'
    );
\half_duty_new_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[4]_i_2_n_0\,
      CO(2) => \half_duty_new_reg[4]_i_2_n_1\,
      CO(1) => \half_duty_new_reg[4]_i_2_n_2\,
      CO(0) => \half_duty_new_reg[4]_i_2_n_3\,
      CYINIT => \half_duty_new[4]_i_4_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new1(4 downto 1),
      S(3) => \half_duty_new[4]_i_5_n_0\,
      S(2) => \half_duty_new[4]_i_6_n_0\,
      S(1) => \half_duty_new[4]_i_7_n_0\,
      S(0) => \half_duty_new[4]_i_8_n_0\
    );
\half_duty_new_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(5),
      Q => half_duty_new(5),
      R => '0'
    );
\half_duty_new_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(6),
      Q => half_duty_new(6),
      R => '0'
    );
\half_duty_new_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(7),
      Q => half_duty_new(7),
      R => '0'
    );
\half_duty_new_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[3]_i_3_n_0\,
      CO(3) => \half_duty_new_reg[7]_i_3_n_0\,
      CO(2) => \half_duty_new_reg[7]_i_3_n_1\,
      CO(1) => \half_duty_new_reg[7]_i_3_n_2\,
      CO(0) => \half_duty_new_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new3(8 downto 5),
      S(3) => \half_duty_new[7]_i_4_n_0\,
      S(2) => \half_duty_new[7]_i_5_n_0\,
      S(1) => \half_duty_new[7]_i_6_n_0\,
      S(0) => \half_duty_new[7]_i_7_n_0\
    );
\half_duty_new_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(8),
      Q => half_duty_new(8),
      R => '0'
    );
\half_duty_new_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[4]_i_2_n_0\,
      CO(3) => \half_duty_new_reg[8]_i_2_n_0\,
      CO(2) => \half_duty_new_reg[8]_i_2_n_1\,
      CO(1) => \half_duty_new_reg[8]_i_2_n_2\,
      CO(0) => \half_duty_new_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new1(8 downto 5),
      S(3) => \half_duty_new[8]_i_4_n_0\,
      S(2) => \half_duty_new[8]_i_5_n_0\,
      S(1) => \half_duty_new[8]_i_6_n_0\,
      S(0) => \half_duty_new[8]_i_7_n_0\
    );
\half_duty_new_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[18]_i_1_n_0\,
      D => p_1_in(9),
      Q => half_duty_new(9),
      R => '0'
    );
\half_duty_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(0),
      Q => \half_duty_reg_n_0_[0]\,
      R => '0'
    );
\half_duty_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(10),
      Q => \half_duty_reg_n_0_[10]\,
      R => '0'
    );
\half_duty_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(11),
      Q => \half_duty_reg_n_0_[11]\,
      R => '0'
    );
\half_duty_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(12),
      Q => \half_duty_reg_n_0_[12]\,
      R => '0'
    );
\half_duty_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(13),
      Q => \half_duty_reg_n_0_[13]\,
      R => '0'
    );
\half_duty_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(14),
      Q => \half_duty_reg_n_0_[14]\,
      R => '0'
    );
\half_duty_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(15),
      Q => \half_duty_reg_n_0_[15]\,
      R => '0'
    );
\half_duty_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(16),
      Q => \half_duty_reg_n_0_[16]\,
      R => '0'
    );
\half_duty_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(17),
      Q => \half_duty_reg_n_0_[17]\,
      R => '0'
    );
\half_duty_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(18),
      Q => \half_duty_reg_n_0_[18]\,
      R => '0'
    );
\half_duty_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(1),
      Q => \half_duty_reg_n_0_[1]\,
      R => '0'
    );
\half_duty_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(2),
      Q => \half_duty_reg_n_0_[2]\,
      R => '0'
    );
\half_duty_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(3),
      Q => \half_duty_reg_n_0_[3]\,
      R => '0'
    );
\half_duty_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(4),
      Q => \half_duty_reg_n_0_[4]\,
      R => '0'
    );
\half_duty_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(5),
      Q => \half_duty_reg_n_0_[5]\,
      R => '0'
    );
\half_duty_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(6),
      Q => \half_duty_reg_n_0_[6]\,
      R => '0'
    );
\half_duty_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(7),
      Q => \half_duty_reg_n_0_[7]\,
      R => '0'
    );
\half_duty_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(8),
      Q => \half_duty_reg_n_0_[8]\,
      R => '0'
    );
\half_duty_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(9),
      Q => \half_duty_reg_n_0_[9]\,
      R => '0'
    );
pwm_out_buf0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_out_buf0_carry_n_0,
      CO(2) => pwm_out_buf0_carry_n_1,
      CO(1) => pwm_out_buf0_carry_n_2,
      CO(0) => pwm_out_buf0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pwm_out_buf0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_out_buf0_carry_i_1_n_0,
      S(2) => pwm_out_buf0_carry_i_2_n_0,
      S(1) => pwm_out_buf0_carry_i_3_n_0,
      S(0) => pwm_out_buf0_carry_i_4_n_0
    );
\pwm_out_buf0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_out_buf0_carry_n_0,
      CO(3) => \NLW_pwm_out_buf0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => pwm_out_buf_reg_0(0),
      CO(1) => \pwm_out_buf0_carry__0_n_2\,
      CO(0) => \pwm_out_buf0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_out_buf0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \pwm_out_buf0_carry__0_i_1_n_0\,
      S(1) => \pwm_out_buf0_carry__0_i_2_n_0\,
      S(0) => \pwm_out_buf0_carry__0_i_3_n_0\
    );
\pwm_out_buf0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => \count_reg_n_0_[18]\,
      I1 => \count_reg_n_0_[19]\,
      I2 => pwm_out_buf1(18),
      I3 => pwm_out_buf1(19),
      O => \pwm_out_buf0_carry__0_i_1_n_0\
    );
\pwm_out_buf0_carry__0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[15]\,
      O => p_0_in(15)
    );
\pwm_out_buf0_carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[13]\,
      O => p_0_in(13)
    );
\pwm_out_buf0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pwm_out_buf1(17),
      I1 => \count_reg_n_0_[17]\,
      I2 => pwm_out_buf1(16),
      I3 => \count_reg_n_0_[16]\,
      I4 => \count_reg_n_0_[15]\,
      I5 => pwm_out_buf1(15),
      O => \pwm_out_buf0_carry__0_i_2_n_0\
    );
\pwm_out_buf0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pwm_out_buf1(14),
      I1 => \count_reg_n_0_[14]\,
      I2 => pwm_out_buf1(13),
      I3 => \count_reg_n_0_[13]\,
      I4 => \count_reg_n_0_[12]\,
      I5 => pwm_out_buf1(12),
      O => \pwm_out_buf0_carry__0_i_3_n_0\
    );
\pwm_out_buf0_carry__0_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_out_buf0_carry__0_i_5_n_0\,
      CO(3) => \NLW_pwm_out_buf0_carry__0_i_4_CO_UNCONNECTED\(3),
      CO(2) => pwm_out_buf1(19),
      CO(1) => \NLW_pwm_out_buf0_carry__0_i_4_CO_UNCONNECTED\(1),
      CO(0) => \pwm_out_buf0_carry__0_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => p_0_in(18 downto 17),
      O(3 downto 2) => \NLW_pwm_out_buf0_carry__0_i_4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => pwm_out_buf1(18 downto 17),
      S(3 downto 2) => B"01",
      S(1) => \half_duty_reg_n_0_[18]\,
      S(0) => \half_duty_reg_n_0_[17]\
    );
\pwm_out_buf0_carry__0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_out_buf0_carry_i_5__1_n_0\,
      CO(3) => \pwm_out_buf0_carry__0_i_5_n_0\,
      CO(2) => \pwm_out_buf0_carry__0_i_5_n_1\,
      CO(1) => \pwm_out_buf0_carry__0_i_5_n_2\,
      CO(0) => \pwm_out_buf0_carry__0_i_5_n_3\,
      CYINIT => '0',
      DI(3) => p_0_in(16),
      DI(2) => '0',
      DI(1) => p_0_in(14),
      DI(0) => '0',
      O(3 downto 0) => pwm_out_buf1(16 downto 13),
      S(3) => \half_duty_reg_n_0_[16]\,
      S(2) => p_0_in(15),
      S(1) => \half_duty_reg_n_0_[14]\,
      S(0) => p_0_in(13)
    );
\pwm_out_buf0_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[18]\,
      O => p_0_in(18)
    );
\pwm_out_buf0_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[17]\,
      O => p_0_in(17)
    );
\pwm_out_buf0_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[16]\,
      O => p_0_in(16)
    );
\pwm_out_buf0_carry__0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[14]\,
      O => p_0_in(14)
    );
pwm_out_buf0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pwm_out_buf1(11),
      I1 => \count_reg_n_0_[11]\,
      I2 => pwm_out_buf1(10),
      I3 => \count_reg_n_0_[10]\,
      I4 => \count_reg_n_0_[9]\,
      I5 => pwm_out_buf1(9),
      O => pwm_out_buf0_carry_i_1_n_0
    );
pwm_out_buf0_carry_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[11]\,
      O => p_0_in(11)
    );
pwm_out_buf0_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[10]\,
      O => p_0_in(10)
    );
pwm_out_buf0_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[6]\,
      O => p_0_in(6)
    );
pwm_out_buf0_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[8]\,
      O => p_0_in(8)
    );
pwm_out_buf0_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[7]\,
      O => p_0_in(7)
    );
pwm_out_buf0_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[5]\,
      O => p_0_in(5)
    );
pwm_out_buf0_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[0]\,
      O => p_0_in(0)
    );
pwm_out_buf0_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[4]\,
      O => p_0_in(4)
    );
pwm_out_buf0_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[3]\,
      O => p_0_in(3)
    );
pwm_out_buf0_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[2]\,
      O => p_0_in(2)
    );
pwm_out_buf0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pwm_out_buf1(8),
      I1 => \count_reg_n_0_[8]\,
      I2 => pwm_out_buf1(7),
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[6]\,
      I5 => pwm_out_buf1(6),
      O => pwm_out_buf0_carry_i_2_n_0
    );
pwm_out_buf0_carry_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[1]\,
      O => p_0_in(1)
    );
pwm_out_buf0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pwm_out_buf1(5),
      I1 => \count_reg_n_0_[5]\,
      I2 => pwm_out_buf1(4),
      I3 => \count_reg_n_0_[4]\,
      I4 => \count_reg_n_0_[3]\,
      I5 => pwm_out_buf1(3),
      O => pwm_out_buf0_carry_i_3_n_0
    );
pwm_out_buf0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008241000041"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => pwm_out_buf1(2),
      I3 => \count_reg_n_0_[0]\,
      I4 => \half_duty_reg_n_0_[0]\,
      I5 => pwm_out_buf1(1),
      O => pwm_out_buf0_carry_i_4_n_0
    );
\pwm_out_buf0_carry_i_5__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_out_buf0_carry_i_6__1_n_0\,
      CO(3) => \pwm_out_buf0_carry_i_5__1_n_0\,
      CO(2) => \pwm_out_buf0_carry_i_5__1_n_1\,
      CO(1) => \pwm_out_buf0_carry_i_5__1_n_2\,
      CO(0) => \pwm_out_buf0_carry_i_5__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_0_in(9),
      O(3 downto 0) => pwm_out_buf1(12 downto 9),
      S(3 downto 1) => p_0_in(12 downto 10),
      S(0) => \half_duty_reg_n_0_[9]\
    );
\pwm_out_buf0_carry_i_6__1\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_out_buf0_carry_i_7_n_0,
      CO(3) => \pwm_out_buf0_carry_i_6__1_n_0\,
      CO(2) => \pwm_out_buf0_carry_i_6__1_n_1\,
      CO(1) => \pwm_out_buf0_carry_i_6__1_n_2\,
      CO(0) => \pwm_out_buf0_carry_i_6__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => p_0_in(6),
      DI(0) => '0',
      O(3 downto 0) => pwm_out_buf1(8 downto 5),
      S(3 downto 2) => p_0_in(8 downto 7),
      S(1) => \half_duty_reg_n_0_[6]\,
      S(0) => p_0_in(5)
    );
pwm_out_buf0_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_out_buf0_carry_i_7_n_0,
      CO(2) => pwm_out_buf0_carry_i_7_n_1,
      CO(1) => pwm_out_buf0_carry_i_7_n_2,
      CO(0) => pwm_out_buf0_carry_i_7_n_3,
      CYINIT => p_0_in(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pwm_out_buf1(4 downto 1),
      S(3 downto 0) => p_0_in(4 downto 1)
    );
pwm_out_buf0_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[9]\,
      O => p_0_in(9)
    );
pwm_out_buf0_carry_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_reg_n_0_[12]\,
      O => p_0_in(12)
    );
pwm_out_buf1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_out_buf1_carry_n_0,
      CO(2) => pwm_out_buf1_carry_n_1,
      CO(1) => pwm_out_buf1_carry_n_2,
      CO(0) => pwm_out_buf1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pwm_out_buf1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_out_buf1_carry_i_1_n_0,
      S(2) => pwm_out_buf1_carry_i_2_n_0,
      S(1) => pwm_out_buf1_carry_i_3_n_0,
      S(0) => pwm_out_buf1_carry_i_4_n_0
    );
\pwm_out_buf1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_out_buf1_carry_n_0,
      CO(3) => \NLW_pwm_out_buf1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => CO(0),
      CO(1) => \pwm_out_buf1_carry__0_n_2\,
      CO(0) => \pwm_out_buf1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_out_buf1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \pwm_out_buf1_carry__0_i_1_n_0\,
      S(1) => \pwm_out_buf1_carry__0_i_2_n_0\,
      S(0) => \pwm_out_buf1_carry__0_i_3_n_0\
    );
\pwm_out_buf1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \half_duty_reg_n_0_[18]\,
      I1 => \count_reg_n_0_[18]\,
      I2 => \count_reg_n_0_[19]\,
      O => \pwm_out_buf1_carry__0_i_1_n_0\
    );
\pwm_out_buf1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \half_duty_reg_n_0_[17]\,
      I1 => \count_reg_n_0_[17]\,
      I2 => \half_duty_reg_n_0_[16]\,
      I3 => \count_reg_n_0_[16]\,
      I4 => \count_reg_n_0_[15]\,
      I5 => \half_duty_reg_n_0_[15]\,
      O => \pwm_out_buf1_carry__0_i_2_n_0\
    );
\pwm_out_buf1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \half_duty_reg_n_0_[14]\,
      I1 => \count_reg_n_0_[14]\,
      I2 => \half_duty_reg_n_0_[13]\,
      I3 => \count_reg_n_0_[13]\,
      I4 => \count_reg_n_0_[12]\,
      I5 => \half_duty_reg_n_0_[12]\,
      O => \pwm_out_buf1_carry__0_i_3_n_0\
    );
pwm_out_buf1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \half_duty_reg_n_0_[11]\,
      I1 => \count_reg_n_0_[11]\,
      I2 => \half_duty_reg_n_0_[10]\,
      I3 => \count_reg_n_0_[10]\,
      I4 => \count_reg_n_0_[9]\,
      I5 => \half_duty_reg_n_0_[9]\,
      O => pwm_out_buf1_carry_i_1_n_0
    );
pwm_out_buf1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \half_duty_reg_n_0_[8]\,
      I1 => \count_reg_n_0_[8]\,
      I2 => \half_duty_reg_n_0_[7]\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[6]\,
      I5 => \half_duty_reg_n_0_[6]\,
      O => pwm_out_buf1_carry_i_2_n_0
    );
pwm_out_buf1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \half_duty_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[5]\,
      I2 => \half_duty_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[4]\,
      I4 => \count_reg_n_0_[3]\,
      I5 => \half_duty_reg_n_0_[3]\,
      O => pwm_out_buf1_carry_i_3_n_0
    );
pwm_out_buf1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008241000041"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \half_duty_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \half_duty_reg_n_0_[0]\,
      I5 => \half_duty_reg_n_0_[1]\,
      O => pwm_out_buf1_carry_i_4_n_0
    );
pwm_out_buf_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => pwm_out_buf_reg_1,
      Q => \^servo_pwm_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MotionController_0_0_PWM_Driver__parameterized1\ is
  port (
    motor_left_pwm_out : out STD_LOGIC;
    pwm_out_buf_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_out_buf_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_out_buf_reg_2 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \slv_reg0_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MotionController_0_0_PWM_Driver__parameterized1\ : entity is "PWM_Driver";
end \design_1_MotionController_0_0_PWM_Driver__parameterized1\;

architecture STRUCTURE of \design_1_MotionController_0_0_PWM_Driver__parameterized1\ is
  signal count : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count[5]_i_2_n_0\ : STD_LOGIC;
  signal \count[5]_i_3_n_0\ : STD_LOGIC;
  signal \count[6]_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_i_3_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal disabled : STD_LOGIC;
  signal disabled0 : STD_LOGIC;
  signal disabled02_out : STD_LOGIC;
  signal half_duty0 : STD_LOGIC;
  signal half_duty_new : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal half_duty_new10_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal half_duty_new4 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \half_duty_new4_carry__0_i_10__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_11__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_12__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_13__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_9__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_9__0_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_9__0_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_9__0_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_8__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_10__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_11__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_11__0_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_11__0_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_11__0_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_12__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_13__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_14__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_15__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_16__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_17__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_18__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_19__0_n_0\ : STD_LOGIC;
  signal half_duty_new4_carry_i_1_n_0 : STD_LOGIC;
  signal \half_duty_new4_carry_i_20__0_n_0\ : STD_LOGIC;
  signal half_duty_new4_carry_i_2_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_3_n_0 : STD_LOGIC;
  signal \half_duty_new4_carry_i_4__0_n_0\ : STD_LOGIC;
  signal half_duty_new4_carry_i_5_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_6_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_7_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_i_8_n_0 : STD_LOGIC;
  signal \half_duty_new4_carry_i_9__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_9__0_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_9__0_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_9__0_n_3\ : STD_LOGIC;
  signal half_duty_new4_carry_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_n_1 : STD_LOGIC;
  signal half_duty_new4_carry_n_2 : STD_LOGIC;
  signal half_duty_new4_carry_n_3 : STD_LOGIC;
  signal \half_duty_new50_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_n_1\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_n_2\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_n_1\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_n_2\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_n_3\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_n_1\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_n_2\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_n_3\ : STD_LOGIC;
  signal \half_duty_new50_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__5_n_1\ : STD_LOGIC;
  signal \half_duty_new50_carry__5_n_3\ : STD_LOGIC;
  signal half_duty_new50_carry_i_2_n_0 : STD_LOGIC;
  signal half_duty_new50_carry_i_3_n_0 : STD_LOGIC;
  signal half_duty_new50_carry_i_4_n_0 : STD_LOGIC;
  signal half_duty_new50_carry_n_0 : STD_LOGIC;
  signal half_duty_new50_carry_n_1 : STD_LOGIC;
  signal half_duty_new50_carry_n_2 : STD_LOGIC;
  signal half_duty_new50_carry_n_3 : STD_LOGIC;
  signal half_duty_new52 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \half_duty_new6__0\ : STD_LOGIC_VECTOR ( 26 downto 16 );
  signal half_duty_new6_n_100 : STD_LOGIC;
  signal half_duty_new6_n_101 : STD_LOGIC;
  signal half_duty_new6_n_102 : STD_LOGIC;
  signal half_duty_new6_n_103 : STD_LOGIC;
  signal half_duty_new6_n_104 : STD_LOGIC;
  signal half_duty_new6_n_105 : STD_LOGIC;
  signal half_duty_new6_n_79 : STD_LOGIC;
  signal half_duty_new6_n_80 : STD_LOGIC;
  signal half_duty_new6_n_81 : STD_LOGIC;
  signal half_duty_new6_n_82 : STD_LOGIC;
  signal half_duty_new6_n_83 : STD_LOGIC;
  signal half_duty_new6_n_84 : STD_LOGIC;
  signal half_duty_new6_n_85 : STD_LOGIC;
  signal half_duty_new6_n_86 : STD_LOGIC;
  signal half_duty_new6_n_87 : STD_LOGIC;
  signal half_duty_new6_n_88 : STD_LOGIC;
  signal half_duty_new6_n_89 : STD_LOGIC;
  signal half_duty_new6_n_90 : STD_LOGIC;
  signal half_duty_new6_n_91 : STD_LOGIC;
  signal half_duty_new6_n_92 : STD_LOGIC;
  signal half_duty_new6_n_93 : STD_LOGIC;
  signal half_duty_new6_n_94 : STD_LOGIC;
  signal half_duty_new6_n_95 : STD_LOGIC;
  signal half_duty_new6_n_96 : STD_LOGIC;
  signal half_duty_new6_n_97 : STD_LOGIC;
  signal half_duty_new6_n_98 : STD_LOGIC;
  signal half_duty_new6_n_99 : STD_LOGIC;
  signal half_duty_new7 : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_4__0_n_0\ : STD_LOGIC;
  signal half_duty_new7_carry_i_5_n_0 : STD_LOGIC;
  signal half_duty_new7_carry_i_6_n_0 : STD_LOGIC;
  signal half_duty_new7_carry_i_7_n_0 : STD_LOGIC;
  signal half_duty_new7_carry_i_8_n_0 : STD_LOGIC;
  signal half_duty_new7_carry_n_0 : STD_LOGIC;
  signal half_duty_new7_carry_n_1 : STD_LOGIC;
  signal half_duty_new7_carry_n_2 : STD_LOGIC;
  signal half_duty_new7_carry_n_3 : STD_LOGIC;
  signal \half_duty_new[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[2]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[2]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[4]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[5]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[5]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[5]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[5]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[6]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[6]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_6__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_7__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[6]_i_2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[0]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[1]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[2]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[3]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[4]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[5]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[6]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[7]\ : STD_LOGIC;
  signal \^motor_left_pwm_out\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_out0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \pwm_out_buf0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal pwm_out_buf0_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_out_buf0_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_out_buf0_carry_n_2 : STD_LOGIC;
  signal pwm_out_buf0_carry_n_3 : STD_LOGIC;
  signal \pwm_out_buf1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \pwm_out_buf1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \pwm_out_buf1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal pwm_out_buf1_carry_n_2 : STD_LOGIC;
  signal pwm_out_buf1_carry_n_3 : STD_LOGIC;
  signal NLW_half_duty_new4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new4_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new4_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_half_duty_new50_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new50_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new50_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new50_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_half_duty_new50_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new50_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_half_duty_new6_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_half_duty_new6_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_half_duty_new6_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_half_duty_new6_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 27 );
  signal NLW_half_duty_new6_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_half_duty_new7_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new7_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new7_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new7_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new7_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[6]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[6]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_pwm_out_buf0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwm_out_buf0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pwm_out_buf1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwm_out_buf1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[3]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[5]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[7]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[8]_i_2\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of disabled_reg : label is "LDC";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of half_duty_new6 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \half_duty_new[0]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \half_duty_new[2]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \half_duty_new[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \half_duty_new[7]_i_3\ : label is "soft_lutpair2";
begin
  motor_left_pwm_out <= \^motor_left_pwm_out\;
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => count(0)
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => count(1)
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFFFD000000"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count[8]_i_2_n_0\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[0]\,
      I5 => \count_reg_n_0_[2]\,
      O => count(2)
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      O => count(3)
    );
\count[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0B0A0B0AFB0A0B0"
    )
        port map (
      I0 => \count[5]_i_2_n_0\,
      I1 => \count_reg_n_0_[5]\,
      I2 => \count_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[2]\,
      I5 => \count[5]_i_3_n_0\,
      O => count(4)
    );
\count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFF30000000"
    )
        port map (
      I0 => \count[5]_i_2_n_0\,
      I1 => \count[5]_i_3_n_0\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[5]\,
      O => count(5)
    );
\count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0FF70FFF"
    )
        port map (
      I0 => \count_reg_n_0_[6]\,
      I1 => \count_reg_n_0_[7]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[8]\,
      I5 => \count[5]_i_3_n_0\,
      O => \count[5]_i_2_n_0\
    );
\count[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => \count[5]_i_3_n_0\
    );
\count[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FFF011F0"
    )
        port map (
      I0 => \count_reg_n_0_[7]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count[7]_i_2_n_0\,
      I3 => \count_reg_n_0_[6]\,
      I4 => \count[7]_i_3_n_0\,
      I5 => \count[6]_i_2_n_0\,
      O => count(6)
    );
\count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[4]\,
      I1 => \count_reg_n_0_[5]\,
      O => \count[6]_i_2_n_0\
    );
\count[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F858F0F0F0F0F0F0"
    )
        port map (
      I0 => \count_reg_n_0_[6]\,
      I1 => \count[7]_i_2_n_0\,
      I2 => \count_reg_n_0_[7]\,
      I3 => \count[7]_i_3_n_0\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => count(7)
    );
\count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[7]_i_2_n_0\
    );
\count[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77FFFF7F"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[8]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[2]\,
      O => \count[7]_i_3_n_0\
    );
\count[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count[8]_i_2_n_0\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[3]\,
      O => count(8)
    );
\count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[7]\,
      I3 => \count_reg_n_0_[6]\,
      O => \count[8]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(0),
      Q => \count_reg_n_0_[0]\
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(1),
      Q => \count_reg_n_0_[1]\
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(2),
      Q => \count_reg_n_0_[2]\
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(3),
      Q => \count_reg_n_0_[3]\
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(4),
      Q => \count_reg_n_0_[4]\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(5),
      Q => \count_reg_n_0_[5]\
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(6),
      Q => \count_reg_n_0_[6]\
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(7),
      Q => \count_reg_n_0_[7]\
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(8),
      Q => \count_reg_n_0_[8]\
    );
disabled_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => disabled0,
      D => disabled02_out,
      G => disabled02_out,
      GE => '1',
      Q => disabled
    );
\disabled_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \slv_reg0_reg[0]\(0),
      I1 => enable,
      I2 => \^motor_left_pwm_out\,
      O => disabled02_out
    );
\disabled_reg_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^motor_left_pwm_out\,
      I1 => disabled,
      I2 => \slv_reg0_reg[0]\(0),
      I3 => enable,
      O => disabled0
    );
\half_duty[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \count[5]_i_3_n_0\,
      I1 => \count_reg_n_0_[2]\,
      I2 => disabled,
      I3 => \count[8]_i_2_n_0\,
      I4 => \count_reg_n_0_[3]\,
      I5 => \count_reg_n_0_[8]\,
      O => half_duty0
    );
half_duty_new4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => half_duty_new4_carry_n_0,
      CO(2) => half_duty_new4_carry_n_1,
      CO(1) => half_duty_new4_carry_n_2,
      CO(0) => half_duty_new4_carry_n_3,
      CYINIT => '1',
      DI(3) => half_duty_new4_carry_i_1_n_0,
      DI(2) => half_duty_new4_carry_i_2_n_0,
      DI(1) => half_duty_new4_carry_i_3_n_0,
      DI(0) => \half_duty_new4_carry_i_4__0_n_0\,
      O(3 downto 0) => NLW_half_duty_new4_carry_O_UNCONNECTED(3 downto 0),
      S(3) => half_duty_new4_carry_i_5_n_0,
      S(2) => half_duty_new4_carry_i_6_n_0,
      S(1) => half_duty_new4_carry_i_7_n_0,
      S(0) => half_duty_new4_carry_i_8_n_0
    );
\half_duty_new4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new4_carry_n_0,
      CO(3) => \half_duty_new4_carry__0_n_0\,
      CO(2) => \half_duty_new4_carry__0_n_1\,
      CO(1) => \half_duty_new4_carry__0_n_2\,
      CO(0) => \half_duty_new4_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new4_carry__0_i_1_n_0\,
      DI(2) => \half_duty_new4_carry__0_i_2_n_0\,
      DI(1) => \half_duty_new4_carry__0_i_3_n_0\,
      DI(0) => \half_duty_new4_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new4_carry__0_i_5_n_0\,
      S(2) => \half_duty_new4_carry__0_i_6_n_0\,
      S(1) => \half_duty_new4_carry__0_i_7_n_0\,
      S(0) => \half_duty_new4_carry__0_i_8_n_0\
    );
\half_duty_new4_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF110F11"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new50_carry__5_n_1\,
      I2 => \half_duty_new_reg[6]_i_2_n_1\,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(14),
      O => \half_duty_new4_carry__0_i_1_n_0\
    );
\half_duty_new4_carry__0_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \half_duty_new50_carry__5_n_1\,
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new7,
      O => \half_duty_new4_carry__0_i_10__0_n_0\
    );
\half_duty_new4_carry__0_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \half_duty_new50_carry__5_n_1\,
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new7,
      O => \half_duty_new4_carry__0_i_11__0_n_0\
    );
\half_duty_new4_carry__0_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \half_duty_new6__0\(26),
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new7,
      O => \half_duty_new4_carry__0_i_12__0_n_0\
    );
\half_duty_new4_carry__0_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_80,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(25),
      O => \half_duty_new4_carry__0_i_13__0_n_0\
    );
\half_duty_new4_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CDCDCD01"
    )
        port map (
      I0 => half_duty_new7,
      I1 => half_duty_new6_n_79,
      I2 => \half_duty_new50_carry__5_n_1\,
      I3 => half_duty_new4(12),
      I4 => half_duty_new4(13),
      O => \half_duty_new4_carry__0_i_2_n_0\
    );
\half_duty_new4_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC00FCAAFC00FCFF"
    )
        port map (
      I0 => \half_duty_new6__0\(26),
      I1 => half_duty_new4(10),
      I2 => half_duty_new4(11),
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new7,
      I5 => \half_duty_new50_carry__5_n_1\,
      O => \half_duty_new4_carry__0_i_3_n_0\
    );
\half_duty_new4_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFCFCFAFAFFF0"
    )
        port map (
      I0 => half_duty_new6_n_80,
      I1 => half_duty_new4(9),
      I2 => \half_duty_new[7]_i_5__0_n_0\,
      I3 => \half_duty_new6__0\(25),
      I4 => half_duty_new7,
      I5 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__0_i_4_n_0\
    );
\half_duty_new4_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22FF22F0"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2_n_1\,
      I1 => half_duty_new4(14),
      I2 => \half_duty_new50_carry__5_n_1\,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new7,
      O => \half_duty_new4_carry__0_i_5_n_0\
    );
\half_duty_new4_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11FF11F0"
    )
        port map (
      I0 => half_duty_new4(13),
      I1 => half_duty_new4(12),
      I2 => \half_duty_new50_carry__5_n_1\,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new7,
      O => \half_duty_new4_carry__0_i_6_n_0\
    );
\half_duty_new4_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0CFC0E0E0EFE"
    )
        port map (
      I0 => \half_duty_new50_carry__5_n_1\,
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_79,
      I3 => half_duty_new4(11),
      I4 => half_duty_new4(10),
      I5 => \half_duty_new6__0\(26),
      O => \half_duty_new4_carry__0_i_7_n_0\
    );
\half_duty_new4_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001D00FF001D"
    )
        port map (
      I0 => \half_duty_new6__0\(25),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_80,
      I3 => \half_duty_new[7]_i_5__0_n_0\,
      I4 => half_duty_new6_n_79,
      I5 => half_duty_new4(9),
      O => \half_duty_new4_carry__0_i_8_n_0\
    );
\half_duty_new4_carry__0_i_9__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry_i_9__0_n_0\,
      CO(3) => \half_duty_new4_carry__0_i_9__0_n_0\,
      CO(2) => \half_duty_new4_carry__0_i_9__0_n_1\,
      CO(1) => \half_duty_new4_carry__0_i_9__0_n_2\,
      CO(0) => \half_duty_new4_carry__0_i_9__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new4(12 downto 9),
      S(3) => \half_duty_new4_carry__0_i_10__0_n_0\,
      S(2) => \half_duty_new4_carry__0_i_11__0_n_0\,
      S(1) => \half_duty_new4_carry__0_i_12__0_n_0\,
      S(0) => \half_duty_new4_carry__0_i_13__0_n_0\
    );
\half_duty_new4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry__0_n_0\,
      CO(3) => \half_duty_new4_carry__1_n_0\,
      CO(2) => \half_duty_new4_carry__1_n_1\,
      CO(1) => \half_duty_new4_carry__1_n_2\,
      CO(0) => \half_duty_new4_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new4_carry__1_i_1__0_n_0\,
      DI(2) => \half_duty_new4_carry__1_i_2_n_0\,
      DI(1) => \half_duty_new4_carry__1_i_3__0_n_0\,
      DI(0) => \half_duty_new4_carry__1_i_4__0_n_0\,
      O(3 downto 0) => \NLW_half_duty_new4_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new4_carry__1_i_5_n_0\,
      S(2) => \half_duty_new4_carry__1_i_6_n_0\,
      S(1) => \half_duty_new4_carry__1_i_7__0_n_0\,
      S(0) => \half_duty_new4_carry__1_i_8__0_n_0\
    );
\half_duty_new4_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2_n_1\,
      O => \half_duty_new4_carry__1_i_1__0_n_0\
    );
\half_duty_new4_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2_n_1\,
      O => \half_duty_new4_carry__1_i_2_n_0\
    );
\half_duty_new4_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2_n_1\,
      O => \half_duty_new4_carry__1_i_3__0_n_0\
    );
\half_duty_new4_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2_n_1\,
      O => \half_duty_new4_carry__1_i_4__0_n_0\
    );
\half_duty_new4_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__1_i_5_n_0\
    );
\half_duty_new4_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__1_i_6_n_0\
    );
\half_duty_new4_carry__1_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__1_i_7__0_n_0\
    );
\half_duty_new4_carry__1_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__1_i_8__0_n_0\
    );
\half_duty_new4_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry__1_n_0\,
      CO(3) => \half_duty_new4_carry__2_n_0\,
      CO(2) => \half_duty_new4_carry__2_n_1\,
      CO(1) => \half_duty_new4_carry__2_n_2\,
      CO(0) => \half_duty_new4_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \half_duty_new4_carry__2_i_1__0_n_0\,
      DI(1) => \half_duty_new4_carry__2_i_2__0_n_0\,
      DI(0) => \half_duty_new4_carry__2_i_3__0_n_0\,
      O(3 downto 0) => \NLW_half_duty_new4_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new4_carry__2_i_4__0_n_0\,
      S(2) => \half_duty_new4_carry__2_i_5_n_0\,
      S(1) => \half_duty_new4_carry__2_i_6_n_0\,
      S(0) => \half_duty_new4_carry__2_i_7_n_0\
    );
\half_duty_new4_carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2_n_1\,
      O => \half_duty_new4_carry__2_i_1__0_n_0\
    );
\half_duty_new4_carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2_n_1\,
      O => \half_duty_new4_carry__2_i_2__0_n_0\
    );
\half_duty_new4_carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2_n_1\,
      O => \half_duty_new4_carry__2_i_3__0_n_0\
    );
\half_duty_new4_carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__2_i_4__0_n_0\
    );
\half_duty_new4_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__2_i_5_n_0\
    );
\half_duty_new4_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__2_i_6_n_0\
    );
\half_duty_new4_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__2_i_7_n_0\
    );
half_duty_new4_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => \half_duty_new[5]_i_3_n_0\,
      I1 => \half_duty_new6__0\(23),
      I2 => half_duty_new7,
      I3 => half_duty_new6_n_82,
      I4 => half_duty_new6_n_79,
      I5 => half_duty_new4(7),
      O => half_duty_new4_carry_i_1_n_0
    );
\half_duty_new4_carry_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(20),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_85,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(4),
      O => \half_duty_new4_carry_i_10__0_n_0\
    );
\half_duty_new4_carry_i_11__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new4_carry_i_11__0_n_0\,
      CO(2) => \half_duty_new4_carry_i_11__0_n_1\,
      CO(1) => \half_duty_new4_carry_i_11__0_n_2\,
      CO(0) => \half_duty_new4_carry_i_11__0_n_3\,
      CYINIT => \half_duty_new4_carry_i_16__0_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new4(4 downto 1),
      S(3) => \half_duty_new4_carry_i_17__0_n_0\,
      S(2) => \half_duty_new4_carry_i_18__0_n_0\,
      S(1) => \half_duty_new4_carry_i_19__0_n_0\,
      S(0) => \half_duty_new4_carry_i_20__0_n_0\
    );
\half_duty_new4_carry_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_81,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(24),
      O => \half_duty_new4_carry_i_12__0_n_0\
    );
\half_duty_new4_carry_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_82,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(23),
      O => \half_duty_new4_carry_i_13__0_n_0\
    );
\half_duty_new4_carry_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_83,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(22),
      O => \half_duty_new4_carry_i_14__0_n_0\
    );
\half_duty_new4_carry_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_84,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(21),
      O => \half_duty_new4_carry_i_15__0_n_0\
    );
\half_duty_new4_carry_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new6__0\(16),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_89,
      O => \half_duty_new4_carry_i_16__0_n_0\
    );
\half_duty_new4_carry_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_85,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(20),
      O => \half_duty_new4_carry_i_17__0_n_0\
    );
\half_duty_new4_carry_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_86,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(19),
      O => \half_duty_new4_carry_i_18__0_n_0\
    );
\half_duty_new4_carry_i_19__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_87,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(18),
      O => \half_duty_new4_carry_i_19__0_n_0\
    );
half_duty_new4_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => \half_duty_new4_carry_i_10__0_n_0\,
      I1 => \half_duty_new6__0\(21),
      I2 => half_duty_new7,
      I3 => half_duty_new6_n_84,
      I4 => half_duty_new6_n_79,
      I5 => half_duty_new4(5),
      O => half_duty_new4_carry_i_2_n_0
    );
\half_duty_new4_carry_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_88,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(17),
      O => \half_duty_new4_carry_i_20__0_n_0\
    );
half_duty_new4_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => \half_duty_new[2]_i_3_n_0\,
      I1 => \half_duty_new6__0\(19),
      I2 => half_duty_new7,
      I3 => half_duty_new6_n_86,
      I4 => half_duty_new6_n_79,
      I5 => half_duty_new4(3),
      O => half_duty_new4_carry_i_3_n_0
    );
\half_duty_new4_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB8BBB888"
    )
        port map (
      I0 => half_duty_new4(1),
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new6_n_88,
      I3 => half_duty_new7,
      I4 => \half_duty_new6__0\(17),
      I5 => p_1_out0(0),
      O => \half_duty_new4_carry_i_4__0_n_0\
    );
half_duty_new4_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047444777"
    )
        port map (
      I0 => half_duty_new4(7),
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new6_n_82,
      I3 => half_duty_new7,
      I4 => \half_duty_new6__0\(23),
      I5 => \half_duty_new[5]_i_3_n_0\,
      O => half_duty_new4_carry_i_5_n_0
    );
half_duty_new4_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047444777"
    )
        port map (
      I0 => half_duty_new4(5),
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new6_n_84,
      I3 => half_duty_new7,
      I4 => \half_duty_new6__0\(21),
      I5 => \half_duty_new4_carry_i_10__0_n_0\,
      O => half_duty_new4_carry_i_6_n_0
    );
half_duty_new4_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047444777"
    )
        port map (
      I0 => half_duty_new4(3),
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new6_n_86,
      I3 => half_duty_new7,
      I4 => \half_duty_new6__0\(19),
      I5 => \half_duty_new[2]_i_3_n_0\,
      O => half_duty_new4_carry_i_7_n_0
    );
half_duty_new4_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015155550151"
    )
        port map (
      I0 => p_1_out0(0),
      I1 => \half_duty_new6__0\(17),
      I2 => half_duty_new7,
      I3 => half_duty_new6_n_88,
      I4 => half_duty_new6_n_79,
      I5 => half_duty_new4(1),
      O => half_duty_new4_carry_i_8_n_0
    );
\half_duty_new4_carry_i_9__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry_i_11__0_n_0\,
      CO(3) => \half_duty_new4_carry_i_9__0_n_0\,
      CO(2) => \half_duty_new4_carry_i_9__0_n_1\,
      CO(1) => \half_duty_new4_carry_i_9__0_n_2\,
      CO(0) => \half_duty_new4_carry_i_9__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new4(8 downto 5),
      S(3) => \half_duty_new4_carry_i_12__0_n_0\,
      S(2) => \half_duty_new4_carry_i_13__0_n_0\,
      S(1) => \half_duty_new4_carry_i_14__0_n_0\,
      S(0) => \half_duty_new4_carry_i_15__0_n_0\
    );
half_duty_new50_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => half_duty_new50_carry_n_0,
      CO(2) => half_duty_new50_carry_n_1,
      CO(1) => half_duty_new50_carry_n_2,
      CO(0) => half_duty_new50_carry_n_3,
      CYINIT => half_duty_new52(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_half_duty_new50_carry_O_UNCONNECTED(3 downto 0),
      S(3) => half_duty_new50_carry_i_2_n_0,
      S(2) => half_duty_new50_carry_i_3_n_0,
      S(1) => half_duty_new50_carry_i_4_n_0,
      S(0) => half_duty_new52(1)
    );
\half_duty_new50_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new50_carry_n_0,
      CO(3) => \half_duty_new50_carry__0_n_0\,
      CO(2) => \half_duty_new50_carry__0_n_1\,
      CO(1) => \half_duty_new50_carry__0_n_2\,
      CO(0) => \half_duty_new50_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_half_duty_new50_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new50_carry__0_i_1_n_0\,
      S(2) => \half_duty_new50_carry__0_i_2_n_0\,
      S(1) => \half_duty_new50_carry__0_i_3_n_0\,
      S(0) => \half_duty_new50_carry__0_i_4_n_0\
    );
\half_duty_new50_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_97,
      O => \half_duty_new50_carry__0_i_1_n_0\
    );
\half_duty_new50_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_98,
      O => \half_duty_new50_carry__0_i_2_n_0\
    );
\half_duty_new50_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_99,
      O => \half_duty_new50_carry__0_i_3_n_0\
    );
\half_duty_new50_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_100,
      O => \half_duty_new50_carry__0_i_4_n_0\
    );
\half_duty_new50_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new50_carry__0_n_0\,
      CO(3) => \half_duty_new50_carry__1_n_0\,
      CO(2) => \half_duty_new50_carry__1_n_1\,
      CO(1) => \half_duty_new50_carry__1_n_2\,
      CO(0) => \half_duty_new50_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_half_duty_new50_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new50_carry__1_i_1_n_0\,
      S(2) => \half_duty_new50_carry__1_i_2_n_0\,
      S(1) => \half_duty_new50_carry__1_i_3_n_0\,
      S(0) => \half_duty_new50_carry__1_i_4_n_0\
    );
\half_duty_new50_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_93,
      O => \half_duty_new50_carry__1_i_1_n_0\
    );
\half_duty_new50_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_94,
      O => \half_duty_new50_carry__1_i_2_n_0\
    );
\half_duty_new50_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_95,
      O => \half_duty_new50_carry__1_i_3_n_0\
    );
\half_duty_new50_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_96,
      O => \half_duty_new50_carry__1_i_4_n_0\
    );
\half_duty_new50_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new50_carry__1_n_0\,
      CO(3) => \half_duty_new50_carry__2_n_0\,
      CO(2) => \half_duty_new50_carry__2_n_1\,
      CO(1) => \half_duty_new50_carry__2_n_2\,
      CO(0) => \half_duty_new50_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \half_duty_new6__0\(16),
      O(2 downto 0) => \NLW_half_duty_new50_carry__2_O_UNCONNECTED\(2 downto 0),
      S(3) => \half_duty_new50_carry__2_i_1_n_0\,
      S(2) => \half_duty_new50_carry__2_i_2_n_0\,
      S(1) => \half_duty_new50_carry__2_i_3_n_0\,
      S(0) => \half_duty_new50_carry__2_i_4_n_0\
    );
\half_duty_new50_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_89,
      O => \half_duty_new50_carry__2_i_1_n_0\
    );
\half_duty_new50_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_90,
      O => \half_duty_new50_carry__2_i_2_n_0\
    );
\half_duty_new50_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_91,
      O => \half_duty_new50_carry__2_i_3_n_0\
    );
\half_duty_new50_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_92,
      O => \half_duty_new50_carry__2_i_4_n_0\
    );
\half_duty_new50_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new50_carry__2_n_0\,
      CO(3) => \half_duty_new50_carry__3_n_0\,
      CO(2) => \half_duty_new50_carry__3_n_1\,
      CO(1) => \half_duty_new50_carry__3_n_2\,
      CO(0) => \half_duty_new50_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new6__0\(20 downto 17),
      S(3) => \half_duty_new50_carry__3_i_1_n_0\,
      S(2) => \half_duty_new50_carry__3_i_2_n_0\,
      S(1) => \half_duty_new50_carry__3_i_3_n_0\,
      S(0) => \half_duty_new50_carry__3_i_4_n_0\
    );
\half_duty_new50_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_85,
      O => \half_duty_new50_carry__3_i_1_n_0\
    );
\half_duty_new50_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_86,
      O => \half_duty_new50_carry__3_i_2_n_0\
    );
\half_duty_new50_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_87,
      O => \half_duty_new50_carry__3_i_3_n_0\
    );
\half_duty_new50_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_88,
      O => \half_duty_new50_carry__3_i_4_n_0\
    );
\half_duty_new50_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new50_carry__3_n_0\,
      CO(3) => \half_duty_new50_carry__4_n_0\,
      CO(2) => \half_duty_new50_carry__4_n_1\,
      CO(1) => \half_duty_new50_carry__4_n_2\,
      CO(0) => \half_duty_new50_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new6__0\(24 downto 21),
      S(3) => \half_duty_new50_carry__4_i_1_n_0\,
      S(2) => \half_duty_new50_carry__4_i_2_n_0\,
      S(1) => \half_duty_new50_carry__4_i_3_n_0\,
      S(0) => \half_duty_new50_carry__4_i_4_n_0\
    );
\half_duty_new50_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_81,
      O => \half_duty_new50_carry__4_i_1_n_0\
    );
\half_duty_new50_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_82,
      O => \half_duty_new50_carry__4_i_2_n_0\
    );
\half_duty_new50_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_83,
      O => \half_duty_new50_carry__4_i_3_n_0\
    );
\half_duty_new50_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_84,
      O => \half_duty_new50_carry__4_i_4_n_0\
    );
\half_duty_new50_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new50_carry__4_n_0\,
      CO(3) => \NLW_half_duty_new50_carry__5_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new50_carry__5_n_1\,
      CO(1) => \NLW_half_duty_new50_carry__5_CO_UNCONNECTED\(1),
      CO(0) => \half_duty_new50_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0010",
      O(3 downto 2) => \NLW_half_duty_new50_carry__5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \half_duty_new6__0\(26 downto 25),
      S(3 downto 2) => B"01",
      S(1) => \half_duty_new50_carry__5_i_1_n_0\,
      S(0) => \half_duty_new50_carry__5_i_2_n_0\
    );
\half_duty_new50_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_79,
      O => \half_duty_new50_carry__5_i_1_n_0\
    );
\half_duty_new50_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_80,
      O => \half_duty_new50_carry__5_i_2_n_0\
    );
half_duty_new50_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_105,
      O => half_duty_new52(0)
    );
half_duty_new50_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_101,
      O => half_duty_new50_carry_i_2_n_0
    );
half_duty_new50_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_102,
      O => half_duty_new50_carry_i_3_n_0
    );
half_duty_new50_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_103,
      O => half_duty_new50_carry_i_4_n_0
    );
half_duty_new50_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_104,
      O => half_duty_new52(1)
    );
half_duty_new6: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => Q(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_half_duty_new6_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000111110100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_half_duty_new6_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_half_duty_new6_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_half_duty_new6_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_half_duty_new6_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_half_duty_new6_OVERFLOW_UNCONNECTED,
      P(47 downto 27) => NLW_half_duty_new6_P_UNCONNECTED(47 downto 27),
      P(26) => half_duty_new6_n_79,
      P(25) => half_duty_new6_n_80,
      P(24) => half_duty_new6_n_81,
      P(23) => half_duty_new6_n_82,
      P(22) => half_duty_new6_n_83,
      P(21) => half_duty_new6_n_84,
      P(20) => half_duty_new6_n_85,
      P(19) => half_duty_new6_n_86,
      P(18) => half_duty_new6_n_87,
      P(17) => half_duty_new6_n_88,
      P(16) => half_duty_new6_n_89,
      P(15) => half_duty_new6_n_90,
      P(14) => half_duty_new6_n_91,
      P(13) => half_duty_new6_n_92,
      P(12) => half_duty_new6_n_93,
      P(11) => half_duty_new6_n_94,
      P(10) => half_duty_new6_n_95,
      P(9) => half_duty_new6_n_96,
      P(8) => half_duty_new6_n_97,
      P(7) => half_duty_new6_n_98,
      P(6) => half_duty_new6_n_99,
      P(5) => half_duty_new6_n_100,
      P(4) => half_duty_new6_n_101,
      P(3) => half_duty_new6_n_102,
      P(2) => half_duty_new6_n_103,
      P(1) => half_duty_new6_n_104,
      P(0) => half_duty_new6_n_105,
      PATTERNBDETECT => NLW_half_duty_new6_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_half_duty_new6_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_half_duty_new6_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_half_duty_new6_UNDERFLOW_UNCONNECTED
    );
half_duty_new7_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => half_duty_new7_carry_n_0,
      CO(2) => half_duty_new7_carry_n_1,
      CO(1) => half_duty_new7_carry_n_2,
      CO(0) => half_duty_new7_carry_n_3,
      CYINIT => '1',
      DI(3) => \half_duty_new7_carry_i_1__0_n_0\,
      DI(2) => \half_duty_new7_carry_i_2__0_n_0\,
      DI(1) => \half_duty_new7_carry_i_3__0_n_0\,
      DI(0) => \half_duty_new7_carry_i_4__0_n_0\,
      O(3 downto 0) => NLW_half_duty_new7_carry_O_UNCONNECTED(3 downto 0),
      S(3) => half_duty_new7_carry_i_5_n_0,
      S(2) => half_duty_new7_carry_i_6_n_0,
      S(1) => half_duty_new7_carry_i_7_n_0,
      S(0) => half_duty_new7_carry_i_8_n_0
    );
\half_duty_new7_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new7_carry_n_0,
      CO(3) => \half_duty_new7_carry__0_n_0\,
      CO(2) => \half_duty_new7_carry__0_n_1\,
      CO(1) => \half_duty_new7_carry__0_n_2\,
      CO(0) => \half_duty_new7_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new7_carry__0_i_1__0_n_0\,
      DI(2) => \half_duty_new7_carry__0_i_2__0_n_0\,
      DI(1) => \half_duty_new7_carry__0_i_3__0_n_0\,
      DI(0) => \half_duty_new7_carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_half_duty_new7_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new7_carry__0_i_5_n_0\,
      S(2) => \half_duty_new7_carry__0_i_6_n_0\,
      S(1) => \half_duty_new7_carry__0_i_7_n_0\,
      S(0) => \half_duty_new7_carry__0_i_8_n_0\
    );
\half_duty_new7_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_91,
      I1 => half_duty_new6_n_90,
      O => \half_duty_new7_carry__0_i_1__0_n_0\
    );
\half_duty_new7_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_93,
      I1 => half_duty_new6_n_92,
      O => \half_duty_new7_carry__0_i_2__0_n_0\
    );
\half_duty_new7_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_95,
      I1 => half_duty_new6_n_94,
      O => \half_duty_new7_carry__0_i_3__0_n_0\
    );
\half_duty_new7_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_97,
      I1 => half_duty_new6_n_96,
      O => \half_duty_new7_carry__0_i_4__0_n_0\
    );
\half_duty_new7_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_90,
      I1 => half_duty_new6_n_91,
      O => \half_duty_new7_carry__0_i_5_n_0\
    );
\half_duty_new7_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_92,
      I1 => half_duty_new6_n_93,
      O => \half_duty_new7_carry__0_i_6_n_0\
    );
\half_duty_new7_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_94,
      I1 => half_duty_new6_n_95,
      O => \half_duty_new7_carry__0_i_7_n_0\
    );
\half_duty_new7_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_96,
      I1 => half_duty_new6_n_97,
      O => \half_duty_new7_carry__0_i_8_n_0\
    );
\half_duty_new7_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new7_carry__0_n_0\,
      CO(3) => \half_duty_new7_carry__1_n_0\,
      CO(2) => \half_duty_new7_carry__1_n_1\,
      CO(1) => \half_duty_new7_carry__1_n_2\,
      CO(0) => \half_duty_new7_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new7_carry__1_i_1__0_n_0\,
      DI(2) => \half_duty_new7_carry__1_i_2__0_n_0\,
      DI(1) => \half_duty_new7_carry__1_i_3__0_n_0\,
      DI(0) => \half_duty_new7_carry__1_i_4__0_n_0\,
      O(3 downto 0) => \NLW_half_duty_new7_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new7_carry__1_i_5_n_0\,
      S(2) => \half_duty_new7_carry__1_i_6_n_0\,
      S(1) => \half_duty_new7_carry__1_i_7_n_0\,
      S(0) => \half_duty_new7_carry__1_i_8_n_0\
    );
\half_duty_new7_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_83,
      I1 => half_duty_new6_n_82,
      O => \half_duty_new7_carry__1_i_1__0_n_0\
    );
\half_duty_new7_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_85,
      I1 => half_duty_new6_n_84,
      O => \half_duty_new7_carry__1_i_2__0_n_0\
    );
\half_duty_new7_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_87,
      I1 => half_duty_new6_n_86,
      O => \half_duty_new7_carry__1_i_3__0_n_0\
    );
\half_duty_new7_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_89,
      I1 => half_duty_new6_n_88,
      O => \half_duty_new7_carry__1_i_4__0_n_0\
    );
\half_duty_new7_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_82,
      I1 => half_duty_new6_n_83,
      O => \half_duty_new7_carry__1_i_5_n_0\
    );
\half_duty_new7_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_84,
      I1 => half_duty_new6_n_85,
      O => \half_duty_new7_carry__1_i_6_n_0\
    );
\half_duty_new7_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_86,
      I1 => half_duty_new6_n_87,
      O => \half_duty_new7_carry__1_i_7_n_0\
    );
\half_duty_new7_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_88,
      I1 => half_duty_new6_n_89,
      O => \half_duty_new7_carry__1_i_8_n_0\
    );
\half_duty_new7_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new7_carry__1_n_0\,
      CO(3 downto 2) => \NLW_half_duty_new7_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => half_duty_new7,
      CO(0) => \half_duty_new7_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \half_duty_new7_carry__2_i_1_n_0\,
      O(3 downto 0) => \NLW_half_duty_new7_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \half_duty_new7_carry__2_i_2__0_n_0\,
      S(0) => \half_duty_new7_carry__2_i_3__0_n_0\
    );
\half_duty_new7_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_81,
      I1 => half_duty_new6_n_80,
      O => \half_duty_new7_carry__2_i_1_n_0\
    );
\half_duty_new7_carry__2_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_79,
      O => \half_duty_new7_carry__2_i_2__0_n_0\
    );
\half_duty_new7_carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_80,
      I1 => half_duty_new6_n_81,
      O => \half_duty_new7_carry__2_i_3__0_n_0\
    );
\half_duty_new7_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_99,
      I1 => half_duty_new6_n_98,
      O => \half_duty_new7_carry_i_1__0_n_0\
    );
\half_duty_new7_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_101,
      I1 => half_duty_new6_n_100,
      O => \half_duty_new7_carry_i_2__0_n_0\
    );
\half_duty_new7_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_103,
      I1 => half_duty_new6_n_102,
      O => \half_duty_new7_carry_i_3__0_n_0\
    );
\half_duty_new7_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_105,
      I1 => half_duty_new6_n_104,
      O => \half_duty_new7_carry_i_4__0_n_0\
    );
half_duty_new7_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_98,
      I1 => half_duty_new6_n_99,
      O => half_duty_new7_carry_i_5_n_0
    );
half_duty_new7_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_100,
      I1 => half_duty_new6_n_101,
      O => half_duty_new7_carry_i_6_n_0
    );
half_duty_new7_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_102,
      I1 => half_duty_new6_n_103,
      O => half_duty_new7_carry_i_7_n_0
    );
half_duty_new7_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_104,
      I1 => half_duty_new6_n_105,
      O => half_duty_new7_carry_i_8_n_0
    );
\half_duty_new[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4700B8"
    )
        port map (
      I0 => half_duty_new6_n_89,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(16),
      I3 => \half_duty_new4_carry__2_n_0\,
      I4 => \half_duty_new[2]_i_4_n_0\,
      O => half_duty_new10_in(0)
    );
\half_duty_new[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D20FD22DF02DF0F0"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2_n_1\,
      I2 => \half_duty_new[2]_i_3_n_0\,
      I3 => \half_duty_new4_carry__2_n_0\,
      I4 => p_1_out0(0),
      I5 => \half_duty_new[2]_i_4_n_0\,
      O => p_1_in(1)
    );
\half_duty_new[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"636969C9696969CC"
    )
        port map (
      I0 => \half_duty_new[7]_i_3_n_0\,
      I1 => \half_duty_new[2]_i_2__0_n_0\,
      I2 => \half_duty_new4_carry__2_n_0\,
      I3 => \half_duty_new[2]_i_3_n_0\,
      I4 => \half_duty_new[2]_i_4_n_0\,
      I5 => p_1_out0(0),
      O => p_1_in(2)
    );
\half_duty_new[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(19),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_86,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(3),
      O => \half_duty_new[2]_i_2__0_n_0\
    );
\half_duty_new[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(18),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_87,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(2),
      O => \half_duty_new[2]_i_3_n_0\
    );
\half_duty_new[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(17),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_88,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(1),
      O => \half_duty_new[2]_i_4_n_0\
    );
\half_duty_new[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => half_duty_new6_n_89,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(16),
      O => p_1_out0(0)
    );
\half_duty_new[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2_n_1\,
      I2 => \half_duty_new[3]_i_2__0_n_0\,
      I3 => half_duty_new10_in(3),
      O => p_1_in(3)
    );
\half_duty_new[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20040005"
    )
        port map (
      I0 => \half_duty_new[2]_i_2__0_n_0\,
      I1 => \half_duty_new4_carry__2_n_0\,
      I2 => \half_duty_new[2]_i_3_n_0\,
      I3 => \half_duty_new[2]_i_4_n_0\,
      I4 => p_1_out0(0),
      O => \half_duty_new[3]_i_2__0_n_0\
    );
\half_duty_new[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0100FE"
    )
        port map (
      I0 => \half_duty_new[2]_i_2__0_n_0\,
      I1 => \half_duty_new[2]_i_3_n_0\,
      I2 => \half_duty_new4_carry_i_4__0_n_0\,
      I3 => \half_duty_new4_carry__2_n_0\,
      I4 => \half_duty_new4_carry_i_10__0_n_0\,
      O => half_duty_new10_in(3)
    );
\half_duty_new[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2_n_1\,
      I2 => \half_duty_new[4]_i_2_n_0\,
      I3 => half_duty_new10_in(4),
      O => p_1_in(4)
    );
\half_duty_new[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFAFFFE"
    )
        port map (
      I0 => \half_duty_new4_carry_i_10__0_n_0\,
      I1 => p_1_out0(0),
      I2 => \half_duty_new[2]_i_4_n_0\,
      I3 => \half_duty_new[2]_i_3_n_0\,
      I4 => \half_duty_new4_carry__2_n_0\,
      I5 => \half_duty_new[2]_i_2__0_n_0\,
      O => \half_duty_new[4]_i_2_n_0\
    );
\half_duty_new[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00010000FFFE"
    )
        port map (
      I0 => \half_duty_new4_carry_i_4__0_n_0\,
      I1 => \half_duty_new[2]_i_3_n_0\,
      I2 => \half_duty_new[2]_i_2__0_n_0\,
      I3 => \half_duty_new4_carry_i_10__0_n_0\,
      I4 => \half_duty_new4_carry__2_n_0\,
      I5 => \half_duty_new[7]_i_9_n_0\,
      O => half_duty_new10_in(4)
    );
\half_duty_new[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D2D2D2D2D22DD2"
    )
        port map (
      I0 => \half_duty_new[5]_i_2__0_n_0\,
      I1 => \half_duty_new4_carry__2_n_0\,
      I2 => \half_duty_new[5]_i_3_n_0\,
      I3 => half_duty_new6_n_79,
      I4 => \half_duty_new_reg[6]_i_2_n_1\,
      I5 => \half_duty_new[5]_i_4_n_0\,
      O => p_1_in(5)
    );
\half_duty_new[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \half_duty_new[7]_i_9_n_0\,
      I1 => \half_duty_new4_carry_i_10__0_n_0\,
      I2 => \half_duty_new[2]_i_2__0_n_0\,
      I3 => \half_duty_new[2]_i_3_n_0\,
      I4 => \half_duty_new[2]_i_4_n_0\,
      I5 => p_1_out0(0),
      O => \half_duty_new[5]_i_2__0_n_0\
    );
\half_duty_new[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(22),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_83,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(6),
      O => \half_duty_new[5]_i_3_n_0\
    );
\half_duty_new[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001104000010"
    )
        port map (
      I0 => \half_duty_new[5]_i_5_n_0\,
      I1 => \half_duty_new[7]_i_9_n_0\,
      I2 => \half_duty_new4_carry__2_n_0\,
      I3 => \half_duty_new4_carry_i_10__0_n_0\,
      I4 => \half_duty_new[2]_i_2__0_n_0\,
      I5 => \half_duty_new[5]_i_6_n_0\,
      O => \half_duty_new[5]_i_4_n_0\
    );
\half_duty_new[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDDDFFFBABBBAAA"
    )
        port map (
      I0 => \half_duty_new[2]_i_3_n_0\,
      I1 => \half_duty_new4_carry__2_n_0\,
      I2 => half_duty_new6_n_89,
      I3 => half_duty_new7,
      I4 => \half_duty_new6__0\(16),
      I5 => \half_duty_new[2]_i_4_n_0\,
      O => \half_duty_new[5]_i_5_n_0\
    );
\half_duty_new[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000047"
    )
        port map (
      I0 => half_duty_new6_n_89,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(16),
      I3 => \half_duty_new[2]_i_4_n_0\,
      I4 => \half_duty_new[2]_i_3_n_0\,
      O => \half_duty_new[5]_i_6_n_0\
    );
\half_duty_new[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2_n_1\,
      I2 => \half_duty_new[7]_i_4__0_n_0\,
      I3 => half_duty_new10_in(6),
      O => p_1_in(6)
    );
\half_duty_new[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB54"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => \half_duty_new[5]_i_2__0_n_0\,
      I2 => \half_duty_new[5]_i_3_n_0\,
      I3 => \half_duty_new[7]_i_7__0_n_0\,
      O => half_duty_new10_in(6)
    );
\half_duty_new[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \half_duty_new50_carry__5_n_1\,
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new7,
      O => \half_duty_new[6]_i_4_n_0\
    );
\half_duty_new[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \half_duty_new50_carry__5_n_1\,
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new7,
      O => \half_duty_new[6]_i_5_n_0\
    );
\half_duty_new[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disabled,
      O => \half_duty_new[7]_i_1_n_0\
    );
\half_duty_new[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA55A87787878A5"
    )
        port map (
      I0 => \half_duty_new[7]_i_3_n_0\,
      I1 => \half_duty_new[7]_i_4__0_n_0\,
      I2 => \half_duty_new[7]_i_5__0_n_0\,
      I3 => \half_duty_new4_carry__2_n_0\,
      I4 => \half_duty_new[7]_i_6__0_n_0\,
      I5 => \half_duty_new[7]_i_7__0_n_0\,
      O => p_1_in(7)
    );
\half_duty_new[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2_n_1\,
      O => \half_duty_new[7]_i_3_n_0\
    );
\half_duty_new[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFAFEFFFFFFFF"
    )
        port map (
      I0 => \half_duty_new[5]_i_3_n_0\,
      I1 => \half_duty_new[7]_i_8_n_0\,
      I2 => \half_duty_new4_carry_i_10__0_n_0\,
      I3 => \half_duty_new4_carry__2_n_0\,
      I4 => \half_duty_new[7]_i_9_n_0\,
      I5 => \half_duty_new[3]_i_2__0_n_0\,
      O => \half_duty_new[7]_i_4__0_n_0\
    );
\half_duty_new[7]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(24),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_81,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(8),
      O => \half_duty_new[7]_i_5__0_n_0\
    );
\half_duty_new[7]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1015101010151515"
    )
        port map (
      I0 => \half_duty_new[5]_i_2__0_n_0\,
      I1 => half_duty_new4(6),
      I2 => half_duty_new6_n_79,
      I3 => half_duty_new6_n_83,
      I4 => half_duty_new7,
      I5 => \half_duty_new6__0\(22),
      O => \half_duty_new[7]_i_6__0_n_0\
    );
\half_duty_new[7]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(23),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_82,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(7),
      O => \half_duty_new[7]_i_7__0_n_0\
    );
\half_duty_new[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFFFE"
    )
        port map (
      I0 => \half_duty_new[2]_i_2__0_n_0\,
      I1 => \half_duty_new[2]_i_3_n_0\,
      I2 => \half_duty_new[2]_i_4_n_0\,
      I3 => \half_duty_new6__0\(16),
      I4 => half_duty_new7,
      I5 => half_duty_new6_n_89,
      O => \half_duty_new[7]_i_8_n_0\
    );
\half_duty_new[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(21),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_84,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(5),
      O => \half_duty_new[7]_i_9_n_0\
    );
\half_duty_new_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1_n_0\,
      D => half_duty_new10_in(0),
      Q => half_duty_new(0),
      R => '0'
    );
\half_duty_new_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => half_duty_new(1),
      R => '0'
    );
\half_duty_new_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => half_duty_new(2),
      R => '0'
    );
\half_duty_new_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => half_duty_new(3),
      R => '0'
    );
\half_duty_new_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => half_duty_new(4),
      R => '0'
    );
\half_duty_new_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => half_duty_new(5),
      R => '0'
    );
\half_duty_new_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => half_duty_new(6),
      R => '0'
    );
\half_duty_new_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry__0_i_9__0_n_0\,
      CO(3) => \NLW_half_duty_new_reg[6]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new_reg[6]_i_2_n_1\,
      CO(1) => \NLW_half_duty_new_reg[6]_i_2_CO_UNCONNECTED\(1),
      CO(0) => \half_duty_new_reg[6]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_half_duty_new_reg[6]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => half_duty_new4(14 downto 13),
      S(3 downto 2) => B"01",
      S(1) => \half_duty_new[6]_i_4_n_0\,
      S(0) => \half_duty_new[6]_i_5_n_0\
    );
\half_duty_new_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => half_duty_new(7),
      R => '0'
    );
\half_duty_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(0),
      Q => \half_duty_reg_n_0_[0]\,
      R => '0'
    );
\half_duty_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(1),
      Q => \half_duty_reg_n_0_[1]\,
      R => '0'
    );
\half_duty_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(2),
      Q => \half_duty_reg_n_0_[2]\,
      R => '0'
    );
\half_duty_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(3),
      Q => \half_duty_reg_n_0_[3]\,
      R => '0'
    );
\half_duty_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(4),
      Q => \half_duty_reg_n_0_[4]\,
      R => '0'
    );
\half_duty_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(5),
      Q => \half_duty_reg_n_0_[5]\,
      R => '0'
    );
\half_duty_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(6),
      Q => \half_duty_reg_n_0_[6]\,
      R => '0'
    );
\half_duty_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(7),
      Q => \half_duty_reg_n_0_[7]\,
      R => '0'
    );
pwm_out_buf0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_pwm_out_buf0_carry_CO_UNCONNECTED(3),
      CO(2) => pwm_out_buf_reg_1(0),
      CO(1) => pwm_out_buf0_carry_n_2,
      CO(0) => pwm_out_buf0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pwm_out_buf0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => \pwm_out_buf0_carry_i_1__0_n_0\,
      S(1) => \pwm_out_buf0_carry_i_2__0_n_0\,
      S(0) => \pwm_out_buf0_carry_i_3__0_n_0\
    );
\pwm_out_buf0_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1004088008800440"
    )
        port map (
      I0 => \pwm_out_buf0_carry_i_4__0_n_0\,
      I1 => \count_reg_n_0_[8]\,
      I2 => \half_duty_reg_n_0_[7]\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[6]\,
      I5 => \half_duty_reg_n_0_[6]\,
      O => \pwm_out_buf0_carry_i_1__0_n_0\
    );
\pwm_out_buf0_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4200002800424200"
    )
        port map (
      I0 => pwm_out_buf0_carry_i_5_n_0,
      I1 => \half_duty_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \half_duty_reg_n_0_[3]\,
      I5 => pwm_out_buf0_carry_i_6_n_0,
      O => \pwm_out_buf0_carry_i_2__0_n_0\
    );
\pwm_out_buf0_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090090090000006"
    )
        port map (
      I0 => \half_duty_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \half_duty_reg_n_0_[1]\,
      I4 => \half_duty_reg_n_0_[0]\,
      I5 => \count_reg_n_0_[1]\,
      O => \pwm_out_buf0_carry_i_3__0_n_0\
    );
\pwm_out_buf0_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77777777777FFFFF"
    )
        port map (
      I0 => \half_duty_reg_n_0_[5]\,
      I1 => \half_duty_reg_n_0_[4]\,
      I2 => \half_duty_reg_n_0_[1]\,
      I3 => \half_duty_reg_n_0_[0]\,
      I4 => \half_duty_reg_n_0_[2]\,
      I5 => \half_duty_reg_n_0_[3]\,
      O => \pwm_out_buf0_carry_i_4__0_n_0\
    );
pwm_out_buf0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \half_duty_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[5]\,
      O => pwm_out_buf0_carry_i_5_n_0
    );
pwm_out_buf0_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \half_duty_reg_n_0_[1]\,
      I1 => \half_duty_reg_n_0_[0]\,
      I2 => \half_duty_reg_n_0_[2]\,
      O => pwm_out_buf0_carry_i_6_n_0
    );
pwm_out_buf1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_pwm_out_buf1_carry_CO_UNCONNECTED(3),
      CO(2) => pwm_out_buf_reg_0(0),
      CO(1) => pwm_out_buf1_carry_n_2,
      CO(0) => pwm_out_buf1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pwm_out_buf1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => \pwm_out_buf1_carry_i_1__0_n_0\,
      S(1) => \pwm_out_buf1_carry_i_2__0_n_0\,
      S(0) => \pwm_out_buf1_carry_i_3__0_n_0\
    );
\pwm_out_buf1_carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"21000021"
    )
        port map (
      I0 => \half_duty_reg_n_0_[6]\,
      I1 => \count_reg_n_0_[8]\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \half_duty_reg_n_0_[7]\,
      O => \pwm_out_buf1_carry_i_1__0_n_0\
    );
\pwm_out_buf1_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \half_duty_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[5]\,
      I2 => \half_duty_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[4]\,
      I4 => \count_reg_n_0_[3]\,
      I5 => \half_duty_reg_n_0_[3]\,
      O => \pwm_out_buf1_carry_i_2__0_n_0\
    );
\pwm_out_buf1_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8421000000008421"
    )
        port map (
      I0 => \half_duty_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \half_duty_reg_n_0_[0]\,
      I4 => \half_duty_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[2]\,
      O => \pwm_out_buf1_carry_i_3__0_n_0\
    );
pwm_out_buf_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => pwm_out_buf_reg_2,
      Q => \^motor_left_pwm_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MotionController_0_0_PWM_Driver__parameterized1_0\ is
  port (
    motor_right_pwm_out : out STD_LOGIC;
    pwm_out_buf_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_out_buf_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_out_buf_reg_2 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \slv_reg0_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MotionController_0_0_PWM_Driver__parameterized1_0\ : entity is "PWM_Driver";
end \design_1_MotionController_0_0_PWM_Driver__parameterized1_0\;

architecture STRUCTURE of \design_1_MotionController_0_0_PWM_Driver__parameterized1_0\ is
  signal count : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal disabled : STD_LOGIC;
  signal disabled0 : STD_LOGIC;
  signal disabled02_out : STD_LOGIC;
  signal half_duty0 : STD_LOGIC;
  signal half_duty_new : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal half_duty_new10_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal half_duty_new4 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \half_duty_new4_carry__0_i_10__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_11__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_12__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_13__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_9__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_9__1_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_9__1_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_i_9__1_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_7__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_i_8__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_4__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_5__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_6__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_i_7__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_10__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_11__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_11__1_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_11__1_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_11__1_n_3\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_12__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_13__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_14__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_15__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_16__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_17__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_18__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_19__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_20__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_9__1_n_0\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_9__1_n_1\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_9__1_n_2\ : STD_LOGIC;
  signal \half_duty_new4_carry_i_9__1_n_3\ : STD_LOGIC;
  signal half_duty_new4_carry_n_0 : STD_LOGIC;
  signal half_duty_new4_carry_n_1 : STD_LOGIC;
  signal half_duty_new4_carry_n_2 : STD_LOGIC;
  signal half_duty_new4_carry_n_3 : STD_LOGIC;
  signal \half_duty_new50_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new50_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new50_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_n_1\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_n_2\ : STD_LOGIC;
  signal \half_duty_new50_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_n_1\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_n_2\ : STD_LOGIC;
  signal \half_duty_new50_carry__3_n_3\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_n_1\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_n_2\ : STD_LOGIC;
  signal \half_duty_new50_carry__4_n_3\ : STD_LOGIC;
  signal \half_duty_new50_carry__5_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__5_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry__5_n_1\ : STD_LOGIC;
  signal \half_duty_new50_carry__5_n_3\ : STD_LOGIC;
  signal \half_duty_new50_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new50_carry_i_4__0_n_0\ : STD_LOGIC;
  signal half_duty_new50_carry_n_0 : STD_LOGIC;
  signal half_duty_new50_carry_n_1 : STD_LOGIC;
  signal half_duty_new50_carry_n_2 : STD_LOGIC;
  signal half_duty_new50_carry_n_3 : STD_LOGIC;
  signal half_duty_new52 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \half_duty_new6__0\ : STD_LOGIC_VECTOR ( 26 downto 16 );
  signal half_duty_new6_n_100 : STD_LOGIC;
  signal half_duty_new6_n_101 : STD_LOGIC;
  signal half_duty_new6_n_102 : STD_LOGIC;
  signal half_duty_new6_n_103 : STD_LOGIC;
  signal half_duty_new6_n_104 : STD_LOGIC;
  signal half_duty_new6_n_105 : STD_LOGIC;
  signal half_duty_new6_n_79 : STD_LOGIC;
  signal half_duty_new6_n_80 : STD_LOGIC;
  signal half_duty_new6_n_81 : STD_LOGIC;
  signal half_duty_new6_n_82 : STD_LOGIC;
  signal half_duty_new6_n_83 : STD_LOGIC;
  signal half_duty_new6_n_84 : STD_LOGIC;
  signal half_duty_new6_n_85 : STD_LOGIC;
  signal half_duty_new6_n_86 : STD_LOGIC;
  signal half_duty_new6_n_87 : STD_LOGIC;
  signal half_duty_new6_n_88 : STD_LOGIC;
  signal half_duty_new6_n_89 : STD_LOGIC;
  signal half_duty_new6_n_90 : STD_LOGIC;
  signal half_duty_new6_n_91 : STD_LOGIC;
  signal half_duty_new6_n_92 : STD_LOGIC;
  signal half_duty_new6_n_93 : STD_LOGIC;
  signal half_duty_new6_n_94 : STD_LOGIC;
  signal half_duty_new6_n_95 : STD_LOGIC;
  signal half_duty_new6_n_96 : STD_LOGIC;
  signal half_duty_new6_n_97 : STD_LOGIC;
  signal half_duty_new6_n_98 : STD_LOGIC;
  signal half_duty_new6_n_99 : STD_LOGIC;
  signal half_duty_new7 : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new7_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_i_8__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new7_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \half_duty_new7_carry_i_8__0_n_0\ : STD_LOGIC;
  signal half_duty_new7_carry_n_0 : STD_LOGIC;
  signal half_duty_new7_carry_n_1 : STD_LOGIC;
  signal half_duty_new7_carry_n_2 : STD_LOGIC;
  signal half_duty_new7_carry_n_3 : STD_LOGIC;
  signal \half_duty_new[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \half_duty_new[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \half_duty_new[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \half_duty_new[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[5]_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[5]_i_5__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[5]_i_6__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[6]_i_4__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[6]_i_5__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_4__1_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_5__1_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_6__1_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_7__1_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_8__0_n_0\ : STD_LOGIC;
  signal \half_duty_new[7]_i_9__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[6]_i_2__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[6]_i_2__0_n_3\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[0]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[1]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[2]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[3]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[4]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[5]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[6]\ : STD_LOGIC;
  signal \half_duty_reg_n_0_[7]\ : STD_LOGIC;
  signal \^motor_right_pwm_out\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_out0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \pwm_out_buf0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \pwm_out_buf0_carry_i_6__0_n_0\ : STD_LOGIC;
  signal pwm_out_buf0_carry_n_2 : STD_LOGIC;
  signal pwm_out_buf0_carry_n_3 : STD_LOGIC;
  signal \pwm_out_buf1_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \pwm_out_buf1_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \pwm_out_buf1_carry_i_3__1_n_0\ : STD_LOGIC;
  signal pwm_out_buf1_carry_n_2 : STD_LOGIC;
  signal pwm_out_buf1_carry_n_3 : STD_LOGIC;
  signal NLW_half_duty_new4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new4_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new4_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_half_duty_new50_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new50_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new50_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new50_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_half_duty_new50_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new50_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_half_duty_new6_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_half_duty_new6_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_half_duty_new6_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_half_duty_new6_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_half_duty_new6_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 27 );
  signal NLW_half_duty_new6_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_half_duty_new7_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new7_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new7_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new7_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new7_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[6]_i_2__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[6]_i_2__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_pwm_out_buf0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwm_out_buf0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pwm_out_buf1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwm_out_buf1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[1]_i_1__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[3]_i_1__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[5]_i_3__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[6]_i_2__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[7]_i_2__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[7]_i_3__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[8]_i_2__0\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of disabled_reg : label is "LDC";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of half_duty_new6 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \half_duty_new[0]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \half_duty_new[2]_i_5__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \half_duty_new[6]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \half_duty_new[7]_i_3__0\ : label is "soft_lutpair8";
begin
  motor_right_pwm_out <= \^motor_right_pwm_out\;
\count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => count(0)
    );
\count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => count(1)
    );
\count[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFFFD000000"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count[8]_i_2__0_n_0\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[0]\,
      I5 => \count_reg_n_0_[2]\,
      O => count(2)
    );
\count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      O => count(3)
    );
\count[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0B0A0B0AFB0A0B0"
    )
        port map (
      I0 => \count[5]_i_2__0_n_0\,
      I1 => \count_reg_n_0_[5]\,
      I2 => \count_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[2]\,
      I5 => \count[5]_i_3__0_n_0\,
      O => count(4)
    );
\count[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFF30000000"
    )
        port map (
      I0 => \count[5]_i_2__0_n_0\,
      I1 => \count[5]_i_3__0_n_0\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[5]\,
      O => count(5)
    );
\count[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0FF70FFF"
    )
        port map (
      I0 => \count_reg_n_0_[6]\,
      I1 => \count_reg_n_0_[7]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[8]\,
      I5 => \count[5]_i_3__0_n_0\,
      O => \count[5]_i_2__0_n_0\
    );
\count[5]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => \count[5]_i_3__0_n_0\
    );
\count[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FFF011F0"
    )
        port map (
      I0 => \count_reg_n_0_[7]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count[7]_i_2__0_n_0\,
      I3 => \count_reg_n_0_[6]\,
      I4 => \count[7]_i_3__0_n_0\,
      I5 => \count[6]_i_2__0_n_0\,
      O => count(6)
    );
\count[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[4]\,
      I1 => \count_reg_n_0_[5]\,
      O => \count[6]_i_2__0_n_0\
    );
\count[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F858F0F0F0F0F0F0"
    )
        port map (
      I0 => \count_reg_n_0_[6]\,
      I1 => \count[7]_i_2__0_n_0\,
      I2 => \count_reg_n_0_[7]\,
      I3 => \count[7]_i_3__0_n_0\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => count(7)
    );
\count[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[7]_i_2__0_n_0\
    );
\count[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77FFFF7F"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[8]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[2]\,
      O => \count[7]_i_3__0_n_0\
    );
\count[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count[8]_i_2__0_n_0\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[3]\,
      O => count(8)
    );
\count[8]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[7]\,
      I3 => \count_reg_n_0_[6]\,
      O => \count[8]_i_2__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(0),
      Q => \count_reg_n_0_[0]\
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(1),
      Q => \count_reg_n_0_[1]\
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(2),
      Q => \count_reg_n_0_[2]\
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(3),
      Q => \count_reg_n_0_[3]\
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(4),
      Q => \count_reg_n_0_[4]\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(5),
      Q => \count_reg_n_0_[5]\
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(6),
      Q => \count_reg_n_0_[6]\
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(7),
      Q => \count_reg_n_0_[7]\
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => count(8),
      Q => \count_reg_n_0_[8]\
    );
disabled_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => disabled0,
      D => disabled02_out,
      G => disabled02_out,
      GE => '1',
      Q => disabled
    );
disabled_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \slv_reg0_reg[0]\(0),
      I1 => enable,
      I2 => \^motor_right_pwm_out\,
      O => disabled02_out
    );
disabled_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^motor_right_pwm_out\,
      I1 => disabled,
      I2 => \slv_reg0_reg[0]\(0),
      I3 => enable,
      O => disabled0
    );
\half_duty[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \count[5]_i_3__0_n_0\,
      I1 => \count_reg_n_0_[2]\,
      I2 => disabled,
      I3 => \count[8]_i_2__0_n_0\,
      I4 => \count_reg_n_0_[3]\,
      I5 => \count_reg_n_0_[8]\,
      O => half_duty0
    );
half_duty_new4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => half_duty_new4_carry_n_0,
      CO(2) => half_duty_new4_carry_n_1,
      CO(1) => half_duty_new4_carry_n_2,
      CO(0) => half_duty_new4_carry_n_3,
      CYINIT => '1',
      DI(3) => \half_duty_new4_carry_i_1__0_n_0\,
      DI(2) => \half_duty_new4_carry_i_2__0_n_0\,
      DI(1) => \half_duty_new4_carry_i_3__0_n_0\,
      DI(0) => \half_duty_new4_carry_i_4__1_n_0\,
      O(3 downto 0) => NLW_half_duty_new4_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \half_duty_new4_carry_i_5__0_n_0\,
      S(2) => \half_duty_new4_carry_i_6__0_n_0\,
      S(1) => \half_duty_new4_carry_i_7__0_n_0\,
      S(0) => \half_duty_new4_carry_i_8__0_n_0\
    );
\half_duty_new4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new4_carry_n_0,
      CO(3) => \half_duty_new4_carry__0_n_0\,
      CO(2) => \half_duty_new4_carry__0_n_1\,
      CO(1) => \half_duty_new4_carry__0_n_2\,
      CO(0) => \half_duty_new4_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new4_carry__0_i_1__0_n_0\,
      DI(2) => \half_duty_new4_carry__0_i_2__0_n_0\,
      DI(1) => \half_duty_new4_carry__0_i_3__0_n_0\,
      DI(0) => \half_duty_new4_carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_half_duty_new4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new4_carry__0_i_5__0_n_0\,
      S(2) => \half_duty_new4_carry__0_i_6__0_n_0\,
      S(1) => \half_duty_new4_carry__0_i_7__0_n_0\,
      S(0) => \half_duty_new4_carry__0_i_8__0_n_0\
    );
\half_duty_new4_carry__0_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \half_duty_new50_carry__5_n_1\,
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new7,
      O => \half_duty_new4_carry__0_i_10__1_n_0\
    );
\half_duty_new4_carry__0_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \half_duty_new50_carry__5_n_1\,
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new7,
      O => \half_duty_new4_carry__0_i_11__1_n_0\
    );
\half_duty_new4_carry__0_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \half_duty_new6__0\(26),
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new7,
      O => \half_duty_new4_carry__0_i_12__1_n_0\
    );
\half_duty_new4_carry__0_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_80,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(25),
      O => \half_duty_new4_carry__0_i_13__1_n_0\
    );
\half_duty_new4_carry__0_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF110F11"
    )
        port map (
      I0 => half_duty_new7,
      I1 => \half_duty_new50_carry__5_n_1\,
      I2 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(14),
      O => \half_duty_new4_carry__0_i_1__0_n_0\
    );
\half_duty_new4_carry__0_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CDCDCD01"
    )
        port map (
      I0 => half_duty_new7,
      I1 => half_duty_new6_n_79,
      I2 => \half_duty_new50_carry__5_n_1\,
      I3 => half_duty_new4(12),
      I4 => half_duty_new4(13),
      O => \half_duty_new4_carry__0_i_2__0_n_0\
    );
\half_duty_new4_carry__0_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC00FCAAFC00FCFF"
    )
        port map (
      I0 => \half_duty_new6__0\(26),
      I1 => half_duty_new4(10),
      I2 => half_duty_new4(11),
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new7,
      I5 => \half_duty_new50_carry__5_n_1\,
      O => \half_duty_new4_carry__0_i_3__0_n_0\
    );
\half_duty_new4_carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFCFCFAFAFFF0"
    )
        port map (
      I0 => half_duty_new6_n_80,
      I1 => half_duty_new4(9),
      I2 => \half_duty_new[7]_i_5__1_n_0\,
      I3 => \half_duty_new6__0\(25),
      I4 => half_duty_new7,
      I5 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__0_i_4__0_n_0\
    );
\half_duty_new4_carry__0_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22FF22F0"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I1 => half_duty_new4(14),
      I2 => \half_duty_new50_carry__5_n_1\,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new7,
      O => \half_duty_new4_carry__0_i_5__0_n_0\
    );
\half_duty_new4_carry__0_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11FF11F0"
    )
        port map (
      I0 => half_duty_new4(13),
      I1 => half_duty_new4(12),
      I2 => \half_duty_new50_carry__5_n_1\,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new7,
      O => \half_duty_new4_carry__0_i_6__0_n_0\
    );
\half_duty_new4_carry__0_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0CFC0E0E0EFE"
    )
        port map (
      I0 => \half_duty_new50_carry__5_n_1\,
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_79,
      I3 => half_duty_new4(11),
      I4 => half_duty_new4(10),
      I5 => \half_duty_new6__0\(26),
      O => \half_duty_new4_carry__0_i_7__0_n_0\
    );
\half_duty_new4_carry__0_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001D00FF001D"
    )
        port map (
      I0 => \half_duty_new6__0\(25),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_80,
      I3 => \half_duty_new[7]_i_5__1_n_0\,
      I4 => half_duty_new6_n_79,
      I5 => half_duty_new4(9),
      O => \half_duty_new4_carry__0_i_8__0_n_0\
    );
\half_duty_new4_carry__0_i_9__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry_i_9__1_n_0\,
      CO(3) => \half_duty_new4_carry__0_i_9__1_n_0\,
      CO(2) => \half_duty_new4_carry__0_i_9__1_n_1\,
      CO(1) => \half_duty_new4_carry__0_i_9__1_n_2\,
      CO(0) => \half_duty_new4_carry__0_i_9__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new4(12 downto 9),
      S(3) => \half_duty_new4_carry__0_i_10__1_n_0\,
      S(2) => \half_duty_new4_carry__0_i_11__1_n_0\,
      S(1) => \half_duty_new4_carry__0_i_12__1_n_0\,
      S(0) => \half_duty_new4_carry__0_i_13__1_n_0\
    );
\half_duty_new4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry__0_n_0\,
      CO(3) => \half_duty_new4_carry__1_n_0\,
      CO(2) => \half_duty_new4_carry__1_n_1\,
      CO(1) => \half_duty_new4_carry__1_n_2\,
      CO(0) => \half_duty_new4_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new4_carry__1_i_1__1_n_0\,
      DI(2) => \half_duty_new4_carry__1_i_2__0_n_0\,
      DI(1) => \half_duty_new4_carry__1_i_3__1_n_0\,
      DI(0) => \half_duty_new4_carry__1_i_4__1_n_0\,
      O(3 downto 0) => \NLW_half_duty_new4_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new4_carry__1_i_5__0_n_0\,
      S(2) => \half_duty_new4_carry__1_i_6__0_n_0\,
      S(1) => \half_duty_new4_carry__1_i_7__1_n_0\,
      S(0) => \half_duty_new4_carry__1_i_8__1_n_0\
    );
\half_duty_new4_carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2__0_n_1\,
      O => \half_duty_new4_carry__1_i_1__1_n_0\
    );
\half_duty_new4_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2__0_n_1\,
      O => \half_duty_new4_carry__1_i_2__0_n_0\
    );
\half_duty_new4_carry__1_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2__0_n_1\,
      O => \half_duty_new4_carry__1_i_3__1_n_0\
    );
\half_duty_new4_carry__1_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2__0_n_1\,
      O => \half_duty_new4_carry__1_i_4__1_n_0\
    );
\half_duty_new4_carry__1_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__1_i_5__0_n_0\
    );
\half_duty_new4_carry__1_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__1_i_6__0_n_0\
    );
\half_duty_new4_carry__1_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__1_i_7__1_n_0\
    );
\half_duty_new4_carry__1_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__1_i_8__1_n_0\
    );
\half_duty_new4_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry__1_n_0\,
      CO(3) => \half_duty_new4_carry__2_n_0\,
      CO(2) => \half_duty_new4_carry__2_n_1\,
      CO(1) => \half_duty_new4_carry__2_n_2\,
      CO(0) => \half_duty_new4_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \half_duty_new4_carry__2_i_1__1_n_0\,
      DI(1) => \half_duty_new4_carry__2_i_2__1_n_0\,
      DI(0) => \half_duty_new4_carry__2_i_3__1_n_0\,
      O(3 downto 0) => \NLW_half_duty_new4_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new4_carry__2_i_4__1_n_0\,
      S(2) => \half_duty_new4_carry__2_i_5__0_n_0\,
      S(1) => \half_duty_new4_carry__2_i_6__0_n_0\,
      S(0) => \half_duty_new4_carry__2_i_7__0_n_0\
    );
\half_duty_new4_carry__2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2__0_n_1\,
      O => \half_duty_new4_carry__2_i_1__1_n_0\
    );
\half_duty_new4_carry__2_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2__0_n_1\,
      O => \half_duty_new4_carry__2_i_2__1_n_0\
    );
\half_duty_new4_carry__2_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2__0_n_1\,
      O => \half_duty_new4_carry__2_i_3__1_n_0\
    );
\half_duty_new4_carry__2_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__2_i_4__1_n_0\
    );
\half_duty_new4_carry__2_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__2_i_5__0_n_0\
    );
\half_duty_new4_carry__2_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__2_i_6__0_n_0\
    );
\half_duty_new4_carry__2_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I1 => half_duty_new6_n_79,
      O => \half_duty_new4_carry__2_i_7__0_n_0\
    );
\half_duty_new4_carry_i_10__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(20),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_85,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(4),
      O => \half_duty_new4_carry_i_10__1_n_0\
    );
\half_duty_new4_carry_i_11__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new4_carry_i_11__1_n_0\,
      CO(2) => \half_duty_new4_carry_i_11__1_n_1\,
      CO(1) => \half_duty_new4_carry_i_11__1_n_2\,
      CO(0) => \half_duty_new4_carry_i_11__1_n_3\,
      CYINIT => \half_duty_new4_carry_i_16__1_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new4(4 downto 1),
      S(3) => \half_duty_new4_carry_i_17__1_n_0\,
      S(2) => \half_duty_new4_carry_i_18__1_n_0\,
      S(1) => \half_duty_new4_carry_i_19__1_n_0\,
      S(0) => \half_duty_new4_carry_i_20__1_n_0\
    );
\half_duty_new4_carry_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_81,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(24),
      O => \half_duty_new4_carry_i_12__1_n_0\
    );
\half_duty_new4_carry_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_82,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(23),
      O => \half_duty_new4_carry_i_13__1_n_0\
    );
\half_duty_new4_carry_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_83,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(22),
      O => \half_duty_new4_carry_i_14__1_n_0\
    );
\half_duty_new4_carry_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_84,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(21),
      O => \half_duty_new4_carry_i_15__1_n_0\
    );
\half_duty_new4_carry_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new6__0\(16),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_89,
      O => \half_duty_new4_carry_i_16__1_n_0\
    );
\half_duty_new4_carry_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_85,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(20),
      O => \half_duty_new4_carry_i_17__1_n_0\
    );
\half_duty_new4_carry_i_18__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_86,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(19),
      O => \half_duty_new4_carry_i_18__1_n_0\
    );
\half_duty_new4_carry_i_19__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_87,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(18),
      O => \half_duty_new4_carry_i_19__1_n_0\
    );
\half_duty_new4_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => \half_duty_new[5]_i_3__0_n_0\,
      I1 => \half_duty_new6__0\(23),
      I2 => half_duty_new7,
      I3 => half_duty_new6_n_82,
      I4 => half_duty_new6_n_79,
      I5 => half_duty_new4(7),
      O => \half_duty_new4_carry_i_1__0_n_0\
    );
\half_duty_new4_carry_i_20__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => half_duty_new6_n_88,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(17),
      O => \half_duty_new4_carry_i_20__1_n_0\
    );
\half_duty_new4_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => \half_duty_new4_carry_i_10__1_n_0\,
      I1 => \half_duty_new6__0\(21),
      I2 => half_duty_new7,
      I3 => half_duty_new6_n_84,
      I4 => half_duty_new6_n_79,
      I5 => half_duty_new4(5),
      O => \half_duty_new4_carry_i_2__0_n_0\
    );
\half_duty_new4_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => \half_duty_new[2]_i_3__0_n_0\,
      I1 => \half_duty_new6__0\(19),
      I2 => half_duty_new7,
      I3 => half_duty_new6_n_86,
      I4 => half_duty_new6_n_79,
      I5 => half_duty_new4(3),
      O => \half_duty_new4_carry_i_3__0_n_0\
    );
\half_duty_new4_carry_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB8BBB888"
    )
        port map (
      I0 => half_duty_new4(1),
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new6_n_88,
      I3 => half_duty_new7,
      I4 => \half_duty_new6__0\(17),
      I5 => p_1_out0(0),
      O => \half_duty_new4_carry_i_4__1_n_0\
    );
\half_duty_new4_carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047444777"
    )
        port map (
      I0 => half_duty_new4(7),
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new6_n_82,
      I3 => half_duty_new7,
      I4 => \half_duty_new6__0\(23),
      I5 => \half_duty_new[5]_i_3__0_n_0\,
      O => \half_duty_new4_carry_i_5__0_n_0\
    );
\half_duty_new4_carry_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047444777"
    )
        port map (
      I0 => half_duty_new4(5),
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new6_n_84,
      I3 => half_duty_new7,
      I4 => \half_duty_new6__0\(21),
      I5 => \half_duty_new4_carry_i_10__1_n_0\,
      O => \half_duty_new4_carry_i_6__0_n_0\
    );
\half_duty_new4_carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047444777"
    )
        port map (
      I0 => half_duty_new4(3),
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new6_n_86,
      I3 => half_duty_new7,
      I4 => \half_duty_new6__0\(19),
      I5 => \half_duty_new[2]_i_3__0_n_0\,
      O => \half_duty_new4_carry_i_7__0_n_0\
    );
\half_duty_new4_carry_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015155550151"
    )
        port map (
      I0 => p_1_out0(0),
      I1 => \half_duty_new6__0\(17),
      I2 => half_duty_new7,
      I3 => half_duty_new6_n_88,
      I4 => half_duty_new6_n_79,
      I5 => half_duty_new4(1),
      O => \half_duty_new4_carry_i_8__0_n_0\
    );
\half_duty_new4_carry_i_9__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry_i_11__1_n_0\,
      CO(3) => \half_duty_new4_carry_i_9__1_n_0\,
      CO(2) => \half_duty_new4_carry_i_9__1_n_1\,
      CO(1) => \half_duty_new4_carry_i_9__1_n_2\,
      CO(0) => \half_duty_new4_carry_i_9__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => half_duty_new4(8 downto 5),
      S(3) => \half_duty_new4_carry_i_12__1_n_0\,
      S(2) => \half_duty_new4_carry_i_13__1_n_0\,
      S(1) => \half_duty_new4_carry_i_14__1_n_0\,
      S(0) => \half_duty_new4_carry_i_15__1_n_0\
    );
half_duty_new50_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => half_duty_new50_carry_n_0,
      CO(2) => half_duty_new50_carry_n_1,
      CO(1) => half_duty_new50_carry_n_2,
      CO(0) => half_duty_new50_carry_n_3,
      CYINIT => half_duty_new52(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_half_duty_new50_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \half_duty_new50_carry_i_2__0_n_0\,
      S(2) => \half_duty_new50_carry_i_3__0_n_0\,
      S(1) => \half_duty_new50_carry_i_4__0_n_0\,
      S(0) => half_duty_new52(1)
    );
\half_duty_new50_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new50_carry_n_0,
      CO(3) => \half_duty_new50_carry__0_n_0\,
      CO(2) => \half_duty_new50_carry__0_n_1\,
      CO(1) => \half_duty_new50_carry__0_n_2\,
      CO(0) => \half_duty_new50_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_half_duty_new50_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new50_carry__0_i_1__0_n_0\,
      S(2) => \half_duty_new50_carry__0_i_2__0_n_0\,
      S(1) => \half_duty_new50_carry__0_i_3__0_n_0\,
      S(0) => \half_duty_new50_carry__0_i_4__0_n_0\
    );
\half_duty_new50_carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_97,
      O => \half_duty_new50_carry__0_i_1__0_n_0\
    );
\half_duty_new50_carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_98,
      O => \half_duty_new50_carry__0_i_2__0_n_0\
    );
\half_duty_new50_carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_99,
      O => \half_duty_new50_carry__0_i_3__0_n_0\
    );
\half_duty_new50_carry__0_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_100,
      O => \half_duty_new50_carry__0_i_4__0_n_0\
    );
\half_duty_new50_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new50_carry__0_n_0\,
      CO(3) => \half_duty_new50_carry__1_n_0\,
      CO(2) => \half_duty_new50_carry__1_n_1\,
      CO(1) => \half_duty_new50_carry__1_n_2\,
      CO(0) => \half_duty_new50_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_half_duty_new50_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new50_carry__1_i_1__0_n_0\,
      S(2) => \half_duty_new50_carry__1_i_2__0_n_0\,
      S(1) => \half_duty_new50_carry__1_i_3__0_n_0\,
      S(0) => \half_duty_new50_carry__1_i_4__0_n_0\
    );
\half_duty_new50_carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_93,
      O => \half_duty_new50_carry__1_i_1__0_n_0\
    );
\half_duty_new50_carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_94,
      O => \half_duty_new50_carry__1_i_2__0_n_0\
    );
\half_duty_new50_carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_95,
      O => \half_duty_new50_carry__1_i_3__0_n_0\
    );
\half_duty_new50_carry__1_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_96,
      O => \half_duty_new50_carry__1_i_4__0_n_0\
    );
\half_duty_new50_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new50_carry__1_n_0\,
      CO(3) => \half_duty_new50_carry__2_n_0\,
      CO(2) => \half_duty_new50_carry__2_n_1\,
      CO(1) => \half_duty_new50_carry__2_n_2\,
      CO(0) => \half_duty_new50_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \half_duty_new6__0\(16),
      O(2 downto 0) => \NLW_half_duty_new50_carry__2_O_UNCONNECTED\(2 downto 0),
      S(3) => \half_duty_new50_carry__2_i_1__0_n_0\,
      S(2) => \half_duty_new50_carry__2_i_2__0_n_0\,
      S(1) => \half_duty_new50_carry__2_i_3__0_n_0\,
      S(0) => \half_duty_new50_carry__2_i_4__0_n_0\
    );
\half_duty_new50_carry__2_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_89,
      O => \half_duty_new50_carry__2_i_1__0_n_0\
    );
\half_duty_new50_carry__2_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_90,
      O => \half_duty_new50_carry__2_i_2__0_n_0\
    );
\half_duty_new50_carry__2_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_91,
      O => \half_duty_new50_carry__2_i_3__0_n_0\
    );
\half_duty_new50_carry__2_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_92,
      O => \half_duty_new50_carry__2_i_4__0_n_0\
    );
\half_duty_new50_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new50_carry__2_n_0\,
      CO(3) => \half_duty_new50_carry__3_n_0\,
      CO(2) => \half_duty_new50_carry__3_n_1\,
      CO(1) => \half_duty_new50_carry__3_n_2\,
      CO(0) => \half_duty_new50_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new6__0\(20 downto 17),
      S(3) => \half_duty_new50_carry__3_i_1__0_n_0\,
      S(2) => \half_duty_new50_carry__3_i_2__0_n_0\,
      S(1) => \half_duty_new50_carry__3_i_3__0_n_0\,
      S(0) => \half_duty_new50_carry__3_i_4__0_n_0\
    );
\half_duty_new50_carry__3_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_85,
      O => \half_duty_new50_carry__3_i_1__0_n_0\
    );
\half_duty_new50_carry__3_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_86,
      O => \half_duty_new50_carry__3_i_2__0_n_0\
    );
\half_duty_new50_carry__3_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_87,
      O => \half_duty_new50_carry__3_i_3__0_n_0\
    );
\half_duty_new50_carry__3_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_88,
      O => \half_duty_new50_carry__3_i_4__0_n_0\
    );
\half_duty_new50_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new50_carry__3_n_0\,
      CO(3) => \half_duty_new50_carry__4_n_0\,
      CO(2) => \half_duty_new50_carry__4_n_1\,
      CO(1) => \half_duty_new50_carry__4_n_2\,
      CO(0) => \half_duty_new50_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new6__0\(24 downto 21),
      S(3) => \half_duty_new50_carry__4_i_1__0_n_0\,
      S(2) => \half_duty_new50_carry__4_i_2__0_n_0\,
      S(1) => \half_duty_new50_carry__4_i_3__0_n_0\,
      S(0) => \half_duty_new50_carry__4_i_4__0_n_0\
    );
\half_duty_new50_carry__4_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_81,
      O => \half_duty_new50_carry__4_i_1__0_n_0\
    );
\half_duty_new50_carry__4_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_82,
      O => \half_duty_new50_carry__4_i_2__0_n_0\
    );
\half_duty_new50_carry__4_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_83,
      O => \half_duty_new50_carry__4_i_3__0_n_0\
    );
\half_duty_new50_carry__4_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_84,
      O => \half_duty_new50_carry__4_i_4__0_n_0\
    );
\half_duty_new50_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new50_carry__4_n_0\,
      CO(3) => \NLW_half_duty_new50_carry__5_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new50_carry__5_n_1\,
      CO(1) => \NLW_half_duty_new50_carry__5_CO_UNCONNECTED\(1),
      CO(0) => \half_duty_new50_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0010",
      O(3 downto 2) => \NLW_half_duty_new50_carry__5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \half_duty_new6__0\(26 downto 25),
      S(3 downto 2) => B"01",
      S(1) => \half_duty_new50_carry__5_i_1__0_n_0\,
      S(0) => \half_duty_new50_carry__5_i_2__0_n_0\
    );
\half_duty_new50_carry__5_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_79,
      O => \half_duty_new50_carry__5_i_1__0_n_0\
    );
\half_duty_new50_carry__5_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_80,
      O => \half_duty_new50_carry__5_i_2__0_n_0\
    );
\half_duty_new50_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_105,
      O => half_duty_new52(0)
    );
\half_duty_new50_carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_101,
      O => \half_duty_new50_carry_i_2__0_n_0\
    );
\half_duty_new50_carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_102,
      O => \half_duty_new50_carry_i_3__0_n_0\
    );
\half_duty_new50_carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_103,
      O => \half_duty_new50_carry_i_4__0_n_0\
    );
\half_duty_new50_carry_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_104,
      O => half_duty_new52(1)
    );
half_duty_new6: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => Q(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_half_duty_new6_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000111110100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_half_duty_new6_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_half_duty_new6_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_half_duty_new6_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_half_duty_new6_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_half_duty_new6_OVERFLOW_UNCONNECTED,
      P(47 downto 27) => NLW_half_duty_new6_P_UNCONNECTED(47 downto 27),
      P(26) => half_duty_new6_n_79,
      P(25) => half_duty_new6_n_80,
      P(24) => half_duty_new6_n_81,
      P(23) => half_duty_new6_n_82,
      P(22) => half_duty_new6_n_83,
      P(21) => half_duty_new6_n_84,
      P(20) => half_duty_new6_n_85,
      P(19) => half_duty_new6_n_86,
      P(18) => half_duty_new6_n_87,
      P(17) => half_duty_new6_n_88,
      P(16) => half_duty_new6_n_89,
      P(15) => half_duty_new6_n_90,
      P(14) => half_duty_new6_n_91,
      P(13) => half_duty_new6_n_92,
      P(12) => half_duty_new6_n_93,
      P(11) => half_duty_new6_n_94,
      P(10) => half_duty_new6_n_95,
      P(9) => half_duty_new6_n_96,
      P(8) => half_duty_new6_n_97,
      P(7) => half_duty_new6_n_98,
      P(6) => half_duty_new6_n_99,
      P(5) => half_duty_new6_n_100,
      P(4) => half_duty_new6_n_101,
      P(3) => half_duty_new6_n_102,
      P(2) => half_duty_new6_n_103,
      P(1) => half_duty_new6_n_104,
      P(0) => half_duty_new6_n_105,
      PATTERNBDETECT => NLW_half_duty_new6_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_half_duty_new6_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_half_duty_new6_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_half_duty_new6_UNDERFLOW_UNCONNECTED
    );
half_duty_new7_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => half_duty_new7_carry_n_0,
      CO(2) => half_duty_new7_carry_n_1,
      CO(1) => half_duty_new7_carry_n_2,
      CO(0) => half_duty_new7_carry_n_3,
      CYINIT => '1',
      DI(3) => \half_duty_new7_carry_i_1__1_n_0\,
      DI(2) => \half_duty_new7_carry_i_2__1_n_0\,
      DI(1) => \half_duty_new7_carry_i_3__1_n_0\,
      DI(0) => \half_duty_new7_carry_i_4__1_n_0\,
      O(3 downto 0) => NLW_half_duty_new7_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \half_duty_new7_carry_i_5__0_n_0\,
      S(2) => \half_duty_new7_carry_i_6__0_n_0\,
      S(1) => \half_duty_new7_carry_i_7__0_n_0\,
      S(0) => \half_duty_new7_carry_i_8__0_n_0\
    );
\half_duty_new7_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => half_duty_new7_carry_n_0,
      CO(3) => \half_duty_new7_carry__0_n_0\,
      CO(2) => \half_duty_new7_carry__0_n_1\,
      CO(1) => \half_duty_new7_carry__0_n_2\,
      CO(0) => \half_duty_new7_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new7_carry__0_i_1__1_n_0\,
      DI(2) => \half_duty_new7_carry__0_i_2__1_n_0\,
      DI(1) => \half_duty_new7_carry__0_i_3__1_n_0\,
      DI(0) => \half_duty_new7_carry__0_i_4__1_n_0\,
      O(3 downto 0) => \NLW_half_duty_new7_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new7_carry__0_i_5__0_n_0\,
      S(2) => \half_duty_new7_carry__0_i_6__0_n_0\,
      S(1) => \half_duty_new7_carry__0_i_7__0_n_0\,
      S(0) => \half_duty_new7_carry__0_i_8__0_n_0\
    );
\half_duty_new7_carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_91,
      I1 => half_duty_new6_n_90,
      O => \half_duty_new7_carry__0_i_1__1_n_0\
    );
\half_duty_new7_carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_93,
      I1 => half_duty_new6_n_92,
      O => \half_duty_new7_carry__0_i_2__1_n_0\
    );
\half_duty_new7_carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_95,
      I1 => half_duty_new6_n_94,
      O => \half_duty_new7_carry__0_i_3__1_n_0\
    );
\half_duty_new7_carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_97,
      I1 => half_duty_new6_n_96,
      O => \half_duty_new7_carry__0_i_4__1_n_0\
    );
\half_duty_new7_carry__0_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_90,
      I1 => half_duty_new6_n_91,
      O => \half_duty_new7_carry__0_i_5__0_n_0\
    );
\half_duty_new7_carry__0_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_92,
      I1 => half_duty_new6_n_93,
      O => \half_duty_new7_carry__0_i_6__0_n_0\
    );
\half_duty_new7_carry__0_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_94,
      I1 => half_duty_new6_n_95,
      O => \half_duty_new7_carry__0_i_7__0_n_0\
    );
\half_duty_new7_carry__0_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_96,
      I1 => half_duty_new6_n_97,
      O => \half_duty_new7_carry__0_i_8__0_n_0\
    );
\half_duty_new7_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new7_carry__0_n_0\,
      CO(3) => \half_duty_new7_carry__1_n_0\,
      CO(2) => \half_duty_new7_carry__1_n_1\,
      CO(1) => \half_duty_new7_carry__1_n_2\,
      CO(0) => \half_duty_new7_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new7_carry__1_i_1__1_n_0\,
      DI(2) => \half_duty_new7_carry__1_i_2__1_n_0\,
      DI(1) => \half_duty_new7_carry__1_i_3__1_n_0\,
      DI(0) => \half_duty_new7_carry__1_i_4__1_n_0\,
      O(3 downto 0) => \NLW_half_duty_new7_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new7_carry__1_i_5__0_n_0\,
      S(2) => \half_duty_new7_carry__1_i_6__0_n_0\,
      S(1) => \half_duty_new7_carry__1_i_7__0_n_0\,
      S(0) => \half_duty_new7_carry__1_i_8__0_n_0\
    );
\half_duty_new7_carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_83,
      I1 => half_duty_new6_n_82,
      O => \half_duty_new7_carry__1_i_1__1_n_0\
    );
\half_duty_new7_carry__1_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_85,
      I1 => half_duty_new6_n_84,
      O => \half_duty_new7_carry__1_i_2__1_n_0\
    );
\half_duty_new7_carry__1_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_87,
      I1 => half_duty_new6_n_86,
      O => \half_duty_new7_carry__1_i_3__1_n_0\
    );
\half_duty_new7_carry__1_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_89,
      I1 => half_duty_new6_n_88,
      O => \half_duty_new7_carry__1_i_4__1_n_0\
    );
\half_duty_new7_carry__1_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_82,
      I1 => half_duty_new6_n_83,
      O => \half_duty_new7_carry__1_i_5__0_n_0\
    );
\half_duty_new7_carry__1_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_84,
      I1 => half_duty_new6_n_85,
      O => \half_duty_new7_carry__1_i_6__0_n_0\
    );
\half_duty_new7_carry__1_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_86,
      I1 => half_duty_new6_n_87,
      O => \half_duty_new7_carry__1_i_7__0_n_0\
    );
\half_duty_new7_carry__1_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_88,
      I1 => half_duty_new6_n_89,
      O => \half_duty_new7_carry__1_i_8__0_n_0\
    );
\half_duty_new7_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new7_carry__1_n_0\,
      CO(3 downto 2) => \NLW_half_duty_new7_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => half_duty_new7,
      CO(0) => \half_duty_new7_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \half_duty_new7_carry__2_i_1__0_n_0\,
      O(3 downto 0) => \NLW_half_duty_new7_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \half_duty_new7_carry__2_i_2__1_n_0\,
      S(0) => \half_duty_new7_carry__2_i_3__1_n_0\
    );
\half_duty_new7_carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_81,
      I1 => half_duty_new6_n_80,
      O => \half_duty_new7_carry__2_i_1__0_n_0\
    );
\half_duty_new7_carry__2_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_79,
      O => \half_duty_new7_carry__2_i_2__1_n_0\
    );
\half_duty_new7_carry__2_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_80,
      I1 => half_duty_new6_n_81,
      O => \half_duty_new7_carry__2_i_3__1_n_0\
    );
\half_duty_new7_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_99,
      I1 => half_duty_new6_n_98,
      O => \half_duty_new7_carry_i_1__1_n_0\
    );
\half_duty_new7_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_101,
      I1 => half_duty_new6_n_100,
      O => \half_duty_new7_carry_i_2__1_n_0\
    );
\half_duty_new7_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_103,
      I1 => half_duty_new6_n_102,
      O => \half_duty_new7_carry_i_3__1_n_0\
    );
\half_duty_new7_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => half_duty_new6_n_105,
      I1 => half_duty_new6_n_104,
      O => \half_duty_new7_carry_i_4__1_n_0\
    );
\half_duty_new7_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_98,
      I1 => half_duty_new6_n_99,
      O => \half_duty_new7_carry_i_5__0_n_0\
    );
\half_duty_new7_carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_100,
      I1 => half_duty_new6_n_101,
      O => \half_duty_new7_carry_i_6__0_n_0\
    );
\half_duty_new7_carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_102,
      I1 => half_duty_new6_n_103,
      O => \half_duty_new7_carry_i_7__0_n_0\
    );
\half_duty_new7_carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => half_duty_new6_n_104,
      I1 => half_duty_new6_n_105,
      O => \half_duty_new7_carry_i_8__0_n_0\
    );
\half_duty_new[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4700B8"
    )
        port map (
      I0 => half_duty_new6_n_89,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(16),
      I3 => \half_duty_new4_carry__2_n_0\,
      I4 => \half_duty_new[2]_i_4__0_n_0\,
      O => half_duty_new10_in(0)
    );
\half_duty_new[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D20FD22DF02DF0F0"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I2 => \half_duty_new[2]_i_3__0_n_0\,
      I3 => \half_duty_new4_carry__2_n_0\,
      I4 => p_1_out0(0),
      I5 => \half_duty_new[2]_i_4__0_n_0\,
      O => p_1_in(1)
    );
\half_duty_new[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"636969C9696969CC"
    )
        port map (
      I0 => \half_duty_new[7]_i_3__0_n_0\,
      I1 => \half_duty_new[2]_i_2__1_n_0\,
      I2 => \half_duty_new4_carry__2_n_0\,
      I3 => \half_duty_new[2]_i_3__0_n_0\,
      I4 => \half_duty_new[2]_i_4__0_n_0\,
      I5 => p_1_out0(0),
      O => p_1_in(2)
    );
\half_duty_new[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(19),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_86,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(3),
      O => \half_duty_new[2]_i_2__1_n_0\
    );
\half_duty_new[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(18),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_87,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(2),
      O => \half_duty_new[2]_i_3__0_n_0\
    );
\half_duty_new[2]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(17),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_88,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(1),
      O => \half_duty_new[2]_i_4__0_n_0\
    );
\half_duty_new[2]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => half_duty_new6_n_89,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(16),
      O => p_1_out0(0)
    );
\half_duty_new[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I2 => \half_duty_new[3]_i_2__1_n_0\,
      I3 => half_duty_new10_in(3),
      O => p_1_in(3)
    );
\half_duty_new[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20040005"
    )
        port map (
      I0 => \half_duty_new[2]_i_2__1_n_0\,
      I1 => \half_duty_new4_carry__2_n_0\,
      I2 => \half_duty_new[2]_i_3__0_n_0\,
      I3 => \half_duty_new[2]_i_4__0_n_0\,
      I4 => p_1_out0(0),
      O => \half_duty_new[3]_i_2__1_n_0\
    );
\half_duty_new[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0100FE"
    )
        port map (
      I0 => \half_duty_new[2]_i_2__1_n_0\,
      I1 => \half_duty_new[2]_i_3__0_n_0\,
      I2 => \half_duty_new4_carry_i_4__1_n_0\,
      I3 => \half_duty_new4_carry__2_n_0\,
      I4 => \half_duty_new4_carry_i_10__1_n_0\,
      O => half_duty_new10_in(3)
    );
\half_duty_new[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I2 => \half_duty_new[4]_i_2__0_n_0\,
      I3 => half_duty_new10_in(4),
      O => p_1_in(4)
    );
\half_duty_new[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFAFFFE"
    )
        port map (
      I0 => \half_duty_new4_carry_i_10__1_n_0\,
      I1 => p_1_out0(0),
      I2 => \half_duty_new[2]_i_4__0_n_0\,
      I3 => \half_duty_new[2]_i_3__0_n_0\,
      I4 => \half_duty_new4_carry__2_n_0\,
      I5 => \half_duty_new[2]_i_2__1_n_0\,
      O => \half_duty_new[4]_i_2__0_n_0\
    );
\half_duty_new[4]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00010000FFFE"
    )
        port map (
      I0 => \half_duty_new4_carry_i_4__1_n_0\,
      I1 => \half_duty_new[2]_i_3__0_n_0\,
      I2 => \half_duty_new[2]_i_2__1_n_0\,
      I3 => \half_duty_new4_carry_i_10__1_n_0\,
      I4 => \half_duty_new4_carry__2_n_0\,
      I5 => \half_duty_new[7]_i_9__0_n_0\,
      O => half_duty_new10_in(4)
    );
\half_duty_new[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D2D2D2D2D22DD2"
    )
        port map (
      I0 => \half_duty_new[5]_i_2__1_n_0\,
      I1 => \half_duty_new4_carry__2_n_0\,
      I2 => \half_duty_new[5]_i_3__0_n_0\,
      I3 => half_duty_new6_n_79,
      I4 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I5 => \half_duty_new[5]_i_4__0_n_0\,
      O => p_1_in(5)
    );
\half_duty_new[5]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \half_duty_new[7]_i_9__0_n_0\,
      I1 => \half_duty_new4_carry_i_10__1_n_0\,
      I2 => \half_duty_new[2]_i_2__1_n_0\,
      I3 => \half_duty_new[2]_i_3__0_n_0\,
      I4 => \half_duty_new[2]_i_4__0_n_0\,
      I5 => p_1_out0(0),
      O => \half_duty_new[5]_i_2__1_n_0\
    );
\half_duty_new[5]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(22),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_83,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(6),
      O => \half_duty_new[5]_i_3__0_n_0\
    );
\half_duty_new[5]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001104000010"
    )
        port map (
      I0 => \half_duty_new[5]_i_5__0_n_0\,
      I1 => \half_duty_new[7]_i_9__0_n_0\,
      I2 => \half_duty_new4_carry__2_n_0\,
      I3 => \half_duty_new4_carry_i_10__1_n_0\,
      I4 => \half_duty_new[2]_i_2__1_n_0\,
      I5 => \half_duty_new[5]_i_6__0_n_0\,
      O => \half_duty_new[5]_i_4__0_n_0\
    );
\half_duty_new[5]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDDDFFFBABBBAAA"
    )
        port map (
      I0 => \half_duty_new[2]_i_3__0_n_0\,
      I1 => \half_duty_new4_carry__2_n_0\,
      I2 => half_duty_new6_n_89,
      I3 => half_duty_new7,
      I4 => \half_duty_new6__0\(16),
      I5 => \half_duty_new[2]_i_4__0_n_0\,
      O => \half_duty_new[5]_i_5__0_n_0\
    );
\half_duty_new[5]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000047"
    )
        port map (
      I0 => half_duty_new6_n_89,
      I1 => half_duty_new7,
      I2 => \half_duty_new6__0\(16),
      I3 => \half_duty_new[2]_i_4__0_n_0\,
      I4 => \half_duty_new[2]_i_3__0_n_0\,
      O => \half_duty_new[5]_i_6__0_n_0\
    );
\half_duty_new[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2__0_n_1\,
      I2 => \half_duty_new[7]_i_4__1_n_0\,
      I3 => half_duty_new10_in(6),
      O => p_1_in(6)
    );
\half_duty_new[6]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB54"
    )
        port map (
      I0 => \half_duty_new4_carry__2_n_0\,
      I1 => \half_duty_new[5]_i_2__1_n_0\,
      I2 => \half_duty_new[5]_i_3__0_n_0\,
      I3 => \half_duty_new[7]_i_7__1_n_0\,
      O => half_duty_new10_in(6)
    );
\half_duty_new[6]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \half_duty_new50_carry__5_n_1\,
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new7,
      O => \half_duty_new[6]_i_4__0_n_0\
    );
\half_duty_new[6]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \half_duty_new50_carry__5_n_1\,
      I1 => half_duty_new6_n_79,
      I2 => half_duty_new7,
      O => \half_duty_new[6]_i_5__0_n_0\
    );
\half_duty_new[7]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disabled,
      O => \half_duty_new[7]_i_1__0_n_0\
    );
\half_duty_new[7]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA55A87787878A5"
    )
        port map (
      I0 => \half_duty_new[7]_i_3__0_n_0\,
      I1 => \half_duty_new[7]_i_4__1_n_0\,
      I2 => \half_duty_new[7]_i_5__1_n_0\,
      I3 => \half_duty_new4_carry__2_n_0\,
      I4 => \half_duty_new[7]_i_6__1_n_0\,
      I5 => \half_duty_new[7]_i_7__1_n_0\,
      O => p_1_in(7)
    );
\half_duty_new[7]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => half_duty_new6_n_79,
      I1 => \half_duty_new_reg[6]_i_2__0_n_1\,
      O => \half_duty_new[7]_i_3__0_n_0\
    );
\half_duty_new[7]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFAFEFFFFFFFF"
    )
        port map (
      I0 => \half_duty_new[5]_i_3__0_n_0\,
      I1 => \half_duty_new[7]_i_8__0_n_0\,
      I2 => \half_duty_new4_carry_i_10__1_n_0\,
      I3 => \half_duty_new4_carry__2_n_0\,
      I4 => \half_duty_new[7]_i_9__0_n_0\,
      I5 => \half_duty_new[3]_i_2__1_n_0\,
      O => \half_duty_new[7]_i_4__1_n_0\
    );
\half_duty_new[7]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(24),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_81,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(8),
      O => \half_duty_new[7]_i_5__1_n_0\
    );
\half_duty_new[7]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1015101010151515"
    )
        port map (
      I0 => \half_duty_new[5]_i_2__1_n_0\,
      I1 => half_duty_new4(6),
      I2 => half_duty_new6_n_79,
      I3 => half_duty_new6_n_83,
      I4 => half_duty_new7,
      I5 => \half_duty_new6__0\(22),
      O => \half_duty_new[7]_i_6__1_n_0\
    );
\half_duty_new[7]_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(23),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_82,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(7),
      O => \half_duty_new[7]_i_7__1_n_0\
    );
\half_duty_new[7]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFFFE"
    )
        port map (
      I0 => \half_duty_new[2]_i_2__1_n_0\,
      I1 => \half_duty_new[2]_i_3__0_n_0\,
      I2 => \half_duty_new[2]_i_4__0_n_0\,
      I3 => \half_duty_new6__0\(16),
      I4 => half_duty_new7,
      I5 => half_duty_new6_n_89,
      O => \half_duty_new[7]_i_8__0_n_0\
    );
\half_duty_new[7]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \half_duty_new6__0\(21),
      I1 => half_duty_new7,
      I2 => half_duty_new6_n_84,
      I3 => half_duty_new6_n_79,
      I4 => half_duty_new4(5),
      O => \half_duty_new[7]_i_9__0_n_0\
    );
\half_duty_new_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1__0_n_0\,
      D => half_duty_new10_in(0),
      Q => half_duty_new(0),
      R => '0'
    );
\half_duty_new_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1__0_n_0\,
      D => p_1_in(1),
      Q => half_duty_new(1),
      R => '0'
    );
\half_duty_new_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1__0_n_0\,
      D => p_1_in(2),
      Q => half_duty_new(2),
      R => '0'
    );
\half_duty_new_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1__0_n_0\,
      D => p_1_in(3),
      Q => half_duty_new(3),
      R => '0'
    );
\half_duty_new_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1__0_n_0\,
      D => p_1_in(4),
      Q => half_duty_new(4),
      R => '0'
    );
\half_duty_new_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1__0_n_0\,
      D => p_1_in(5),
      Q => half_duty_new(5),
      R => '0'
    );
\half_duty_new_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1__0_n_0\,
      D => p_1_in(6),
      Q => half_duty_new(6),
      R => '0'
    );
\half_duty_new_reg[6]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new4_carry__0_i_9__1_n_0\,
      CO(3) => \NLW_half_duty_new_reg[6]_i_2__0_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new_reg[6]_i_2__0_n_1\,
      CO(1) => \NLW_half_duty_new_reg[6]_i_2__0_CO_UNCONNECTED\(1),
      CO(0) => \half_duty_new_reg[6]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_half_duty_new_reg[6]_i_2__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => half_duty_new4(14 downto 13),
      S(3 downto 2) => B"01",
      S(1) => \half_duty_new[6]_i_4__0_n_0\,
      S(0) => \half_duty_new[6]_i_5__0_n_0\
    );
\half_duty_new_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_new[7]_i_1__0_n_0\,
      D => p_1_in(7),
      Q => half_duty_new(7),
      R => '0'
    );
\half_duty_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(0),
      Q => \half_duty_reg_n_0_[0]\,
      R => '0'
    );
\half_duty_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(1),
      Q => \half_duty_reg_n_0_[1]\,
      R => '0'
    );
\half_duty_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(2),
      Q => \half_duty_reg_n_0_[2]\,
      R => '0'
    );
\half_duty_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(3),
      Q => \half_duty_reg_n_0_[3]\,
      R => '0'
    );
\half_duty_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(4),
      Q => \half_duty_reg_n_0_[4]\,
      R => '0'
    );
\half_duty_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(5),
      Q => \half_duty_reg_n_0_[5]\,
      R => '0'
    );
\half_duty_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(6),
      Q => \half_duty_reg_n_0_[6]\,
      R => '0'
    );
\half_duty_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => half_duty0,
      D => half_duty_new(7),
      Q => \half_duty_reg_n_0_[7]\,
      R => '0'
    );
pwm_out_buf0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_pwm_out_buf0_carry_CO_UNCONNECTED(3),
      CO(2) => pwm_out_buf_reg_1(0),
      CO(1) => pwm_out_buf0_carry_n_2,
      CO(0) => pwm_out_buf0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pwm_out_buf0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => \pwm_out_buf0_carry_i_1__1_n_0\,
      S(1) => \pwm_out_buf0_carry_i_2__1_n_0\,
      S(0) => \pwm_out_buf0_carry_i_3__1_n_0\
    );
\pwm_out_buf0_carry_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1004088008800440"
    )
        port map (
      I0 => \pwm_out_buf0_carry_i_4__1_n_0\,
      I1 => \count_reg_n_0_[8]\,
      I2 => \half_duty_reg_n_0_[7]\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[6]\,
      I5 => \half_duty_reg_n_0_[6]\,
      O => \pwm_out_buf0_carry_i_1__1_n_0\
    );
\pwm_out_buf0_carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4200002800424200"
    )
        port map (
      I0 => \pwm_out_buf0_carry_i_5__0_n_0\,
      I1 => \half_duty_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \half_duty_reg_n_0_[3]\,
      I5 => \pwm_out_buf0_carry_i_6__0_n_0\,
      O => \pwm_out_buf0_carry_i_2__1_n_0\
    );
\pwm_out_buf0_carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090090090000006"
    )
        port map (
      I0 => \half_duty_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \half_duty_reg_n_0_[1]\,
      I4 => \half_duty_reg_n_0_[0]\,
      I5 => \count_reg_n_0_[1]\,
      O => \pwm_out_buf0_carry_i_3__1_n_0\
    );
\pwm_out_buf0_carry_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77777777777FFFFF"
    )
        port map (
      I0 => \half_duty_reg_n_0_[5]\,
      I1 => \half_duty_reg_n_0_[4]\,
      I2 => \half_duty_reg_n_0_[1]\,
      I3 => \half_duty_reg_n_0_[0]\,
      I4 => \half_duty_reg_n_0_[2]\,
      I5 => \half_duty_reg_n_0_[3]\,
      O => \pwm_out_buf0_carry_i_4__1_n_0\
    );
\pwm_out_buf0_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \half_duty_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[5]\,
      O => \pwm_out_buf0_carry_i_5__0_n_0\
    );
\pwm_out_buf0_carry_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \half_duty_reg_n_0_[1]\,
      I1 => \half_duty_reg_n_0_[0]\,
      I2 => \half_duty_reg_n_0_[2]\,
      O => \pwm_out_buf0_carry_i_6__0_n_0\
    );
pwm_out_buf1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_pwm_out_buf1_carry_CO_UNCONNECTED(3),
      CO(2) => pwm_out_buf_reg_0(0),
      CO(1) => pwm_out_buf1_carry_n_2,
      CO(0) => pwm_out_buf1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pwm_out_buf1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => \pwm_out_buf1_carry_i_1__1_n_0\,
      S(1) => \pwm_out_buf1_carry_i_2__1_n_0\,
      S(0) => \pwm_out_buf1_carry_i_3__1_n_0\
    );
\pwm_out_buf1_carry_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"21000021"
    )
        port map (
      I0 => \half_duty_reg_n_0_[6]\,
      I1 => \count_reg_n_0_[8]\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \half_duty_reg_n_0_[7]\,
      O => \pwm_out_buf1_carry_i_1__1_n_0\
    );
\pwm_out_buf1_carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \half_duty_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[5]\,
      I2 => \half_duty_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[4]\,
      I4 => \count_reg_n_0_[3]\,
      I5 => \half_duty_reg_n_0_[3]\,
      O => \pwm_out_buf1_carry_i_2__1_n_0\
    );
\pwm_out_buf1_carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8421000000008421"
    )
        port map (
      I0 => \half_duty_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \half_duty_reg_n_0_[0]\,
      I4 => \half_duty_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[2]\,
      O => \pwm_out_buf1_carry_i_3__1_n_0\
    );
pwm_out_buf_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => disabled,
      D => pwm_out_buf_reg_2,
      Q => \^motor_right_pwm_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MotionController_0_0_MotionController_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    servo_pwm_out : out STD_LOGIC;
    motor_left_pwm_out : out STD_LOGIC;
    motor_right_pwm_out : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_out_buf_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_out_buf_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_out_buf_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_out_buf_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_out_buf_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    pwm_out_buf_reg_4 : in STD_LOGIC;
    pwm_out_buf_reg_5 : in STD_LOGIC;
    pwm_out_buf_reg_6 : in STD_LOGIC;
    axi_wready_reg_0 : in STD_LOGIC;
    axi_arready_reg_0 : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MotionController_0_0_MotionController_v1_0_S00_AXI : entity is "MotionController_v1_0_S00_AXI";
end design_1_MotionController_0_0_MotionController_v1_0_S00_AXI;

architecture STRUCTURE of design_1_MotionController_0_0_MotionController_v1_0_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal duty : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal servo_position1 : STD_LOGIC;
  signal servo_position10_in : STD_LOGIC;
  signal \servo_position1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \servo_position1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \servo_position1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \servo_position1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \servo_position1_carry__0_n_3\ : STD_LOGIC;
  signal servo_position1_carry_i_1_n_0 : STD_LOGIC;
  signal servo_position1_carry_i_2_n_0 : STD_LOGIC;
  signal servo_position1_carry_i_3_n_0 : STD_LOGIC;
  signal servo_position1_carry_i_4_n_0 : STD_LOGIC;
  signal servo_position1_carry_i_5_n_0 : STD_LOGIC;
  signal servo_position1_carry_i_6_n_0 : STD_LOGIC;
  signal servo_position1_carry_i_7_n_0 : STD_LOGIC;
  signal servo_position1_carry_i_8_n_0 : STD_LOGIC;
  signal servo_position1_carry_n_0 : STD_LOGIC;
  signal servo_position1_carry_n_1 : STD_LOGIC;
  signal servo_position1_carry_n_2 : STD_LOGIC;
  signal servo_position1_carry_n_3 : STD_LOGIC;
  signal \servo_position1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \servo_position1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \servo_position1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \servo_position1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \servo_position1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal \slv_reg0__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal NLW_servo_position1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_servo_position1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_servo_position1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_servo_position1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_servo_position1_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_servo_position1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \slv_reg0[2]_i_3\ : label is "soft_lutpair23";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => SR(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => SR(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s00_axi_arready\,
      R => SR(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      I4 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      I4 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => SR(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => SR(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^s00_axi_awready\,
      R => SR(0)
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_reg_0,
      Q => s00_axi_bvalid,
      R => SR(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[0]\,
      I4 => \slv_reg1_reg_n_0_[0]\,
      I5 => \slv_reg0__0\(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[10]\,
      I4 => \slv_reg1_reg_n_0_[10]\,
      I5 => slv_reg0(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[11]\,
      I4 => \slv_reg1_reg_n_0_[11]\,
      I5 => slv_reg0(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[12]\,
      I4 => \slv_reg1_reg_n_0_[12]\,
      I5 => slv_reg0(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[13]\,
      I4 => \slv_reg1_reg_n_0_[13]\,
      I5 => slv_reg0(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[14]\,
      I4 => \slv_reg1_reg_n_0_[14]\,
      I5 => slv_reg0(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[15]\,
      I4 => \slv_reg1_reg_n_0_[15]\,
      I5 => slv_reg0(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(0),
      I4 => \slv_reg1_reg_n_0_[16]\,
      I5 => slv_reg0(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(1),
      I4 => \slv_reg1_reg_n_0_[17]\,
      I5 => slv_reg0(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(2),
      I4 => \slv_reg1_reg_n_0_[18]\,
      I5 => slv_reg0(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(3),
      I4 => \slv_reg1_reg_n_0_[19]\,
      I5 => slv_reg0(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[1]\,
      I4 => \slv_reg1_reg_n_0_[1]\,
      I5 => \^q\(0),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(4),
      I4 => \slv_reg1_reg_n_0_[20]\,
      I5 => slv_reg0(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(5),
      I4 => \slv_reg1_reg_n_0_[21]\,
      I5 => slv_reg0(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(6),
      I4 => \slv_reg1_reg_n_0_[22]\,
      I5 => slv_reg0(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(7),
      I4 => \slv_reg1_reg_n_0_[23]\,
      I5 => slv_reg0(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(8),
      I4 => \slv_reg1_reg_n_0_[24]\,
      I5 => slv_reg0(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(9),
      I4 => \slv_reg1_reg_n_0_[25]\,
      I5 => slv_reg0(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(10),
      I4 => \slv_reg1_reg_n_0_[26]\,
      I5 => slv_reg0(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(11),
      I4 => \slv_reg1_reg_n_0_[27]\,
      I5 => slv_reg0(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(12),
      I4 => \slv_reg1_reg_n_0_[28]\,
      I5 => slv_reg0(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(13),
      I4 => \slv_reg1_reg_n_0_[29]\,
      I5 => slv_reg0(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[2]\,
      I4 => \slv_reg1_reg_n_0_[2]\,
      I5 => \^q\(1),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(14),
      I4 => \slv_reg1_reg_n_0_[30]\,
      I5 => slv_reg0(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => duty(15),
      I4 => \slv_reg1_reg_n_0_[31]\,
      I5 => slv_reg0(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[3]\,
      I4 => \slv_reg1_reg_n_0_[3]\,
      I5 => slv_reg0(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[4]\,
      I4 => \slv_reg1_reg_n_0_[4]\,
      I5 => slv_reg0(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[5]\,
      I4 => \slv_reg1_reg_n_0_[5]\,
      I5 => slv_reg0(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[6]\,
      I4 => \slv_reg1_reg_n_0_[6]\,
      I5 => slv_reg0(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[7]\,
      I4 => \slv_reg1_reg_n_0_[7]\,
      I5 => slv_reg0(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[8]\,
      I4 => \slv_reg1_reg_n_0_[8]\,
      I5 => slv_reg0(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg2_reg_n_0_[9]\,
      I4 => \slv_reg1_reg_n_0_[9]\,
      I5 => slv_reg0(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => SR(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => SR(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => SR(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => SR(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => SR(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => SR(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => SR(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => SR(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => SR(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => SR(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => SR(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => SR(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => SR(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => SR(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => SR(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => SR(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => SR(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => SR(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => SR(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => SR(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => SR(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => SR(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => SR(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => SR(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => SR(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => SR(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => SR(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => SR(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => SR(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => SR(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => SR(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => SR(0)
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_reg_0,
      Q => \^s00_axi_rvalid\,
      R => SR(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => SR(0)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[10]\,
      I1 => \slv_reg1_reg_n_0_[11]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[8]\,
      I1 => \slv_reg1_reg_n_0_[9]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[6]\,
      I1 => \slv_reg1_reg_n_0_[7]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[5]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[2]\,
      I1 => \slv_reg1_reg_n_0_[3]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[1]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[6]\,
      I1 => \slv_reg1_reg_n_0_[7]\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[5]\,
      I1 => \slv_reg1_reg_n_0_[4]\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[2]\,
      I1 => \slv_reg1_reg_n_0_[3]\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[1]\,
      I1 => \slv_reg1_reg_n_0_[0]\,
      O => \i__carry_i_8_n_0\
    );
motor_left_driver: entity work.\design_1_MotionController_0_0_PWM_Driver__parameterized1\
     port map (
      Q(15 downto 0) => duty(15 downto 0),
      enable => enable,
      motor_left_pwm_out => motor_left_pwm_out,
      pwm_out_buf_reg_0(0) => pwm_out_buf_reg_0(0),
      pwm_out_buf_reg_1(0) => pwm_out_buf_reg_1(0),
      pwm_out_buf_reg_2 => pwm_out_buf_reg_5,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg0_reg[0]\(0) => \slv_reg0__0\(0)
    );
motor_right_driver: entity work.\design_1_MotionController_0_0_PWM_Driver__parameterized1_0\
     port map (
      Q(15) => \slv_reg2_reg_n_0_[15]\,
      Q(14) => \slv_reg2_reg_n_0_[14]\,
      Q(13) => \slv_reg2_reg_n_0_[13]\,
      Q(12) => \slv_reg2_reg_n_0_[12]\,
      Q(11) => \slv_reg2_reg_n_0_[11]\,
      Q(10) => \slv_reg2_reg_n_0_[10]\,
      Q(9) => \slv_reg2_reg_n_0_[9]\,
      Q(8) => \slv_reg2_reg_n_0_[8]\,
      Q(7) => \slv_reg2_reg_n_0_[7]\,
      Q(6) => \slv_reg2_reg_n_0_[6]\,
      Q(5) => \slv_reg2_reg_n_0_[5]\,
      Q(4) => \slv_reg2_reg_n_0_[4]\,
      Q(3) => \slv_reg2_reg_n_0_[3]\,
      Q(2) => \slv_reg2_reg_n_0_[2]\,
      Q(1) => \slv_reg2_reg_n_0_[1]\,
      Q(0) => \slv_reg2_reg_n_0_[0]\,
      enable => enable,
      motor_right_pwm_out => motor_right_pwm_out,
      pwm_out_buf_reg_0(0) => pwm_out_buf_reg_2(0),
      pwm_out_buf_reg_1(0) => pwm_out_buf_reg_3(0),
      pwm_out_buf_reg_2 => pwm_out_buf_reg_6,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg0_reg[0]\(0) => \slv_reg0__0\(0)
    );
servo_driver: entity work.design_1_MotionController_0_0_PWM_Driver
     port map (
      CO(0) => CO(0),
      Q(0) => \slv_reg0__0\(0),
      enable => enable,
      pwm_out_buf_reg_0(0) => pwm_out_buf_reg(0),
      pwm_out_buf_reg_1 => pwm_out_buf_reg_4,
      s00_axi_aclk => s00_axi_aclk,
      servo_pwm_out => servo_pwm_out,
      \slv_reg1_reg[10]\(0) => servo_position1,
      \slv_reg1_reg[10]_0\(0) => servo_position10_in,
      \slv_reg1_reg[11]\(11) => \slv_reg1_reg_n_0_[11]\,
      \slv_reg1_reg[11]\(10) => \slv_reg1_reg_n_0_[10]\,
      \slv_reg1_reg[11]\(9) => \slv_reg1_reg_n_0_[9]\,
      \slv_reg1_reg[11]\(8) => \slv_reg1_reg_n_0_[8]\,
      \slv_reg1_reg[11]\(7) => \slv_reg1_reg_n_0_[7]\,
      \slv_reg1_reg[11]\(6) => \slv_reg1_reg_n_0_[6]\,
      \slv_reg1_reg[11]\(5) => \slv_reg1_reg_n_0_[5]\,
      \slv_reg1_reg[11]\(4) => \slv_reg1_reg_n_0_[4]\,
      \slv_reg1_reg[11]\(3) => \slv_reg1_reg_n_0_[3]\,
      \slv_reg1_reg[11]\(2) => \slv_reg1_reg_n_0_[2]\,
      \slv_reg1_reg[11]\(1) => \slv_reg1_reg_n_0_[1]\,
      \slv_reg1_reg[11]\(0) => \slv_reg1_reg_n_0_[0]\
    );
servo_position1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => servo_position1_carry_n_0,
      CO(2) => servo_position1_carry_n_1,
      CO(1) => servo_position1_carry_n_2,
      CO(0) => servo_position1_carry_n_3,
      CYINIT => '0',
      DI(3) => servo_position1_carry_i_1_n_0,
      DI(2) => servo_position1_carry_i_2_n_0,
      DI(1) => servo_position1_carry_i_3_n_0,
      DI(0) => servo_position1_carry_i_4_n_0,
      O(3 downto 0) => NLW_servo_position1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => servo_position1_carry_i_5_n_0,
      S(2) => servo_position1_carry_i_6_n_0,
      S(1) => servo_position1_carry_i_7_n_0,
      S(0) => servo_position1_carry_i_8_n_0
    );
\servo_position1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => servo_position1_carry_n_0,
      CO(3 downto 2) => \NLW_servo_position1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => servo_position1,
      CO(0) => \servo_position1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \servo_position1_carry__0_i_1_n_0\,
      DI(0) => \servo_position1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_servo_position1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \servo_position1_carry__0_i_3_n_0\,
      S(0) => \servo_position1_carry__0_i_4_n_0\
    );
\servo_position1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[10]\,
      I1 => \slv_reg1_reg_n_0_[11]\,
      O => \servo_position1_carry__0_i_1_n_0\
    );
\servo_position1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[8]\,
      I1 => \slv_reg1_reg_n_0_[9]\,
      O => \servo_position1_carry__0_i_2_n_0\
    );
\servo_position1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[10]\,
      I1 => \slv_reg1_reg_n_0_[11]\,
      O => \servo_position1_carry__0_i_3_n_0\
    );
\servo_position1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[9]\,
      I1 => \slv_reg1_reg_n_0_[8]\,
      O => \servo_position1_carry__0_i_4_n_0\
    );
servo_position1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[6]\,
      I1 => \slv_reg1_reg_n_0_[7]\,
      O => servo_position1_carry_i_1_n_0
    );
servo_position1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[4]\,
      I1 => \slv_reg1_reg_n_0_[5]\,
      O => servo_position1_carry_i_2_n_0
    );
servo_position1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[2]\,
      I1 => \slv_reg1_reg_n_0_[3]\,
      O => servo_position1_carry_i_3_n_0
    );
servo_position1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[0]\,
      I1 => \slv_reg1_reg_n_0_[1]\,
      O => servo_position1_carry_i_4_n_0
    );
servo_position1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[6]\,
      I1 => \slv_reg1_reg_n_0_[7]\,
      O => servo_position1_carry_i_5_n_0
    );
servo_position1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[4]\,
      I1 => \slv_reg1_reg_n_0_[5]\,
      O => servo_position1_carry_i_6_n_0
    );
servo_position1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[2]\,
      I1 => \slv_reg1_reg_n_0_[3]\,
      O => servo_position1_carry_i_7_n_0
    );
servo_position1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[0]\,
      I1 => \slv_reg1_reg_n_0_[1]\,
      O => servo_position1_carry_i_8_n_0
    );
\servo_position1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \servo_position1_inferred__0/i__carry_n_0\,
      CO(2) => \servo_position1_inferred__0/i__carry_n_1\,
      CO(1) => \servo_position1_inferred__0/i__carry_n_2\,
      CO(0) => \servo_position1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_servo_position1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\servo_position1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \servo_position1_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_servo_position1_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => servo_position10_in,
      CO(0) => \servo_position1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_servo_position1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_1_n_0\,
      S(0) => \i__carry__0_i_2_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => p_1_in(2)
    );
\slv_reg0[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(2),
      D => s00_axi_wdata(0),
      Q => \slv_reg0__0\(0),
      R => SR(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => SR(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => SR(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => SR(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => SR(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => SR(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => SR(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => SR(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => SR(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => SR(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => SR(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(2),
      D => s00_axi_wdata(1),
      Q => \^q\(0),
      R => SR(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => SR(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => SR(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => SR(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => SR(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => SR(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => SR(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => SR(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => SR(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => SR(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => SR(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(2),
      D => s00_axi_wdata(2),
      Q => \^q\(1),
      R => SR(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => SR(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => SR(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(2),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => SR(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(2),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => SR(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(2),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => SR(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(2),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => SR(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(2),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => SR(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => SR(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => SR(0)
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => SR(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => SR(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => SR(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => SR(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => SR(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => SR(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => SR(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => SR(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => SR(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => SR(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => SR(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => SR(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => SR(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => SR(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => SR(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => SR(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => SR(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => SR(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => SR(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => SR(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => SR(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => SR(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => SR(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => SR(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => SR(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => SR(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => SR(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => SR(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => SR(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => SR(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => SR(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => SR(0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg2_reg_n_0_[0]\,
      R => SR(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg2_reg_n_0_[10]\,
      R => SR(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg2_reg_n_0_[11]\,
      R => SR(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg2_reg_n_0_[12]\,
      R => SR(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg2_reg_n_0_[13]\,
      R => SR(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg2_reg_n_0_[14]\,
      R => SR(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => SR(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => duty(0),
      R => SR(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => duty(1),
      R => SR(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => duty(2),
      R => SR(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => duty(3),
      R => SR(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg2_reg_n_0_[1]\,
      R => SR(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => duty(4),
      R => SR(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => duty(5),
      R => SR(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => duty(6),
      R => SR(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => duty(7),
      R => SR(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => duty(8),
      R => SR(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => duty(9),
      R => SR(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => duty(10),
      R => SR(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => duty(11),
      R => SR(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => duty(12),
      R => SR(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => duty(13),
      R => SR(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg2_reg_n_0_[2]\,
      R => SR(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => duty(14),
      R => SR(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => duty(15),
      R => SR(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg2_reg_n_0_[3]\,
      R => SR(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg2_reg_n_0_[4]\,
      R => SR(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg2_reg_n_0_[5]\,
      R => SR(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg2_reg_n_0_[6]\,
      R => SR(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg2_reg_n_0_[7]\,
      R => SR(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg2_reg_n_0_[8]\,
      R => SR(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg2_reg_n_0_[9]\,
      R => SR(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => SR(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => SR(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => SR(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => SR(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => SR(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => SR(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => SR(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => SR(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => SR(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => SR(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => SR(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => SR(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => SR(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => SR(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => SR(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => SR(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => SR(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => SR(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => SR(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => SR(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => SR(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => SR(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => SR(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => SR(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => SR(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => SR(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => SR(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => SR(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => SR(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => SR(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => SR(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MotionController_0_0_MotionController_v1_0 is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    motor_right_pwm_out : out STD_LOGIC;
    motor_left_pwm_out : out STD_LOGIC;
    servo_pwm_out : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    enable : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MotionController_0_0_MotionController_v1_0 : entity is "MotionController_v1_0";
end design_1_MotionController_0_0_MotionController_v1_0;

architecture STRUCTURE of design_1_MotionController_0_0_MotionController_v1_0 is
  signal MotionController_v1_0_S00_AXI_inst_n_42 : STD_LOGIC;
  signal MotionController_v1_0_S00_AXI_inst_n_44 : STD_LOGIC;
  signal MotionController_v1_0_S00_AXI_inst_n_46 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \motor_left_driver/pwm_out_buf0\ : STD_LOGIC;
  signal \^motor_left_pwm_out\ : STD_LOGIC;
  signal \motor_right_driver/pwm_out_buf0\ : STD_LOGIC;
  signal \^motor_right_pwm_out\ : STD_LOGIC;
  signal \pwm_out_buf_i_1__0_n_0\ : STD_LOGIC;
  signal \pwm_out_buf_i_1__1_n_0\ : STD_LOGIC;
  signal pwm_out_buf_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \servo_driver/pwm_out_buf0\ : STD_LOGIC;
  signal \^servo_pwm_out\ : STD_LOGIC;
  signal \slv_reg0[2]_i_1_n_0\ : STD_LOGIC;
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  motor_left_pwm_out <= \^motor_left_pwm_out\;
  motor_right_pwm_out <= \^motor_right_pwm_out\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  servo_pwm_out <= \^servo_pwm_out\;
MotionController_v1_0_S00_AXI_inst: entity work.design_1_MotionController_0_0_MotionController_v1_0_S00_AXI
     port map (
      CO(0) => MotionController_v1_0_S00_AXI_inst_n_42,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => \slv_reg0[2]_i_1_n_0\,
      axi_arready_reg_0 => axi_rvalid_i_1_n_0,
      axi_wready_reg_0 => axi_bvalid_i_1_n_0,
      enable => enable,
      motor_left_pwm_out => \^motor_left_pwm_out\,
      motor_right_pwm_out => \^motor_right_pwm_out\,
      pwm_out_buf_reg(0) => \servo_driver/pwm_out_buf0\,
      pwm_out_buf_reg_0(0) => MotionController_v1_0_S00_AXI_inst_n_44,
      pwm_out_buf_reg_1(0) => \motor_left_driver/pwm_out_buf0\,
      pwm_out_buf_reg_2(0) => MotionController_v1_0_S00_AXI_inst_n_46,
      pwm_out_buf_reg_3(0) => \motor_right_driver/pwm_out_buf0\,
      pwm_out_buf_reg_4 => pwm_out_buf_i_1_n_0,
      pwm_out_buf_reg_5 => \pwm_out_buf_i_1__0_n_0\,
      pwm_out_buf_reg_6 => \pwm_out_buf_i_1__1_n_0\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_arready => \^s_axi_arready\,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => \^s_axi_awready\,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rvalid => \^s00_axi_rvalid\,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => \^s_axi_wready\,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      servo_pwm_out => \^servo_pwm_out\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
pwm_out_buf_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => MotionController_v1_0_S00_AXI_inst_n_42,
      I1 => \servo_driver/pwm_out_buf0\,
      I2 => \^servo_pwm_out\,
      O => pwm_out_buf_i_1_n_0
    );
\pwm_out_buf_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => MotionController_v1_0_S00_AXI_inst_n_44,
      I1 => \motor_left_driver/pwm_out_buf0\,
      I2 => \^motor_left_pwm_out\,
      O => \pwm_out_buf_i_1__0_n_0\
    );
\pwm_out_buf_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => MotionController_v1_0_S00_AXI_inst_n_46,
      I1 => \motor_right_driver/pwm_out_buf0\,
      I2 => \^motor_right_pwm_out\,
      O => \pwm_out_buf_i_1__1_n_0\
    );
\slv_reg0[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \slv_reg0[2]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MotionController_0_0 is
  port (
    enable : in STD_LOGIC;
    motor_left_dir_out : out STD_LOGIC;
    motor_right_dir_out : out STD_LOGIC;
    motor_left_pwm_out : out STD_LOGIC;
    motor_right_pwm_out : out STD_LOGIC;
    servo_pwm_out : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_MotionController_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_MotionController_0_0 : entity is "design_1_MotionController_0_0,MotionController_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_MotionController_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_MotionController_0_0 : entity is "MotionController_v1_0,Vivado 2017.4";
end design_1_MotionController_0_0;

architecture STRUCTURE of design_1_MotionController_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_MotionController_0_0_MotionController_v1_0
     port map (
      Q(1) => motor_left_dir_out,
      Q(0) => motor_right_dir_out,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      enable => enable,
      motor_left_pwm_out => motor_left_pwm_out,
      motor_right_pwm_out => motor_right_pwm_out,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      servo_pwm_out => servo_pwm_out
    );
end STRUCTURE;
