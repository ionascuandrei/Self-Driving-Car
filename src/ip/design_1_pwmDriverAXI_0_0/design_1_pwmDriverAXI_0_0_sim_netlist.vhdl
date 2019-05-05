-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sun May  5 14:02:15 2019
-- Host        : catabit-UX430UAR running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/catabit/Zybo/SDCar/SDCarVivado/SDCarVivado.srcs/sources_1/bd/design_1/ip/design_1_pwmDriverAXI_0_0/design_1_pwmDriverAXI_0_0_sim_netlist.vhdl
-- Design      : design_1_pwmDriverAXI_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    pwm_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    axi_wready_reg_0 : in STD_LOGIC;
    axi_arready_reg_0 : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset_n : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0_S00_AXI : entity is "pwmRgbLed_v1_0_S00_AXI";
end design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0_S00_AXI;

architecture STRUCTURE of design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0_S00_AXI is
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \count[0][5]_i_2_n_0\ : STD_LOGIC;
  signal \count[0][8]_i_2_n_0\ : STD_LOGIC;
  signal \count[0][8]_i_3_n_0\ : STD_LOGIC;
  signal \count[0][8]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_9\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count[1][5]_i_2_n_0\ : STD_LOGIC;
  signal \count[1][8]_i_2_n_0\ : STD_LOGIC;
  signal \count[1][8]_i_3_n_0\ : STD_LOGIC;
  signal \count[1][8]_i_4_n_0\ : STD_LOGIC;
  signal \count[1][8]_i_5_n_0\ : STD_LOGIC;
  signal \count[1]_11\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count[2][5]_i_2_n_0\ : STD_LOGIC;
  signal \count[2][8]_i_2_n_0\ : STD_LOGIC;
  signal \count[2][8]_i_3_n_0\ : STD_LOGIC;
  signal \count[2]_10\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_reg[0]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_reg[1]_5\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_reg[2]_8\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \half_duty[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty[0][7]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][2]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][2]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][2]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][2]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][3]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][4]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][5]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][5]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][5]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][5]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][5]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][6]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][6]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][7]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][7]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][7]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][7]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][7]_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new[0][7]_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][2]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][2]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][2]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][4]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][5]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][5]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][5]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][5]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][5]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][6]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][6]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][7]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][7]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][7]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][7]_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new[1][7]_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][2]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][2]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][2]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][2]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][3]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][4]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][5]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][5]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][5]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][5]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][5]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][5]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][6]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][6]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][6]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][7]_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][7]_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][7]_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][7]_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][7]_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new[2][7]_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]10_in\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \half_duty_new_reg[0]4\ : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal \half_duty_new_reg[0]4_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_9_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_i_9_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_9_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_9_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_i_9_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__2_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_10_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_11_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_11_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_11_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_11_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_12_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_13_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_14_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_15_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_16_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_17_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_18_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_19_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_20_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_9_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_9_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_i_9_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]4_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__2_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry__3_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]50_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6\ : STD_LOGIC_VECTOR ( 18 downto 8 );
  signal \half_duty_new_reg[0]6__26_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__0_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__0_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__0_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__0_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__1_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__1_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__1_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry__1_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__26_carry_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__0_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__1_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__2_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry__2_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6__53_carry_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__0_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__0_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__0_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__0_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__1_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry__1_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[0]6_carry_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[0]7_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0][6]_i_2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[0][6]_i_2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[0]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \half_duty_new_reg[1]10_in\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \half_duty_new_reg[1]4\ : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal \half_duty_new_reg[1]4_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_9_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_i_9_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_9_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_9_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_i_9_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__2_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_10_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_11_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_11_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_11_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_11_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_12_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_13_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_14_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_15_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_16_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_17_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_18_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_19_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_20_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_9_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_9_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_i_9_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]4_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__2_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry__3_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]50_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6\ : STD_LOGIC_VECTOR ( 18 downto 8 );
  signal \half_duty_new_reg[1]6__26_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__0_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__0_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__0_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__0_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__1_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__1_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__1_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry__1_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__26_carry_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__0_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__1_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__2_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry__2_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6__53_carry_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__0_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__0_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__0_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__0_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__1_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry__1_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[1]6_carry_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[1]7_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1][6]_i_2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[1][6]_i_2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[1]_3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \half_duty_new_reg[2]10_in\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \half_duty_new_reg[2]4\ : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal \half_duty_new_reg[2]4_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_9_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_i_9_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_9_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_9_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_i_9_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__2_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_10_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_11_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_11_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_11_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_11_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_12_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_13_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_14_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_15_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_16_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_17_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_18_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_19_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_20_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_9_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_9_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_9_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_i_9_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]4_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__2_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry__3_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]50_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6\ : STD_LOGIC_VECTOR ( 18 downto 8 );
  signal \half_duty_new_reg[2]6__26_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__0_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__0_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__0_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__0_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__1_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__1_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__1_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry__1_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__26_carry_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__0_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__1_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__2_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry__2_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6__53_carry_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__0_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__0_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__0_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__0_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__1_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__1_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__1_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry__1_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry_n_4\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry_n_5\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry_n_6\ : STD_LOGIC;
  signal \half_duty_new_reg[2]6_carry_n_7\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__0_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__0_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__0_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__0_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry_i_1_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry_i_2_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry_i_3_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry_i_4_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry_i_5_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry_i_6_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry_i_7_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry_i_8_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry_n_0\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry_n_2\ : STD_LOGIC;
  signal \half_duty_new_reg[2]7_carry_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2][6]_i_2_n_1\ : STD_LOGIC;
  signal \half_duty_new_reg[2][6]_i_2_n_3\ : STD_LOGIC;
  signal \half_duty_new_reg[2]_6\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \half_duty_reg[0]0\ : STD_LOGIC;
  signal \half_duty_reg[0]_2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \half_duty_reg[1]0\ : STD_LOGIC;
  signal \half_duty_reg[1]_4\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \half_duty_reg[2]0\ : STD_LOGIC;
  signal \half_duty_reg[2]_7\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \^pwm_out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pwm_out0 : STD_LOGIC;
  signal pwm_out01_in : STD_LOGIC;
  signal pwm_out04_in : STD_LOGIC;
  signal pwm_out0_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_out0_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_out0_carry_n_2 : STD_LOGIC;
  signal pwm_out0_carry_n_3 : STD_LOGIC;
  signal \pwm_out0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \pwm_out0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \pwm_out0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \pwm_out0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal pwm_out1 : STD_LOGIC;
  signal pwm_out10_out : STD_LOGIC;
  signal pwm_out11_out : STD_LOGIC;
  signal pwm_out1_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_out1_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_out1_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_out1_carry_n_2 : STD_LOGIC;
  signal pwm_out1_carry_n_3 : STD_LOGIC;
  signal \pwm_out1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \pwm_out1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \pwm_out1_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \pwm_out1_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \pwm_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_out[2]_i_2_n_0\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal \NLW_half_duty_new_reg[0]4_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[0]4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[0]4_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[0]4_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[0]50_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[0]50_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_half_duty_new_reg[0]50_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[0]50_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[0]6__26_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_half_duty_new_reg[0]6__26_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_half_duty_new_reg[0]6__53_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_half_duty_new_reg[0]6__53_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[0]6__53_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new_reg[0]6_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[0]6_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new_reg[0]7_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[0]7_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[0]7_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[0]7_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[0][6]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[0][6]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new_reg[1]4_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[1]4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[1]4_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[1]4_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[1]50_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[1]50_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_half_duty_new_reg[1]50_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[1]50_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[1]6__26_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_half_duty_new_reg[1]6__26_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_half_duty_new_reg[1]6__53_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_half_duty_new_reg[1]6__53_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[1]6__53_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new_reg[1]6_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[1]6_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new_reg[1]7_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[1]7_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[1]7_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[1]7_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[1][6]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[1][6]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new_reg[2]4_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[2]4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[2]4_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[2]4_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[2]50_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[2]50_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_half_duty_new_reg[2]50_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[2]50_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[2]6__26_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_half_duty_new_reg[2]6__26_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_half_duty_new_reg[2]6__53_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_half_duty_new_reg[2]6__53_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[2]6__53_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new_reg[2]6_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[2]6_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_duty_new_reg[2]7_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[2]7_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[2]7_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[2]7_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_duty_new_reg[2][6]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_half_duty_new_reg[2][6]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_pwm_out0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwm_out0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out0_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pwm_out0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out0_inferred__1/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pwm_out0_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pwm_out1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwm_out1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out1_inferred__1/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pwm_out1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out1_inferred__3/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pwm_out1_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[0][0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count[0][1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count[0][2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[0][3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[0][5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count[0][5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[0][6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count[0][7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[0][8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[1][0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[1][1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[1][2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[1][3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[1][5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[1][6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[1][7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[1][8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[2][0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count[2][1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count[2][2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[2][3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[2][5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count[2][6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count[2][7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[2][8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \half_duty[0][7]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \half_duty[0][7]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \half_duty[2][7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \half_duty_new[0][0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \half_duty_new[0][2]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \half_duty_new[0][6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \half_duty_new[0][7]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \half_duty_new[1][0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \half_duty_new[1][2]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \half_duty_new[1][3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \half_duty_new[1][7]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \half_duty_new[2][2]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \half_duty_new[2][3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \half_duty_new[2][5]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \half_duty_new[2][7]_i_2\ : label is "soft_lutpair14";
  attribute HLUTNM : string;
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry__0_i_1\ : label is "lutpair6";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry__0_i_2\ : label is "lutpair5";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry__0_i_3\ : label is "lutpair4";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry__0_i_4\ : label is "lutpair3";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry__0_i_6\ : label is "lutpair6";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry__0_i_7\ : label is "lutpair5";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry__0_i_8\ : label is "lutpair4";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry_i_1\ : label is "lutpair2";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry_i_2\ : label is "lutpair1";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry_i_3\ : label is "lutpair0";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry_i_5\ : label is "lutpair3";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry_i_6\ : label is "lutpair2";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry_i_7\ : label is "lutpair1";
  attribute HLUTNM of \half_duty_new_reg[0]6__53_carry_i_8\ : label is "lutpair0";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry__0_i_1\ : label is "lutpair13";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry__0_i_2\ : label is "lutpair12";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry__0_i_3\ : label is "lutpair11";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry__0_i_4\ : label is "lutpair10";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry__0_i_6\ : label is "lutpair13";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry__0_i_7\ : label is "lutpair12";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry__0_i_8\ : label is "lutpair11";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry_i_1\ : label is "lutpair9";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry_i_2\ : label is "lutpair8";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry_i_3\ : label is "lutpair7";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry_i_5\ : label is "lutpair10";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry_i_6\ : label is "lutpair9";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry_i_7\ : label is "lutpair8";
  attribute HLUTNM of \half_duty_new_reg[1]6__53_carry_i_8\ : label is "lutpair7";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry__0_i_1\ : label is "lutpair20";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry__0_i_2\ : label is "lutpair19";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry__0_i_3\ : label is "lutpair18";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry__0_i_4\ : label is "lutpair17";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry__0_i_6\ : label is "lutpair20";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry__0_i_7\ : label is "lutpair19";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry__0_i_8\ : label is "lutpair18";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry_i_1\ : label is "lutpair16";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry_i_2\ : label is "lutpair15";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry_i_3\ : label is "lutpair14";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry_i_5\ : label is "lutpair17";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry_i_6\ : label is "lutpair16";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry_i_7\ : label is "lutpair15";
  attribute HLUTNM of \half_duty_new_reg[2]6__53_carry_i_8\ : label is "lutpair14";
  attribute SOFT_HLUTNM of \i__carry_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i__carry_i_5__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i__carry_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i__carry_i_6__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of pwm_out0_carry_i_5 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of pwm_out0_carry_i_6 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair17";
begin
  pwm_out(2 downto 0) <= \^pwm_out\(2 downto 0);
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
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
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
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
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
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
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
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(0),
      I1 => slv_reg3(0),
      I2 => slv_reg0(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(10),
      I1 => slv_reg3(10),
      I2 => slv_reg0(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(11),
      I1 => slv_reg3(11),
      I2 => slv_reg0(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(12),
      I1 => slv_reg3(12),
      I2 => slv_reg0(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(13),
      I1 => slv_reg3(13),
      I2 => slv_reg0(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(14),
      I1 => slv_reg3(14),
      I2 => slv_reg0(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(15),
      I1 => slv_reg3(15),
      I2 => slv_reg0(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(16),
      I1 => slv_reg3(16),
      I2 => slv_reg0(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(17),
      I1 => slv_reg3(17),
      I2 => slv_reg0(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(18),
      I1 => slv_reg3(18),
      I2 => slv_reg0(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(19),
      I1 => slv_reg3(19),
      I2 => slv_reg0(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(1),
      I1 => slv_reg3(1),
      I2 => slv_reg0(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(20),
      I1 => slv_reg3(20),
      I2 => slv_reg0(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(21),
      I1 => slv_reg3(21),
      I2 => slv_reg0(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(22),
      I1 => slv_reg3(22),
      I2 => slv_reg0(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(23),
      I1 => slv_reg3(23),
      I2 => slv_reg0(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(24),
      I1 => slv_reg3(24),
      I2 => slv_reg0(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(25),
      I1 => slv_reg3(25),
      I2 => slv_reg0(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(26),
      I1 => slv_reg3(26),
      I2 => slv_reg0(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(27),
      I1 => slv_reg3(27),
      I2 => slv_reg0(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(28),
      I1 => slv_reg3(28),
      I2 => slv_reg0(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(29),
      I1 => slv_reg3(29),
      I2 => slv_reg0(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(2),
      I1 => slv_reg3(2),
      I2 => slv_reg0(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(30),
      I1 => slv_reg3(30),
      I2 => slv_reg0(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(31),
      I1 => slv_reg3(31),
      I2 => slv_reg0(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(3),
      I1 => slv_reg3(3),
      I2 => slv_reg0(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(4),
      I1 => slv_reg3(4),
      I2 => slv_reg0(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(5),
      I1 => slv_reg3(5),
      I2 => slv_reg0(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(6),
      I1 => slv_reg3(6),
      I2 => slv_reg0(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(7),
      I1 => slv_reg3(7),
      I2 => slv_reg0(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(8),
      I1 => slv_reg3(8),
      I2 => slv_reg0(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(9),
      I1 => slv_reg3(9),
      I2 => slv_reg0(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(9),
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
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
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
\count[0][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count[0][8]_i_3_n_0\,
      I1 => \count_reg[0]_0\(0),
      O => \count[0]_9\(0)
    );
\count[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \count_reg[0]_0\(1),
      I1 => \count_reg[0]_0\(0),
      I2 => \count[0][8]_i_3_n_0\,
      O => \count[0]_9\(1)
    );
\count[0][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \count_reg[0]_0\(0),
      I1 => \count_reg[0]_0\(1),
      I2 => \count_reg[0]_0\(2),
      I3 => \count[0][8]_i_3_n_0\,
      O => \count[0]_9\(2)
    );
\count[0][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \count[0][8]_i_3_n_0\,
      I1 => \count_reg[0]_0\(2),
      I2 => \count_reg[0]_0\(1),
      I3 => \count_reg[0]_0\(0),
      I4 => \count_reg[0]_0\(3),
      O => \count[0]_9\(3)
    );
\count[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \count[0][8]_i_3_n_0\,
      I1 => \count_reg[0]_0\(0),
      I2 => \count_reg[0]_0\(1),
      I3 => \count_reg[0]_0\(2),
      I4 => \count_reg[0]_0\(3),
      I5 => \count_reg[0]_0\(4),
      O => \count[0]_9\(4)
    );
\count[0][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \count[0][5]_i_2_n_0\,
      I1 => \count[0][8]_i_3_n_0\,
      I2 => \count_reg[0]_0\(5),
      O => \count[0]_9\(5)
    );
\count[0][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \count_reg[0]_0\(0),
      I1 => \count_reg[0]_0\(1),
      I2 => \count_reg[0]_0\(2),
      I3 => \count_reg[0]_0\(3),
      I4 => \count_reg[0]_0\(4),
      O => \count[0][5]_i_2_n_0\
    );
\count[0][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \count[0][8]_i_2_n_0\,
      I1 => \count[0][8]_i_3_n_0\,
      I2 => \count_reg[0]_0\(6),
      O => \count[0]_9\(6)
    );
\count[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \count[0][8]_i_2_n_0\,
      I1 => \count_reg[0]_0\(6),
      I2 => \count[0][8]_i_3_n_0\,
      I3 => \count_reg[0]_0\(7),
      O => \count[0]_9\(7)
    );
\count[0][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \count_reg[0]_0\(6),
      I1 => \count[0][8]_i_2_n_0\,
      I2 => \count_reg[0]_0\(7),
      I3 => \count[0][8]_i_3_n_0\,
      I4 => \count_reg[0]_0\(8),
      O => \count[0]_9\(8)
    );
\count[0][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count_reg[0]_0\(5),
      I1 => \count_reg[0]_0\(4),
      I2 => \count_reg[0]_0\(3),
      I3 => \count_reg[0]_0\(2),
      I4 => \count_reg[0]_0\(1),
      I5 => \count_reg[0]_0\(0),
      O => \count[0][8]_i_2_n_0\
    );
\count[0][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFFFF"
    )
        port map (
      I0 => \half_duty[0][7]_i_2_n_0\,
      I1 => \count_reg[0]_0\(0),
      I2 => \count_reg[0]_0\(1),
      I3 => \count_reg[0]_0\(2),
      I4 => \count_reg[0]_0\(4),
      I5 => \count[0][8]_i_4_n_0\,
      O => \count[0][8]_i_3_n_0\
    );
\count[0][8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg[0]_0\(6),
      I1 => \count_reg[0]_0\(8),
      O => \count[0][8]_i_4_n_0\
    );
\count[1][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count[1][8]_i_3_n_0\,
      I1 => \count_reg[1]_5\(0),
      O => \count[1]_11\(0)
    );
\count[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \count[1][8]_i_3_n_0\,
      I1 => \count_reg[1]_5\(0),
      I2 => \count_reg[1]_5\(1),
      O => \count[1]_11\(1)
    );
\count[1][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \count[1][8]_i_3_n_0\,
      I1 => \count_reg[1]_5\(0),
      I2 => \count_reg[1]_5\(1),
      I3 => \count_reg[1]_5\(2),
      O => \count[1]_11\(2)
    );
\count[1][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \count[1][8]_i_3_n_0\,
      I1 => \count_reg[1]_5\(1),
      I2 => \count_reg[1]_5\(0),
      I3 => \count_reg[1]_5\(2),
      I4 => \count_reg[1]_5\(3),
      O => \count[1]_11\(3)
    );
\count[1][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \count[1][8]_i_3_n_0\,
      I1 => \count_reg[1]_5\(3),
      I2 => \count_reg[1]_5\(2),
      I3 => \count_reg[1]_5\(0),
      I4 => \count_reg[1]_5\(1),
      I5 => \count_reg[1]_5\(4),
      O => \count[1]_11\(4)
    );
\count[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \count[1][5]_i_2_n_0\,
      I1 => \count[1][8]_i_3_n_0\,
      I2 => \count_reg[1]_5\(5),
      O => \count[1]_11\(5)
    );
\count[1][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \count_reg[1]_5\(4),
      I1 => \count_reg[1]_5\(3),
      I2 => \count_reg[1]_5\(2),
      I3 => \count_reg[1]_5\(0),
      I4 => \count_reg[1]_5\(1),
      O => \count[1][5]_i_2_n_0\
    );
\count[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \count[1][8]_i_2_n_0\,
      I1 => \count[1][8]_i_3_n_0\,
      I2 => \count_reg[1]_5\(6),
      O => \count[1]_11\(6)
    );
\count[1][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D020"
    )
        port map (
      I0 => \count_reg[1]_5\(6),
      I1 => \count[1][8]_i_2_n_0\,
      I2 => \count[1][8]_i_3_n_0\,
      I3 => \count_reg[1]_5\(7),
      O => \count[1]_11\(7)
    );
\count[1][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \count[1][8]_i_2_n_0\,
      I1 => \count_reg[1]_5\(6),
      I2 => \count_reg[1]_5\(7),
      I3 => \count[1][8]_i_3_n_0\,
      I4 => \count_reg[1]_5\(8),
      O => \count[1]_11\(8)
    );
\count[1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \count_reg[1]_5\(1),
      I1 => \count_reg[1]_5\(0),
      I2 => \count_reg[1]_5\(2),
      I3 => \count_reg[1]_5\(3),
      I4 => \count_reg[1]_5\(4),
      I5 => \count_reg[1]_5\(5),
      O => \count[1][8]_i_2_n_0\
    );
\count[1][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \count[0][8]_i_4_n_0\,
      I1 => \count_reg[0]_0\(3),
      I2 => \count_reg[0]_0\(7),
      I3 => \count[1][8]_i_4_n_0\,
      I4 => \count[1][8]_i_5_n_0\,
      I5 => \count_reg[0]_0\(5),
      O => \count[1][8]_i_3_n_0\
    );
\count[1][8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \count_reg[0]_0\(1),
      I1 => \count_reg[0]_0\(0),
      O => \count[1][8]_i_4_n_0\
    );
\count[1][8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \count_reg[0]_0\(4),
      I1 => \count_reg[0]_0\(2),
      O => \count[1][8]_i_5_n_0\
    );
\count[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count[2][8]_i_3_n_0\,
      I1 => \count_reg[2]_8\(0),
      O => \count[2]_10\(0)
    );
\count[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \count[2][8]_i_3_n_0\,
      I1 => \count_reg[2]_8\(0),
      I2 => \count_reg[2]_8\(1),
      O => \count[2]_10\(1)
    );
\count[2][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \count[2][8]_i_3_n_0\,
      I1 => \count_reg[2]_8\(0),
      I2 => \count_reg[2]_8\(1),
      I3 => \count_reg[2]_8\(2),
      O => \count[2]_10\(2)
    );
\count[2][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \count[2][8]_i_3_n_0\,
      I1 => \count_reg[2]_8\(1),
      I2 => \count_reg[2]_8\(0),
      I3 => \count_reg[2]_8\(2),
      I4 => \count_reg[2]_8\(3),
      O => \count[2]_10\(3)
    );
\count[2][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \count[2][8]_i_3_n_0\,
      I1 => \count_reg[2]_8\(3),
      I2 => \count_reg[2]_8\(2),
      I3 => \count_reg[2]_8\(0),
      I4 => \count_reg[2]_8\(1),
      I5 => \count_reg[2]_8\(4),
      O => \count[2]_10\(4)
    );
\count[2][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \count[2][5]_i_2_n_0\,
      I1 => \count[2][8]_i_3_n_0\,
      I2 => \count_reg[2]_8\(5),
      O => \count[2]_10\(5)
    );
\count[2][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \count_reg[2]_8\(4),
      I1 => \count_reg[2]_8\(3),
      I2 => \count_reg[2]_8\(2),
      I3 => \count_reg[2]_8\(0),
      I4 => \count_reg[2]_8\(1),
      O => \count[2][5]_i_2_n_0\
    );
\count[2][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \count[2][8]_i_2_n_0\,
      I1 => \count[2][8]_i_3_n_0\,
      I2 => \count_reg[2]_8\(6),
      O => \count[2]_10\(6)
    );
\count[2][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D020"
    )
        port map (
      I0 => \count_reg[2]_8\(6),
      I1 => \count[2][8]_i_2_n_0\,
      I2 => \count[2][8]_i_3_n_0\,
      I3 => \count_reg[2]_8\(7),
      O => \count[2]_10\(7)
    );
\count[2][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \count[2][8]_i_2_n_0\,
      I1 => \count_reg[2]_8\(6),
      I2 => \count_reg[2]_8\(7),
      I3 => \count[2][8]_i_3_n_0\,
      I4 => \count_reg[2]_8\(8),
      O => \count[2]_10\(8)
    );
\count[2][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \count_reg[2]_8\(1),
      I1 => \count_reg[2]_8\(0),
      I2 => \count_reg[2]_8\(2),
      I3 => \count_reg[2]_8\(3),
      I4 => \count_reg[2]_8\(4),
      I5 => \count_reg[2]_8\(5),
      O => \count[2][8]_i_2_n_0\
    );
\count[2][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => \count_reg[0]_0\(7),
      I1 => \count_reg[0]_0\(5),
      I2 => \count_reg[0]_0\(3),
      I3 => \count_reg[0]_0\(6),
      I4 => \count_reg[0]_0\(8),
      I5 => \half_duty[2][7]_i_2_n_0\,
      O => \count[2][8]_i_3_n_0\
    );
\count_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[0]_9\(0),
      Q => \count_reg[0]_0\(0)
    );
\count_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[0]_9\(1),
      Q => \count_reg[0]_0\(1)
    );
\count_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[0]_9\(2),
      Q => \count_reg[0]_0\(2)
    );
\count_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[0]_9\(3),
      Q => \count_reg[0]_0\(3)
    );
\count_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[0]_9\(4),
      Q => \count_reg[0]_0\(4)
    );
\count_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[0]_9\(5),
      Q => \count_reg[0]_0\(5)
    );
\count_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[0]_9\(6),
      Q => \count_reg[0]_0\(6)
    );
\count_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[0]_9\(7),
      Q => \count_reg[0]_0\(7)
    );
\count_reg[0][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[0]_9\(8),
      Q => \count_reg[0]_0\(8)
    );
\count_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[1]_11\(0),
      Q => \count_reg[1]_5\(0)
    );
\count_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[1]_11\(1),
      Q => \count_reg[1]_5\(1)
    );
\count_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[1]_11\(2),
      Q => \count_reg[1]_5\(2)
    );
\count_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[1]_11\(3),
      Q => \count_reg[1]_5\(3)
    );
\count_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[1]_11\(4),
      Q => \count_reg[1]_5\(4)
    );
\count_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[1]_11\(5),
      Q => \count_reg[1]_5\(5)
    );
\count_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[1]_11\(6),
      Q => \count_reg[1]_5\(6)
    );
\count_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[1]_11\(7),
      Q => \count_reg[1]_5\(7)
    );
\count_reg[1][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[1]_11\(8),
      Q => \count_reg[1]_5\(8)
    );
\count_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[2]_10\(0),
      Q => \count_reg[2]_8\(0)
    );
\count_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[2]_10\(1),
      Q => \count_reg[2]_8\(1)
    );
\count_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[2]_10\(2),
      Q => \count_reg[2]_8\(2)
    );
\count_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[2]_10\(3),
      Q => \count_reg[2]_8\(3)
    );
\count_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[2]_10\(4),
      Q => \count_reg[2]_8\(4)
    );
\count_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[2]_10\(5),
      Q => \count_reg[2]_8\(5)
    );
\count_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[2]_10\(6),
      Q => \count_reg[2]_8\(6)
    );
\count_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[2]_10\(7),
      Q => \count_reg[2]_8\(7)
    );
\count_reg[2][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \count[2]_10\(8),
      Q => \count_reg[2]_8\(8)
    );
\half_duty[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \half_duty[0][7]_i_2_n_0\,
      I1 => reset_n,
      I2 => \count_reg[0]_0\(4),
      I3 => \count_reg[0]_0\(8),
      I4 => \count_reg[0]_0\(6),
      I5 => \half_duty[0][7]_i_3_n_0\,
      O => \half_duty_reg[0]0\
    );
\half_duty[0][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \count_reg[0]_0\(7),
      I1 => \count_reg[0]_0\(5),
      I2 => \count_reg[0]_0\(3),
      O => \half_duty[0][7]_i_2_n_0\
    );
\half_duty[0][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \count_reg[0]_0\(0),
      I1 => \count_reg[0]_0\(1),
      I2 => \count_reg[0]_0\(2),
      O => \half_duty[0][7]_i_3_n_0\
    );
\half_duty[1][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \half_duty[1][7]_i_2_n_0\,
      I1 => reset_n,
      I2 => \count_reg[0]_0\(7),
      I3 => \count_reg[0]_0\(3),
      I4 => \count_reg[0]_0\(5),
      O => \half_duty_reg[1]0\
    );
\half_duty[1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \count_reg[0]_0\(6),
      I1 => \count_reg[0]_0\(8),
      I2 => \count_reg[0]_0\(4),
      I3 => \count_reg[0]_0\(2),
      I4 => \count_reg[0]_0\(0),
      I5 => \count_reg[0]_0\(1),
      O => \half_duty[1][7]_i_2_n_0\
    );
\half_duty[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \count_reg[0]_0\(8),
      I1 => reset_n,
      I2 => \count_reg[0]_0\(6),
      I3 => \half_duty[2][7]_i_2_n_0\,
      I4 => \half_duty[0][7]_i_2_n_0\,
      O => \half_duty_reg[2]0\
    );
\half_duty[2][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \count_reg[0]_0\(1),
      I1 => \count_reg[0]_0\(0),
      I2 => \count_reg[0]_0\(2),
      I3 => \count_reg[0]_0\(4),
      O => \half_duty[2][7]_i_2_n_0\
    );
\half_duty_new[0][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4700B8"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry_n_4\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6\(8),
      I3 => \half_duty_new_reg[0]4_carry__2_n_0\,
      I4 => \half_duty_new[0][2]_i_4_n_0\,
      O => \half_duty_new_reg[0]10_in\(0)
    );
\half_duty_new[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D20FD22DF02DF0F0"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[0][6]_i_2_n_1\,
      I2 => \half_duty_new[0][2]_i_3_n_0\,
      I3 => \half_duty_new_reg[0]4_carry__2_n_0\,
      I4 => \half_duty_new[0][2]_i_5_n_0\,
      I5 => \half_duty_new[0][2]_i_4_n_0\,
      O => \half_duty_new[0][1]_i_1_n_0\
    );
\half_duty_new[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"636969C9696969CC"
    )
        port map (
      I0 => \half_duty_new[0][7]_i_2_n_0\,
      I1 => \half_duty_new[0][2]_i_2_n_0\,
      I2 => \half_duty_new_reg[0]4_carry__2_n_0\,
      I3 => \half_duty_new[0][2]_i_3_n_0\,
      I4 => \half_duty_new[0][2]_i_4_n_0\,
      I5 => \half_duty_new[0][2]_i_5_n_0\,
      O => \half_duty_new[0][2]_i_1_n_0\
    );
\half_duty_new[0][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(3),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]6__53_carry__0_n_5\,
      I3 => \half_duty_new_reg[0]7\,
      I4 => \half_duty_new_reg[0]6\(11),
      O => \half_duty_new[0][2]_i_2_n_0\
    );
\half_duty_new[0][2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(2),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]6__53_carry__0_n_6\,
      I3 => \half_duty_new_reg[0]7\,
      I4 => \half_duty_new_reg[0]6\(10),
      O => \half_duty_new[0][2]_i_3_n_0\
    );
\half_duty_new[0][2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(1),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]6__53_carry__0_n_7\,
      I3 => \half_duty_new_reg[0]7\,
      I4 => \half_duty_new_reg[0]6\(9),
      O => \half_duty_new[0][2]_i_4_n_0\
    );
\half_duty_new[0][2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry_n_4\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6\(8),
      O => \half_duty_new[0][2]_i_5_n_0\
    );
\half_duty_new[0][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[0][6]_i_2_n_1\,
      I2 => \half_duty_new[0][3]_i_2_n_0\,
      I3 => \half_duty_new_reg[0]10_in\(3),
      O => \half_duty_new[0][3]_i_1_n_0\
    );
\half_duty_new[0][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20040005"
    )
        port map (
      I0 => \half_duty_new[0][2]_i_2_n_0\,
      I1 => \half_duty_new_reg[0]4_carry__2_n_0\,
      I2 => \half_duty_new[0][2]_i_3_n_0\,
      I3 => \half_duty_new[0][2]_i_4_n_0\,
      I4 => \half_duty_new[0][2]_i_5_n_0\,
      O => \half_duty_new[0][3]_i_2_n_0\
    );
\half_duty_new[0][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0100FE"
    )
        port map (
      I0 => \half_duty_new[0][2]_i_3_n_0\,
      I1 => \half_duty_new_reg[0]4_carry_i_4_n_0\,
      I2 => \half_duty_new[0][2]_i_2_n_0\,
      I3 => \half_duty_new_reg[0]4_carry__2_n_0\,
      I4 => \half_duty_new_reg[0]4_carry_i_10_n_0\,
      O => \half_duty_new_reg[0]10_in\(3)
    );
\half_duty_new[0][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[0][6]_i_2_n_1\,
      I2 => \half_duty_new[0][4]_i_2_n_0\,
      I3 => \half_duty_new_reg[0]10_in\(4),
      O => \half_duty_new[0][4]_i_1_n_0\
    );
\half_duty_new[0][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000405"
    )
        port map (
      I0 => \half_duty_new_reg[0]4_carry_i_10_n_0\,
      I1 => \half_duty_new_reg[0]4_carry__2_n_0\,
      I2 => \half_duty_new[0][2]_i_2_n_0\,
      I3 => \half_duty_new[0][2]_i_5_n_0\,
      I4 => \half_duty_new[0][2]_i_4_n_0\,
      I5 => \half_duty_new[0][2]_i_3_n_0\,
      O => \half_duty_new[0][4]_i_2_n_0\
    );
\half_duty_new[0][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00010000FFFE"
    )
        port map (
      I0 => \half_duty_new[0][2]_i_2_n_0\,
      I1 => \half_duty_new_reg[0]4_carry_i_4_n_0\,
      I2 => \half_duty_new[0][2]_i_3_n_0\,
      I3 => \half_duty_new_reg[0]4_carry_i_10_n_0\,
      I4 => \half_duty_new_reg[0]4_carry__2_n_0\,
      I5 => \half_duty_new[0][7]_i_7_n_0\,
      O => \half_duty_new_reg[0]10_in\(4)
    );
\half_duty_new[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1E1E1E1E1E11EE1"
    )
        port map (
      I0 => \half_duty_new[0][5]_i_2_n_0\,
      I1 => \half_duty_new_reg[0]4_carry__2_n_0\,
      I2 => \half_duty_new[0][5]_i_3_n_0\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[0][6]_i_2_n_1\,
      I5 => \half_duty_new[0][5]_i_4_n_0\,
      O => \half_duty_new[0][5]_i_1_n_0\
    );
\half_duty_new[0][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \half_duty_new_reg[0]4_carry_i_10_n_0\,
      I1 => \half_duty_new[0][2]_i_3_n_0\,
      I2 => \half_duty_new[0][2]_i_4_n_0\,
      I3 => \half_duty_new[0][2]_i_5_n_0\,
      I4 => \half_duty_new[0][2]_i_2_n_0\,
      I5 => \half_duty_new[0][7]_i_7_n_0\,
      O => \half_duty_new[0][5]_i_2_n_0\
    );
\half_duty_new[0][5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(6),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]6__53_carry__1_n_6\,
      I3 => \half_duty_new_reg[0]7\,
      I4 => \half_duty_new_reg[0]6\(14),
      O => \half_duty_new[0][5]_i_3_n_0\
    );
\half_duty_new[0][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000220020"
    )
        port map (
      I0 => \half_duty_new[0][5]_i_5_n_0\,
      I1 => \half_duty_new[0][7]_i_7_n_0\,
      I2 => \half_duty_new_reg[0]4_carry__2_n_0\,
      I3 => \half_duty_new_reg[0]4_carry_i_10_n_0\,
      I4 => \half_duty_new[0][5]_i_6_n_0\,
      I5 => \half_duty_new[0][2]_i_2_n_0\,
      O => \half_duty_new[0][5]_i_4_n_0\
    );
\half_duty_new[0][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022200045444555"
    )
        port map (
      I0 => \half_duty_new[0][2]_i_3_n_0\,
      I1 => \half_duty_new_reg[0]4_carry__2_n_0\,
      I2 => \half_duty_new_reg[0]6__53_carry_n_4\,
      I3 => \half_duty_new_reg[0]7\,
      I4 => \half_duty_new_reg[0]6\(8),
      I5 => \half_duty_new[0][2]_i_4_n_0\,
      O => \half_duty_new[0][5]_i_5_n_0\
    );
\half_duty_new[0][5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000047"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry_n_4\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6\(8),
      I3 => \half_duty_new[0][2]_i_4_n_0\,
      I4 => \half_duty_new[0][2]_i_3_n_0\,
      O => \half_duty_new[0][5]_i_6_n_0\
    );
\half_duty_new[0][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[0][6]_i_2_n_1\,
      I2 => \half_duty_new[0][7]_i_3_n_0\,
      I3 => \half_duty_new_reg[0]10_in\(6),
      O => \half_duty_new[0][6]_i_1_n_0\
    );
\half_duty_new[0][6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F20D"
    )
        port map (
      I0 => \half_duty_new[0][5]_i_2_n_0\,
      I1 => \half_duty_new[0][5]_i_3_n_0\,
      I2 => \half_duty_new_reg[0]4_carry__2_n_0\,
      I3 => \half_duty_new[0][7]_i_5_n_0\,
      O => \half_duty_new_reg[0]10_in\(6)
    );
\half_duty_new[0][6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new[0][6]_i_4_n_0\
    );
\half_duty_new[0][6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new[0][6]_i_5_n_0\
    );
\half_duty_new[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AD25AD2A5D22DA5"
    )
        port map (
      I0 => \half_duty_new[0][7]_i_2_n_0\,
      I1 => \half_duty_new[0][7]_i_3_n_0\,
      I2 => \half_duty_new[0][7]_i_4_n_0\,
      I3 => \half_duty_new[0][7]_i_5_n_0\,
      I4 => \half_duty_new[0][7]_i_6_n_0\,
      I5 => \half_duty_new_reg[0]4_carry__2_n_0\,
      O => \half_duty_new[0][7]_i_1_n_0\
    );
\half_duty_new[0][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[0][6]_i_2_n_1\,
      O => \half_duty_new[0][7]_i_2_n_0\
    );
\half_duty_new[0][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000220020"
    )
        port map (
      I0 => \half_duty_new[0][3]_i_2_n_0\,
      I1 => \half_duty_new[0][5]_i_3_n_0\,
      I2 => \half_duty_new_reg[0]4_carry__2_n_0\,
      I3 => \half_duty_new[0][7]_i_7_n_0\,
      I4 => \half_duty_new[0][7]_i_8_n_0\,
      I5 => \half_duty_new_reg[0]4_carry_i_10_n_0\,
      O => \half_duty_new[0][7]_i_3_n_0\
    );
\half_duty_new[0][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(8),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]6__53_carry__1_n_4\,
      I3 => \half_duty_new_reg[0]7\,
      I4 => \half_duty_new_reg[0]6\(16),
      O => \half_duty_new[0][7]_i_4_n_0\
    );
\half_duty_new[0][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(7),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]6__53_carry__1_n_5\,
      I3 => \half_duty_new_reg[0]7\,
      I4 => \half_duty_new_reg[0]6\(15),
      O => \half_duty_new[0][7]_i_5_n_0\
    );
\half_duty_new[0][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => \half_duty_new[0][5]_i_2_n_0\,
      I1 => \half_duty_new_reg[0]6\(14),
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]6__53_carry__1_n_6\,
      I4 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I5 => \half_duty_new_reg[0]4\(6),
      O => \half_duty_new[0][7]_i_6_n_0\
    );
\half_duty_new[0][7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(5),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]6__53_carry__1_n_7\,
      I3 => \half_duty_new_reg[0]7\,
      I4 => \half_duty_new_reg[0]6\(13),
      O => \half_duty_new[0][7]_i_7_n_0\
    );
\half_duty_new[0][7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000011101"
    )
        port map (
      I0 => \half_duty_new[0][2]_i_3_n_0\,
      I1 => \half_duty_new[0][2]_i_4_n_0\,
      I2 => \half_duty_new_reg[0]6\(8),
      I3 => \half_duty_new_reg[0]7\,
      I4 => \half_duty_new_reg[0]6__53_carry_n_4\,
      I5 => \half_duty_new[0][2]_i_2_n_0\,
      O => \half_duty_new[0][7]_i_8_n_0\
    );
\half_duty_new[1][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4700B8"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry_n_4\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6\(8),
      I3 => \half_duty_new_reg[1]4_carry__2_n_0\,
      I4 => \half_duty_new[1][2]_i_4_n_0\,
      O => \half_duty_new_reg[1]10_in\(0)
    );
\half_duty_new[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D20FD22DF02DF0F0"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[1][6]_i_2_n_1\,
      I2 => \half_duty_new[1][2]_i_3_n_0\,
      I3 => \half_duty_new_reg[1]4_carry__2_n_0\,
      I4 => \half_duty_new[1][2]_i_5_n_0\,
      I5 => \half_duty_new[1][2]_i_4_n_0\,
      O => \half_duty_new[1][1]_i_1_n_0\
    );
\half_duty_new[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"636969C9696969CC"
    )
        port map (
      I0 => \half_duty_new[1][7]_i_2_n_0\,
      I1 => \half_duty_new[1][2]_i_2_n_0\,
      I2 => \half_duty_new_reg[1]4_carry__2_n_0\,
      I3 => \half_duty_new[1][2]_i_3_n_0\,
      I4 => \half_duty_new[1][2]_i_4_n_0\,
      I5 => \half_duty_new[1][2]_i_5_n_0\,
      O => \half_duty_new[1][2]_i_1_n_0\
    );
\half_duty_new[1][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(3),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]6__53_carry__0_n_5\,
      I3 => \half_duty_new_reg[1]7\,
      I4 => \half_duty_new_reg[1]6\(11),
      O => \half_duty_new[1][2]_i_2_n_0\
    );
\half_duty_new[1][2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(2),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]6__53_carry__0_n_6\,
      I3 => \half_duty_new_reg[1]7\,
      I4 => \half_duty_new_reg[1]6\(10),
      O => \half_duty_new[1][2]_i_3_n_0\
    );
\half_duty_new[1][2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(1),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]6__53_carry__0_n_7\,
      I3 => \half_duty_new_reg[1]7\,
      I4 => \half_duty_new_reg[1]6\(9),
      O => \half_duty_new[1][2]_i_4_n_0\
    );
\half_duty_new[1][2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry_n_4\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6\(8),
      O => \half_duty_new[1][2]_i_5_n_0\
    );
\half_duty_new[1][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[1][6]_i_2_n_1\,
      I2 => \half_duty_new[1][3]_i_2_n_0\,
      I3 => \half_duty_new_reg[1]10_in\(3),
      O => \half_duty_new[1][3]_i_1_n_0\
    );
\half_duty_new[1][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20040005"
    )
        port map (
      I0 => \half_duty_new[1][2]_i_2_n_0\,
      I1 => \half_duty_new_reg[1]4_carry__2_n_0\,
      I2 => \half_duty_new[1][2]_i_3_n_0\,
      I3 => \half_duty_new[1][2]_i_4_n_0\,
      I4 => \half_duty_new[1][2]_i_5_n_0\,
      O => \half_duty_new[1][3]_i_2_n_0\
    );
\half_duty_new[1][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0100FE"
    )
        port map (
      I0 => \half_duty_new[1][2]_i_3_n_0\,
      I1 => \half_duty_new_reg[1]4_carry_i_4_n_0\,
      I2 => \half_duty_new[1][2]_i_2_n_0\,
      I3 => \half_duty_new_reg[1]4_carry__2_n_0\,
      I4 => \half_duty_new_reg[1]4_carry_i_10_n_0\,
      O => \half_duty_new_reg[1]10_in\(3)
    );
\half_duty_new[1][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[1][6]_i_2_n_1\,
      I2 => \half_duty_new[1][4]_i_2_n_0\,
      I3 => \half_duty_new_reg[1]10_in\(4),
      O => \half_duty_new[1][4]_i_1_n_0\
    );
\half_duty_new[1][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000405"
    )
        port map (
      I0 => \half_duty_new_reg[1]4_carry_i_10_n_0\,
      I1 => \half_duty_new_reg[1]4_carry__2_n_0\,
      I2 => \half_duty_new[1][2]_i_2_n_0\,
      I3 => \half_duty_new[1][2]_i_5_n_0\,
      I4 => \half_duty_new[1][2]_i_4_n_0\,
      I5 => \half_duty_new[1][2]_i_3_n_0\,
      O => \half_duty_new[1][4]_i_2_n_0\
    );
\half_duty_new[1][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00010000FFFE"
    )
        port map (
      I0 => \half_duty_new[1][2]_i_2_n_0\,
      I1 => \half_duty_new_reg[1]4_carry_i_4_n_0\,
      I2 => \half_duty_new[1][2]_i_3_n_0\,
      I3 => \half_duty_new_reg[1]4_carry_i_10_n_0\,
      I4 => \half_duty_new_reg[1]4_carry__2_n_0\,
      I5 => \half_duty_new[1][7]_i_7_n_0\,
      O => \half_duty_new_reg[1]10_in\(4)
    );
\half_duty_new[1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1E1E1E1E1E11EE1"
    )
        port map (
      I0 => \half_duty_new[1][5]_i_2_n_0\,
      I1 => \half_duty_new_reg[1]4_carry__2_n_0\,
      I2 => \half_duty_new[1][5]_i_3_n_0\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[1][6]_i_2_n_1\,
      I5 => \half_duty_new[1][5]_i_4_n_0\,
      O => \half_duty_new[1][5]_i_1_n_0\
    );
\half_duty_new[1][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \half_duty_new_reg[1]4_carry_i_10_n_0\,
      I1 => \half_duty_new[1][2]_i_3_n_0\,
      I2 => \half_duty_new[1][2]_i_4_n_0\,
      I3 => \half_duty_new[1][2]_i_5_n_0\,
      I4 => \half_duty_new[1][2]_i_2_n_0\,
      I5 => \half_duty_new[1][7]_i_7_n_0\,
      O => \half_duty_new[1][5]_i_2_n_0\
    );
\half_duty_new[1][5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(6),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]6__53_carry__1_n_6\,
      I3 => \half_duty_new_reg[1]7\,
      I4 => \half_duty_new_reg[1]6\(14),
      O => \half_duty_new[1][5]_i_3_n_0\
    );
\half_duty_new[1][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000220020"
    )
        port map (
      I0 => \half_duty_new[1][5]_i_5_n_0\,
      I1 => \half_duty_new[1][7]_i_7_n_0\,
      I2 => \half_duty_new_reg[1]4_carry__2_n_0\,
      I3 => \half_duty_new_reg[1]4_carry_i_10_n_0\,
      I4 => \half_duty_new[1][5]_i_6_n_0\,
      I5 => \half_duty_new[1][2]_i_2_n_0\,
      O => \half_duty_new[1][5]_i_4_n_0\
    );
\half_duty_new[1][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022200045444555"
    )
        port map (
      I0 => \half_duty_new[1][2]_i_3_n_0\,
      I1 => \half_duty_new_reg[1]4_carry__2_n_0\,
      I2 => \half_duty_new_reg[1]6__53_carry_n_4\,
      I3 => \half_duty_new_reg[1]7\,
      I4 => \half_duty_new_reg[1]6\(8),
      I5 => \half_duty_new[1][2]_i_4_n_0\,
      O => \half_duty_new[1][5]_i_5_n_0\
    );
\half_duty_new[1][5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000047"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry_n_4\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6\(8),
      I3 => \half_duty_new[1][2]_i_4_n_0\,
      I4 => \half_duty_new[1][2]_i_3_n_0\,
      O => \half_duty_new[1][5]_i_6_n_0\
    );
\half_duty_new[1][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[1][6]_i_2_n_1\,
      I2 => \half_duty_new[1][7]_i_3_n_0\,
      I3 => \half_duty_new_reg[1]10_in\(6),
      O => \half_duty_new[1][6]_i_1_n_0\
    );
\half_duty_new[1][6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F20D"
    )
        port map (
      I0 => \half_duty_new[1][5]_i_2_n_0\,
      I1 => \half_duty_new[1][5]_i_3_n_0\,
      I2 => \half_duty_new_reg[1]4_carry__2_n_0\,
      I3 => \half_duty_new[1][7]_i_5_n_0\,
      O => \half_duty_new_reg[1]10_in\(6)
    );
\half_duty_new[1][6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new[1][6]_i_4_n_0\
    );
\half_duty_new[1][6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new[1][6]_i_5_n_0\
    );
\half_duty_new[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AD25AD2A5D22DA5"
    )
        port map (
      I0 => \half_duty_new[1][7]_i_2_n_0\,
      I1 => \half_duty_new[1][7]_i_3_n_0\,
      I2 => \half_duty_new[1][7]_i_4_n_0\,
      I3 => \half_duty_new[1][7]_i_5_n_0\,
      I4 => \half_duty_new[1][7]_i_6_n_0\,
      I5 => \half_duty_new_reg[1]4_carry__2_n_0\,
      O => \half_duty_new[1][7]_i_1_n_0\
    );
\half_duty_new[1][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[1][6]_i_2_n_1\,
      O => \half_duty_new[1][7]_i_2_n_0\
    );
\half_duty_new[1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000220020"
    )
        port map (
      I0 => \half_duty_new[1][3]_i_2_n_0\,
      I1 => \half_duty_new[1][5]_i_3_n_0\,
      I2 => \half_duty_new_reg[1]4_carry__2_n_0\,
      I3 => \half_duty_new[1][7]_i_7_n_0\,
      I4 => \half_duty_new[1][7]_i_8_n_0\,
      I5 => \half_duty_new_reg[1]4_carry_i_10_n_0\,
      O => \half_duty_new[1][7]_i_3_n_0\
    );
\half_duty_new[1][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(8),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]6__53_carry__1_n_4\,
      I3 => \half_duty_new_reg[1]7\,
      I4 => \half_duty_new_reg[1]6\(16),
      O => \half_duty_new[1][7]_i_4_n_0\
    );
\half_duty_new[1][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(7),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]6__53_carry__1_n_5\,
      I3 => \half_duty_new_reg[1]7\,
      I4 => \half_duty_new_reg[1]6\(15),
      O => \half_duty_new[1][7]_i_5_n_0\
    );
\half_duty_new[1][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => \half_duty_new[1][5]_i_2_n_0\,
      I1 => \half_duty_new_reg[1]6\(14),
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]6__53_carry__1_n_6\,
      I4 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I5 => \half_duty_new_reg[1]4\(6),
      O => \half_duty_new[1][7]_i_6_n_0\
    );
\half_duty_new[1][7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(5),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]6__53_carry__1_n_7\,
      I3 => \half_duty_new_reg[1]7\,
      I4 => \half_duty_new_reg[1]6\(13),
      O => \half_duty_new[1][7]_i_7_n_0\
    );
\half_duty_new[1][7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000011101"
    )
        port map (
      I0 => \half_duty_new[1][2]_i_3_n_0\,
      I1 => \half_duty_new[1][2]_i_4_n_0\,
      I2 => \half_duty_new_reg[1]6\(8),
      I3 => \half_duty_new_reg[1]7\,
      I4 => \half_duty_new_reg[1]6__53_carry_n_4\,
      I5 => \half_duty_new[1][2]_i_2_n_0\,
      O => \half_duty_new[1][7]_i_8_n_0\
    );
\half_duty_new[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4700B8"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry_n_4\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6\(8),
      I3 => \half_duty_new_reg[2]4_carry__2_n_0\,
      I4 => \half_duty_new[2][2]_i_4_n_0\,
      O => \half_duty_new_reg[2]10_in\(0)
    );
\half_duty_new[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D20FD22DF02DF0F0"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[2][6]_i_2_n_1\,
      I2 => \half_duty_new[2][2]_i_3_n_0\,
      I3 => \half_duty_new_reg[2]4_carry__2_n_0\,
      I4 => \half_duty_new[2][2]_i_5_n_0\,
      I5 => \half_duty_new[2][2]_i_4_n_0\,
      O => \half_duty_new[2][1]_i_1_n_0\
    );
\half_duty_new[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"636969C9696969CC"
    )
        port map (
      I0 => \half_duty_new[2][7]_i_2_n_0\,
      I1 => \half_duty_new[2][2]_i_2_n_0\,
      I2 => \half_duty_new_reg[2]4_carry__2_n_0\,
      I3 => \half_duty_new[2][2]_i_3_n_0\,
      I4 => \half_duty_new[2][2]_i_4_n_0\,
      I5 => \half_duty_new[2][2]_i_5_n_0\,
      O => \half_duty_new[2][2]_i_1_n_0\
    );
\half_duty_new[2][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(3),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]6__53_carry__0_n_5\,
      I3 => \half_duty_new_reg[2]7\,
      I4 => \half_duty_new_reg[2]6\(11),
      O => \half_duty_new[2][2]_i_2_n_0\
    );
\half_duty_new[2][2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(2),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]6__53_carry__0_n_6\,
      I3 => \half_duty_new_reg[2]7\,
      I4 => \half_duty_new_reg[2]6\(10),
      O => \half_duty_new[2][2]_i_3_n_0\
    );
\half_duty_new[2][2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(1),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]6__53_carry__0_n_7\,
      I3 => \half_duty_new_reg[2]7\,
      I4 => \half_duty_new_reg[2]6\(9),
      O => \half_duty_new[2][2]_i_4_n_0\
    );
\half_duty_new[2][2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry_n_4\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6\(8),
      O => \half_duty_new[2][2]_i_5_n_0\
    );
\half_duty_new[2][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[2][6]_i_2_n_1\,
      I2 => \half_duty_new[2][3]_i_2_n_0\,
      I3 => \half_duty_new_reg[2]10_in\(3),
      O => \half_duty_new[2][3]_i_1_n_0\
    );
\half_duty_new[2][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20040005"
    )
        port map (
      I0 => \half_duty_new[2][2]_i_2_n_0\,
      I1 => \half_duty_new_reg[2]4_carry__2_n_0\,
      I2 => \half_duty_new[2][2]_i_3_n_0\,
      I3 => \half_duty_new[2][2]_i_4_n_0\,
      I4 => \half_duty_new[2][2]_i_5_n_0\,
      O => \half_duty_new[2][3]_i_2_n_0\
    );
\half_duty_new[2][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0100FE"
    )
        port map (
      I0 => \half_duty_new[2][2]_i_3_n_0\,
      I1 => \half_duty_new_reg[2]4_carry_i_4_n_0\,
      I2 => \half_duty_new[2][2]_i_2_n_0\,
      I3 => \half_duty_new_reg[2]4_carry__2_n_0\,
      I4 => \half_duty_new_reg[2]4_carry_i_10_n_0\,
      O => \half_duty_new_reg[2]10_in\(3)
    );
\half_duty_new[2][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[2][6]_i_2_n_1\,
      I2 => \half_duty_new[2][4]_i_2_n_0\,
      I3 => \half_duty_new_reg[2]10_in\(4),
      O => \half_duty_new[2][4]_i_1_n_0\
    );
\half_duty_new[2][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000405"
    )
        port map (
      I0 => \half_duty_new_reg[2]4_carry_i_10_n_0\,
      I1 => \half_duty_new_reg[2]4_carry__2_n_0\,
      I2 => \half_duty_new[2][2]_i_2_n_0\,
      I3 => \half_duty_new[2][2]_i_5_n_0\,
      I4 => \half_duty_new[2][2]_i_4_n_0\,
      I5 => \half_duty_new[2][2]_i_3_n_0\,
      O => \half_duty_new[2][4]_i_2_n_0\
    );
\half_duty_new[2][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00010000FFFE"
    )
        port map (
      I0 => \half_duty_new[2][2]_i_2_n_0\,
      I1 => \half_duty_new_reg[2]4_carry_i_4_n_0\,
      I2 => \half_duty_new[2][2]_i_3_n_0\,
      I3 => \half_duty_new_reg[2]4_carry_i_10_n_0\,
      I4 => \half_duty_new_reg[2]4_carry__2_n_0\,
      I5 => \half_duty_new[2][7]_i_7_n_0\,
      O => \half_duty_new_reg[2]10_in\(4)
    );
\half_duty_new[2][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1E1E1E1E1E11EE1"
    )
        port map (
      I0 => \half_duty_new[2][5]_i_2_n_0\,
      I1 => \half_duty_new_reg[2]4_carry__2_n_0\,
      I2 => \half_duty_new[2][5]_i_3_n_0\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[2][6]_i_2_n_1\,
      I5 => \half_duty_new[2][5]_i_4_n_0\,
      O => \half_duty_new[2][5]_i_1_n_0\
    );
\half_duty_new[2][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \half_duty_new_reg[2]4_carry_i_10_n_0\,
      I1 => \half_duty_new[2][2]_i_3_n_0\,
      I2 => \half_duty_new[2][2]_i_4_n_0\,
      I3 => \half_duty_new[2][2]_i_5_n_0\,
      I4 => \half_duty_new[2][2]_i_2_n_0\,
      I5 => \half_duty_new[2][7]_i_7_n_0\,
      O => \half_duty_new[2][5]_i_2_n_0\
    );
\half_duty_new[2][5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(6),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]6__53_carry__1_n_6\,
      I3 => \half_duty_new_reg[2]7\,
      I4 => \half_duty_new_reg[2]6\(14),
      O => \half_duty_new[2][5]_i_3_n_0\
    );
\half_duty_new[2][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000220020"
    )
        port map (
      I0 => \half_duty_new[2][5]_i_5_n_0\,
      I1 => \half_duty_new[2][7]_i_7_n_0\,
      I2 => \half_duty_new_reg[2]4_carry__2_n_0\,
      I3 => \half_duty_new_reg[2]4_carry_i_10_n_0\,
      I4 => \half_duty_new[2][5]_i_6_n_0\,
      I5 => \half_duty_new[2][2]_i_2_n_0\,
      O => \half_duty_new[2][5]_i_4_n_0\
    );
\half_duty_new[2][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022200045444555"
    )
        port map (
      I0 => \half_duty_new[2][2]_i_3_n_0\,
      I1 => \half_duty_new_reg[2]4_carry__2_n_0\,
      I2 => \half_duty_new_reg[2]6__53_carry_n_4\,
      I3 => \half_duty_new_reg[2]7\,
      I4 => \half_duty_new_reg[2]6\(8),
      I5 => \half_duty_new[2][2]_i_4_n_0\,
      O => \half_duty_new[2][5]_i_5_n_0\
    );
\half_duty_new[2][5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000047"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry_n_4\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6\(8),
      I3 => \half_duty_new[2][2]_i_4_n_0\,
      I4 => \half_duty_new[2][2]_i_3_n_0\,
      O => \half_duty_new[2][5]_i_6_n_0\
    );
\half_duty_new[2][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[2][6]_i_2_n_1\,
      I2 => \half_duty_new[2][7]_i_3_n_0\,
      I3 => \half_duty_new_reg[2]10_in\(6),
      O => \half_duty_new[2][6]_i_1_n_0\
    );
\half_duty_new[2][6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F20D"
    )
        port map (
      I0 => \half_duty_new[2][5]_i_2_n_0\,
      I1 => \half_duty_new[2][5]_i_3_n_0\,
      I2 => \half_duty_new_reg[2]4_carry__2_n_0\,
      I3 => \half_duty_new[2][7]_i_5_n_0\,
      O => \half_duty_new_reg[2]10_in\(6)
    );
\half_duty_new[2][6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new[2][6]_i_4_n_0\
    );
\half_duty_new[2][6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new[2][6]_i_5_n_0\
    );
\half_duty_new[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AD25AD2A5D22DA5"
    )
        port map (
      I0 => \half_duty_new[2][7]_i_2_n_0\,
      I1 => \half_duty_new[2][7]_i_3_n_0\,
      I2 => \half_duty_new[2][7]_i_4_n_0\,
      I3 => \half_duty_new[2][7]_i_5_n_0\,
      I4 => \half_duty_new[2][7]_i_6_n_0\,
      I5 => \half_duty_new_reg[2]4_carry__2_n_0\,
      O => \half_duty_new[2][7]_i_1_n_0\
    );
\half_duty_new[2][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[2][6]_i_2_n_1\,
      O => \half_duty_new[2][7]_i_2_n_0\
    );
\half_duty_new[2][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000220020"
    )
        port map (
      I0 => \half_duty_new[2][3]_i_2_n_0\,
      I1 => \half_duty_new[2][5]_i_3_n_0\,
      I2 => \half_duty_new_reg[2]4_carry__2_n_0\,
      I3 => \half_duty_new[2][7]_i_7_n_0\,
      I4 => \half_duty_new[2][7]_i_8_n_0\,
      I5 => \half_duty_new_reg[2]4_carry_i_10_n_0\,
      O => \half_duty_new[2][7]_i_3_n_0\
    );
\half_duty_new[2][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(8),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]6__53_carry__1_n_4\,
      I3 => \half_duty_new_reg[2]7\,
      I4 => \half_duty_new_reg[2]6\(16),
      O => \half_duty_new[2][7]_i_4_n_0\
    );
\half_duty_new[2][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(7),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]6__53_carry__1_n_5\,
      I3 => \half_duty_new_reg[2]7\,
      I4 => \half_duty_new_reg[2]6\(15),
      O => \half_duty_new[2][7]_i_5_n_0\
    );
\half_duty_new[2][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => \half_duty_new[2][5]_i_2_n_0\,
      I1 => \half_duty_new_reg[2]6\(14),
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]6__53_carry__1_n_6\,
      I4 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I5 => \half_duty_new_reg[2]4\(6),
      O => \half_duty_new[2][7]_i_6_n_0\
    );
\half_duty_new[2][7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(5),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]6__53_carry__1_n_7\,
      I3 => \half_duty_new_reg[2]7\,
      I4 => \half_duty_new_reg[2]6\(13),
      O => \half_duty_new[2][7]_i_7_n_0\
    );
\half_duty_new[2][7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000011101"
    )
        port map (
      I0 => \half_duty_new[2][2]_i_3_n_0\,
      I1 => \half_duty_new[2][2]_i_4_n_0\,
      I2 => \half_duty_new_reg[2]6\(8),
      I3 => \half_duty_new_reg[2]7\,
      I4 => \half_duty_new_reg[2]6__53_carry_n_4\,
      I5 => \half_duty_new[2][2]_i_2_n_0\,
      O => \half_duty_new[2][7]_i_8_n_0\
    );
\half_duty_new_reg[0]4_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[0]4_carry_n_0\,
      CO(2) => \half_duty_new_reg[0]4_carry_n_1\,
      CO(1) => \half_duty_new_reg[0]4_carry_n_2\,
      CO(0) => \half_duty_new_reg[0]4_carry_n_3\,
      CYINIT => '1',
      DI(3) => \half_duty_new_reg[0]4_carry_i_1_n_0\,
      DI(2) => \half_duty_new_reg[0]4_carry_i_2_n_0\,
      DI(1) => \half_duty_new_reg[0]4_carry_i_3_n_0\,
      DI(0) => \half_duty_new_reg[0]4_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[0]4_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[0]4_carry_i_5_n_0\,
      S(2) => \half_duty_new_reg[0]4_carry_i_6_n_0\,
      S(1) => \half_duty_new_reg[0]4_carry_i_7_n_0\,
      S(0) => \half_duty_new_reg[0]4_carry_i_8_n_0\
    );
\half_duty_new_reg[0]4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]4_carry_n_0\,
      CO(3) => \half_duty_new_reg[0]4_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[0]4_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[0]4_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[0]4_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[0]4_carry__0_i_1_n_0\,
      DI(2) => \half_duty_new_reg[0]4_carry__0_i_2_n_0\,
      DI(1) => \half_duty_new_reg[0]4_carry__0_i_3_n_0\,
      DI(0) => \half_duty_new_reg[0]4_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[0]4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[0]4_carry__0_i_5_n_0\,
      S(2) => \half_duty_new_reg[0]4_carry__0_i_6_n_0\,
      S(1) => \half_duty_new_reg[0]4_carry__0_i_7_n_0\,
      S(0) => \half_duty_new_reg[0]4_carry__0_i_8_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(14),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[0]4\(15),
      O => \half_duty_new_reg[0]4_carry__0_i_1_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]4_carry_i_9_n_0\,
      CO(3) => \half_duty_new_reg[0]4_carry__0_i_10_n_0\,
      CO(2) => \half_duty_new_reg[0]4_carry__0_i_10_n_1\,
      CO(1) => \half_duty_new_reg[0]4_carry__0_i_10_n_2\,
      CO(0) => \half_duty_new_reg[0]4_carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[0]4\(12 downto 9),
      S(3) => \half_duty_new_reg[0]4_carry__0_i_15_n_0\,
      S(2) => \half_duty_new_reg[0]4_carry__0_i_16_n_0\,
      S(1) => \half_duty_new_reg[0]4_carry__0_i_17_n_0\,
      S(0) => \half_duty_new_reg[0]4_carry__0_i_18_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__0_i_11_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__0_i_12_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__0_i_13_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__0_i_14_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__0_i_15_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__0_i_16_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(18),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__0_i_17_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(17),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_7\,
      O => \half_duty_new_reg[0]4_carry__0_i_18_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(12),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[0]4\(13),
      O => \half_duty_new_reg[0]4_carry__0_i_2_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCF8B8BCFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(10),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]6\(18),
      I4 => \half_duty_new_reg[0]4\(11),
      I5 => \half_duty_new_reg[0]50_carry__3_n_7\,
      O => \half_duty_new_reg[0]4_carry__0_i_3_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEFEFEAEAEA"
    )
        port map (
      I0 => \half_duty_new[0][7]_i_4_n_0\,
      I1 => \half_duty_new_reg[0]4\(9),
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_7\,
      I4 => \half_duty_new_reg[0]7\,
      I5 => \half_duty_new_reg[0]6\(17),
      O => \half_duty_new_reg[0]4_carry__0_i_4_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(15),
      I1 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[0]4\(14),
      O => \half_duty_new_reg[0]4_carry__0_i_5_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(13),
      I1 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[0]4\(12),
      O => \half_duty_new_reg[0]4_carry__0_i_6_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF053333FF05"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]4\(11),
      I2 => \half_duty_new_reg[0]6\(18),
      I3 => \half_duty_new_reg[0]7\,
      I4 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I5 => \half_duty_new_reg[0]4\(10),
      O => \half_duty_new_reg[0]4_carry__0_i_7_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001DFF1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(17),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_7\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[0]4\(9),
      I5 => \half_duty_new[0][7]_i_4_n_0\,
      O => \half_duty_new_reg[0]4_carry__0_i_8_n_0\
    );
\half_duty_new_reg[0]4_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]4_carry__0_i_10_n_0\,
      CO(3) => \half_duty_new_reg[0]4_carry__0_i_9_n_0\,
      CO(2) => \half_duty_new_reg[0]4_carry__0_i_9_n_1\,
      CO(1) => \half_duty_new_reg[0]4_carry__0_i_9_n_2\,
      CO(0) => \half_duty_new_reg[0]4_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[0]4\(16 downto 13),
      S(3) => \half_duty_new_reg[0]4_carry__0_i_11_n_0\,
      S(2) => \half_duty_new_reg[0]4_carry__0_i_12_n_0\,
      S(1) => \half_duty_new_reg[0]4_carry__0_i_13_n_0\,
      S(0) => \half_duty_new_reg[0]4_carry__0_i_14_n_0\
    );
\half_duty_new_reg[0]4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]4_carry__0_n_0\,
      CO(3) => \half_duty_new_reg[0]4_carry__1_n_0\,
      CO(2) => \half_duty_new_reg[0]4_carry__1_n_1\,
      CO(1) => \half_duty_new_reg[0]4_carry__1_n_2\,
      CO(0) => \half_duty_new_reg[0]4_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[0]4_carry__1_i_1_n_0\,
      DI(2) => \half_duty_new_reg[0]4_carry__1_i_2_n_0\,
      DI(1) => \half_duty_new_reg[0]4_carry__1_i_3_n_0\,
      DI(0) => \half_duty_new_reg[0]4_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[0]4_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[0]4_carry__1_i_5_n_0\,
      S(2) => \half_duty_new_reg[0]4_carry__1_i_6_n_0\,
      S(1) => \half_duty_new_reg[0]4_carry__1_i_7_n_0\,
      S(0) => \half_duty_new_reg[0]4_carry__1_i_8_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B88CFCC"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(22),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[0][6]_i_2_n_1\,
      O => \half_duty_new_reg[0]4_carry__1_i_1_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__1_i_10_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__1_i_11_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__1_i_12_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__1_i_13_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(20),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[0]4\(21),
      O => \half_duty_new_reg[0]4_carry__1_i_2_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(18),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[0]4\(19),
      O => \half_duty_new_reg[0]4_carry__1_i_3_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(16),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[0]4\(17),
      O => \half_duty_new_reg[0]4_carry__1_i_4_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F3AAF3"
    )
        port map (
      I0 => \half_duty_new_reg[0][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[0]4\(22),
      O => \half_duty_new_reg[0]4_carry__1_i_5_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(21),
      I1 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[0]4\(20),
      O => \half_duty_new_reg[0]4_carry__1_i_6_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(19),
      I1 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[0]4\(18),
      O => \half_duty_new_reg[0]4_carry__1_i_7_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(17),
      I1 => \half_duty_new_reg[0]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[0]7\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[0]4\(16),
      O => \half_duty_new_reg[0]4_carry__1_i_8_n_0\
    );
\half_duty_new_reg[0]4_carry__1_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]4_carry__0_i_9_n_0\,
      CO(3) => \half_duty_new_reg[0]4_carry__1_i_9_n_0\,
      CO(2) => \half_duty_new_reg[0]4_carry__1_i_9_n_1\,
      CO(1) => \half_duty_new_reg[0]4_carry__1_i_9_n_2\,
      CO(0) => \half_duty_new_reg[0]4_carry__1_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[0]4\(20 downto 17),
      S(3) => \half_duty_new_reg[0]4_carry__1_i_10_n_0\,
      S(2) => \half_duty_new_reg[0]4_carry__1_i_11_n_0\,
      S(1) => \half_duty_new_reg[0]4_carry__1_i_12_n_0\,
      S(0) => \half_duty_new_reg[0]4_carry__1_i_13_n_0\
    );
\half_duty_new_reg[0]4_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]4_carry__1_n_0\,
      CO(3) => \half_duty_new_reg[0]4_carry__2_n_0\,
      CO(2) => \half_duty_new_reg[0]4_carry__2_n_1\,
      CO(1) => \half_duty_new_reg[0]4_carry__2_n_2\,
      CO(0) => \half_duty_new_reg[0]4_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \half_duty_new_reg[0]4_carry__2_i_1_n_0\,
      DI(1) => \half_duty_new_reg[0]4_carry__2_i_2_n_0\,
      DI(0) => \half_duty_new_reg[0]4_carry__2_i_3_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[0]4_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[0]4_carry__2_i_4_n_0\,
      S(2) => \half_duty_new_reg[0]4_carry__2_i_5_n_0\,
      S(1) => \half_duty_new_reg[0]4_carry__2_i_6_n_0\,
      S(0) => \half_duty_new_reg[0]4_carry__2_i_7_n_0\
    );
\half_duty_new_reg[0]4_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[0][6]_i_2_n_1\,
      O => \half_duty_new_reg[0]4_carry__2_i_1_n_0\
    );
\half_duty_new_reg[0]4_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[0][6]_i_2_n_1\,
      O => \half_duty_new_reg[0]4_carry__2_i_2_n_0\
    );
\half_duty_new_reg[0]4_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[0][6]_i_2_n_1\,
      O => \half_duty_new_reg[0]4_carry__2_i_3_n_0\
    );
\half_duty_new_reg[0]4_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[0][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__2_i_4_n_0\
    );
\half_duty_new_reg[0]4_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[0][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__2_i_5_n_0\
    );
\half_duty_new_reg[0]4_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[0][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__2_i_6_n_0\
    );
\half_duty_new_reg[0]4_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[0][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]4_carry__2_i_7_n_0\
    );
\half_duty_new_reg[0]4_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEFEFEAEAEA"
    )
        port map (
      I0 => \half_duty_new[0][5]_i_3_n_0\,
      I1 => \half_duty_new_reg[0]4\(7),
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[0]6__53_carry__1_n_5\,
      I4 => \half_duty_new_reg[0]7\,
      I5 => \half_duty_new_reg[0]6\(15),
      O => \half_duty_new_reg[0]4_carry_i_1_n_0\
    );
\half_duty_new_reg[0]4_carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[0]4\(4),
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[0]6__53_carry__0_n_4\,
      I3 => \half_duty_new_reg[0]7\,
      I4 => \half_duty_new_reg[0]6\(12),
      O => \half_duty_new_reg[0]4_carry_i_10_n_0\
    );
\half_duty_new_reg[0]4_carry_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[0]4_carry_i_11_n_0\,
      CO(2) => \half_duty_new_reg[0]4_carry_i_11_n_1\,
      CO(1) => \half_duty_new_reg[0]4_carry_i_11_n_2\,
      CO(0) => \half_duty_new_reg[0]4_carry_i_11_n_3\,
      CYINIT => \half_duty_new_reg[0]4_carry_i_16_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[0]4\(4 downto 1),
      S(3) => \half_duty_new_reg[0]4_carry_i_17_n_0\,
      S(2) => \half_duty_new_reg[0]4_carry_i_18_n_0\,
      S(1) => \half_duty_new_reg[0]4_carry_i_19_n_0\,
      S(0) => \half_duty_new_reg[0]4_carry_i_20_n_0\
    );
\half_duty_new_reg[0]4_carry_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(16),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__1_n_4\,
      O => \half_duty_new_reg[0]4_carry_i_12_n_0\
    );
\half_duty_new_reg[0]4_carry_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(15),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__1_n_5\,
      O => \half_duty_new_reg[0]4_carry_i_13_n_0\
    );
\half_duty_new_reg[0]4_carry_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(14),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__1_n_6\,
      O => \half_duty_new_reg[0]4_carry_i_14_n_0\
    );
\half_duty_new_reg[0]4_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(13),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__1_n_7\,
      O => \half_duty_new_reg[0]4_carry_i_15_n_0\
    );
\half_duty_new_reg[0]4_carry_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(8),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry_n_4\,
      O => \half_duty_new_reg[0]4_carry_i_16_n_0\
    );
\half_duty_new_reg[0]4_carry_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(12),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__0_n_4\,
      O => \half_duty_new_reg[0]4_carry_i_17_n_0\
    );
\half_duty_new_reg[0]4_carry_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(11),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__0_n_5\,
      O => \half_duty_new_reg[0]4_carry_i_18_n_0\
    );
\half_duty_new_reg[0]4_carry_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(10),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__0_n_6\,
      O => \half_duty_new_reg[0]4_carry_i_19_n_0\
    );
\half_duty_new_reg[0]4_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEFEFEAEAEA"
    )
        port map (
      I0 => \half_duty_new_reg[0]4_carry_i_10_n_0\,
      I1 => \half_duty_new_reg[0]4\(5),
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[0]6__53_carry__1_n_7\,
      I4 => \half_duty_new_reg[0]7\,
      I5 => \half_duty_new_reg[0]6\(13),
      O => \half_duty_new_reg[0]4_carry_i_2_n_0\
    );
\half_duty_new_reg[0]4_carry_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(9),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__0_n_7\,
      O => \half_duty_new_reg[0]4_carry_i_20_n_0\
    );
\half_duty_new_reg[0]4_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEFEFEAEAEA"
    )
        port map (
      I0 => \half_duty_new[0][2]_i_3_n_0\,
      I1 => \half_duty_new_reg[0]4\(3),
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[0]6__53_carry__0_n_5\,
      I4 => \half_duty_new_reg[0]7\,
      I5 => \half_duty_new_reg[0]6\(11),
      O => \half_duty_new_reg[0]4_carry_i_3_n_0\
    );
\half_duty_new_reg[0]4_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(9),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__0_n_7\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[0]4\(1),
      I5 => \half_duty_new[0][2]_i_5_n_0\,
      O => \half_duty_new_reg[0]4_carry_i_4_n_0\
    );
\half_duty_new_reg[0]4_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001DFF1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(15),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__1_n_5\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[0]4\(7),
      I5 => \half_duty_new[0][5]_i_3_n_0\,
      O => \half_duty_new_reg[0]4_carry_i_5_n_0\
    );
\half_duty_new_reg[0]4_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001DFF1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(13),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__1_n_7\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[0]4\(5),
      I5 => \half_duty_new_reg[0]4_carry_i_10_n_0\,
      O => \half_duty_new_reg[0]4_carry_i_6_n_0\
    );
\half_duty_new_reg[0]4_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001DFF1D"
    )
        port map (
      I0 => \half_duty_new_reg[0]6\(11),
      I1 => \half_duty_new_reg[0]7\,
      I2 => \half_duty_new_reg[0]6__53_carry__0_n_5\,
      I3 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[0]4\(3),
      I5 => \half_duty_new[0][2]_i_3_n_0\,
      O => \half_duty_new_reg[0]4_carry_i_7_n_0\
    );
\half_duty_new_reg[0]4_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1015101010151515"
    )
        port map (
      I0 => \half_duty_new[0][2]_i_5_n_0\,
      I1 => \half_duty_new_reg[0]4\(1),
      I2 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[0]6__53_carry__0_n_7\,
      I4 => \half_duty_new_reg[0]7\,
      I5 => \half_duty_new_reg[0]6\(9),
      O => \half_duty_new_reg[0]4_carry_i_8_n_0\
    );
\half_duty_new_reg[0]4_carry_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]4_carry_i_11_n_0\,
      CO(3) => \half_duty_new_reg[0]4_carry_i_9_n_0\,
      CO(2) => \half_duty_new_reg[0]4_carry_i_9_n_1\,
      CO(1) => \half_duty_new_reg[0]4_carry_i_9_n_2\,
      CO(0) => \half_duty_new_reg[0]4_carry_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[0]4\(8 downto 5),
      S(3) => \half_duty_new_reg[0]4_carry_i_12_n_0\,
      S(2) => \half_duty_new_reg[0]4_carry_i_13_n_0\,
      S(1) => \half_duty_new_reg[0]4_carry_i_14_n_0\,
      S(0) => \half_duty_new_reg[0]4_carry_i_15_n_0\
    );
\half_duty_new_reg[0]50_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[0]50_carry_n_0\,
      CO(2) => \half_duty_new_reg[0]50_carry_n_1\,
      CO(1) => \half_duty_new_reg[0]50_carry_n_2\,
      CO(0) => \half_duty_new_reg[0]50_carry_n_3\,
      CYINIT => \half_duty_new_reg[0]50_carry_i_1_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_half_duty_new_reg[0]50_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[0]50_carry_i_2_n_0\,
      S(2) => \half_duty_new_reg[0]50_carry_i_3_n_0\,
      S(1) => \half_duty_new_reg[0]50_carry_i_4_n_0\,
      S(0) => \half_duty_new_reg[0]50_carry_i_5_n_0\
    );
\half_duty_new_reg[0]50_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]50_carry_n_0\,
      CO(3) => \half_duty_new_reg[0]50_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[0]50_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[0]50_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[0]50_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \half_duty_new_reg[0]6\(10 downto 8),
      O(0) => \NLW_half_duty_new_reg[0]50_carry__0_O_UNCONNECTED\(0),
      S(3) => \half_duty_new_reg[0]50_carry__0_i_1_n_0\,
      S(2) => \half_duty_new_reg[0]50_carry__0_i_2_n_0\,
      S(1) => \half_duty_new_reg[0]50_carry__0_i_3_n_0\,
      S(0) => \half_duty_new_reg[0]50_carry__0_i_4_n_0\
    );
\half_duty_new_reg[0]50_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__0_n_6\,
      O => \half_duty_new_reg[0]50_carry__0_i_1_n_0\
    );
\half_duty_new_reg[0]50_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__0_n_7\,
      O => \half_duty_new_reg[0]50_carry__0_i_2_n_0\
    );
\half_duty_new_reg[0]50_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry_n_4\,
      O => \half_duty_new_reg[0]50_carry__0_i_3_n_0\
    );
\half_duty_new_reg[0]50_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry_n_5\,
      O => \half_duty_new_reg[0]50_carry__0_i_4_n_0\
    );
\half_duty_new_reg[0]50_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]50_carry__0_n_0\,
      CO(3) => \half_duty_new_reg[0]50_carry__1_n_0\,
      CO(2) => \half_duty_new_reg[0]50_carry__1_n_1\,
      CO(1) => \half_duty_new_reg[0]50_carry__1_n_2\,
      CO(0) => \half_duty_new_reg[0]50_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[0]6\(14 downto 11),
      S(3) => \half_duty_new_reg[0]50_carry__1_i_1_n_0\,
      S(2) => \half_duty_new_reg[0]50_carry__1_i_2_n_0\,
      S(1) => \half_duty_new_reg[0]50_carry__1_i_3_n_0\,
      S(0) => \half_duty_new_reg[0]50_carry__1_i_4_n_0\
    );
\half_duty_new_reg[0]50_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__1_n_6\,
      O => \half_duty_new_reg[0]50_carry__1_i_1_n_0\
    );
\half_duty_new_reg[0]50_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__1_n_7\,
      O => \half_duty_new_reg[0]50_carry__1_i_2_n_0\
    );
\half_duty_new_reg[0]50_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__0_n_4\,
      O => \half_duty_new_reg[0]50_carry__1_i_3_n_0\
    );
\half_duty_new_reg[0]50_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__0_n_5\,
      O => \half_duty_new_reg[0]50_carry__1_i_4_n_0\
    );
\half_duty_new_reg[0]50_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]50_carry__1_n_0\,
      CO(3) => \half_duty_new_reg[0]50_carry__2_n_0\,
      CO(2) => \half_duty_new_reg[0]50_carry__2_n_1\,
      CO(1) => \half_duty_new_reg[0]50_carry__2_n_2\,
      CO(0) => \half_duty_new_reg[0]50_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1000",
      O(3 downto 0) => \half_duty_new_reg[0]6\(18 downto 15),
      S(3) => \half_duty_new_reg[0]50_carry__2_i_1_n_0\,
      S(2) => \half_duty_new_reg[0]50_carry__2_i_2_n_0\,
      S(1) => \half_duty_new_reg[0]50_carry__2_i_3_n_0\,
      S(0) => \half_duty_new_reg[0]50_carry__2_i_4_n_0\
    );
\half_duty_new_reg[0]50_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]50_carry__2_i_1_n_0\
    );
\half_duty_new_reg[0]50_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__2_n_7\,
      O => \half_duty_new_reg[0]50_carry__2_i_2_n_0\
    );
\half_duty_new_reg[0]50_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__1_n_4\,
      O => \half_duty_new_reg[0]50_carry__2_i_3_n_0\
    );
\half_duty_new_reg[0]50_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__1_n_5\,
      O => \half_duty_new_reg[0]50_carry__2_i_4_n_0\
    );
\half_duty_new_reg[0]50_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]50_carry__2_n_0\,
      CO(3 downto 0) => \NLW_half_duty_new_reg[0]50_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_half_duty_new_reg[0]50_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \half_duty_new_reg[0]50_carry__3_n_7\,
      S(3 downto 0) => B"0001"
    );
\half_duty_new_reg[0]50_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(0),
      O => \half_duty_new_reg[0]50_carry_i_1_n_0\
    );
\half_duty_new_reg[0]50_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry_n_6\,
      O => \half_duty_new_reg[0]50_carry_i_2_n_0\
    );
\half_duty_new_reg[0]50_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry_n_6\,
      I1 => slv_reg0(3),
      I2 => slv_reg0(2),
      I3 => slv_reg0(0),
      O => \half_duty_new_reg[0]50_carry_i_3_n_0\
    );
\half_duty_new_reg[0]50_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => slv_reg0(0),
      O => \half_duty_new_reg[0]50_carry_i_4_n_0\
    );
\half_duty_new_reg[0]50_carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(1),
      O => \half_duty_new_reg[0]50_carry_i_5_n_0\
    );
\half_duty_new_reg[0]6__26_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[0]6__26_carry_n_0\,
      CO(2) => \half_duty_new_reg[0]6__26_carry_n_1\,
      CO(1) => \half_duty_new_reg[0]6__26_carry_n_2\,
      CO(0) => \half_duty_new_reg[0]6__26_carry_n_3\,
      CYINIT => '0',
      DI(3) => slv_reg0(0),
      DI(2 downto 0) => B"001",
      O(3) => \half_duty_new_reg[0]6__26_carry_n_4\,
      O(2) => \half_duty_new_reg[0]6__26_carry_n_5\,
      O(1) => \half_duty_new_reg[0]6__26_carry_n_6\,
      O(0) => \NLW_half_duty_new_reg[0]6__26_carry_O_UNCONNECTED\(0),
      S(3) => \half_duty_new_reg[0]6__26_carry_i_1_n_0\,
      S(2) => \half_duty_new_reg[0]6__26_carry_i_2_n_0\,
      S(1) => \half_duty_new_reg[0]6__26_carry_i_3_n_0\,
      S(0) => slv_reg0(0)
    );
\half_duty_new_reg[0]6__26_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]6__26_carry_n_0\,
      CO(3) => \half_duty_new_reg[0]6__26_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[0]6__26_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[0]6__26_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[0]6__26_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => slv_reg0(4 downto 1),
      O(3) => \half_duty_new_reg[0]6__26_carry__0_n_4\,
      O(2) => \half_duty_new_reg[0]6__26_carry__0_n_5\,
      O(1) => \half_duty_new_reg[0]6__26_carry__0_n_6\,
      O(0) => \half_duty_new_reg[0]6__26_carry__0_n_7\,
      S(3) => \half_duty_new_reg[0]6__26_carry__0_i_1_n_0\,
      S(2) => \half_duty_new_reg[0]6__26_carry__0_i_2_n_0\,
      S(1) => \half_duty_new_reg[0]6__26_carry__0_i_3_n_0\,
      S(0) => \half_duty_new_reg[0]6__26_carry__0_i_4_n_0\
    );
\half_duty_new_reg[0]6__26_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(4),
      I1 => slv_reg0(7),
      O => \half_duty_new_reg[0]6__26_carry__0_i_1_n_0\
    );
\half_duty_new_reg[0]6__26_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(3),
      I1 => slv_reg0(6),
      O => \half_duty_new_reg[0]6__26_carry__0_i_2_n_0\
    );
\half_duty_new_reg[0]6__26_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => slv_reg0(5),
      O => \half_duty_new_reg[0]6__26_carry__0_i_3_n_0\
    );
\half_duty_new_reg[0]6__26_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg0(4),
      O => \half_duty_new_reg[0]6__26_carry__0_i_4_n_0\
    );
\half_duty_new_reg[0]6__26_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]6__26_carry__0_n_0\,
      CO(3) => \NLW_half_duty_new_reg[0]6__26_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new_reg[0]6__26_carry__1_n_1\,
      CO(1) => \half_duty_new_reg[0]6__26_carry__1_n_2\,
      CO(0) => \half_duty_new_reg[0]6__26_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => slv_reg0(7 downto 6),
      DI(0) => '0',
      O(3) => \half_duty_new_reg[0]6__26_carry__1_n_4\,
      O(2) => \half_duty_new_reg[0]6__26_carry__1_n_5\,
      O(1) => \half_duty_new_reg[0]6__26_carry__1_n_6\,
      O(0) => \half_duty_new_reg[0]6__26_carry__1_n_7\,
      S(3) => '1',
      S(2) => \half_duty_new_reg[0]6__26_carry__1_i_1_n_0\,
      S(1) => \half_duty_new_reg[0]6__26_carry__1_i_2_n_0\,
      S(0) => slv_reg0(5)
    );
\half_duty_new_reg[0]6__26_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(7),
      O => \half_duty_new_reg[0]6__26_carry__1_i_1_n_0\
    );
\half_duty_new_reg[0]6__26_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(6),
      O => \half_duty_new_reg[0]6__26_carry__1_i_2_n_0\
    );
\half_duty_new_reg[0]6__26_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(3),
      O => \half_duty_new_reg[0]6__26_carry_i_1_n_0\
    );
\half_duty_new_reg[0]6__26_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(2),
      O => \half_duty_new_reg[0]6__26_carry_i_2_n_0\
    );
\half_duty_new_reg[0]6__26_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(1),
      O => \half_duty_new_reg[0]6__26_carry_i_3_n_0\
    );
\half_duty_new_reg[0]6__53_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[0]6__53_carry_n_0\,
      CO(2) => \half_duty_new_reg[0]6__53_carry_n_1\,
      CO(1) => \half_duty_new_reg[0]6__53_carry_n_2\,
      CO(0) => \half_duty_new_reg[0]6__53_carry_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[0]6__53_carry_i_1_n_0\,
      DI(2) => \half_duty_new_reg[0]6__53_carry_i_2_n_0\,
      DI(1) => \half_duty_new_reg[0]6__53_carry_i_3_n_0\,
      DI(0) => \half_duty_new_reg[0]6__53_carry_i_4_n_0\,
      O(3) => \half_duty_new_reg[0]6__53_carry_n_4\,
      O(2) => \half_duty_new_reg[0]6__53_carry_n_5\,
      O(1) => \half_duty_new_reg[0]6__53_carry_n_6\,
      O(0) => \NLW_half_duty_new_reg[0]6__53_carry_O_UNCONNECTED\(0),
      S(3) => \half_duty_new_reg[0]6__53_carry_i_5_n_0\,
      S(2) => \half_duty_new_reg[0]6__53_carry_i_6_n_0\,
      S(1) => \half_duty_new_reg[0]6__53_carry_i_7_n_0\,
      S(0) => \half_duty_new_reg[0]6__53_carry_i_8_n_0\
    );
\half_duty_new_reg[0]6__53_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]6__53_carry_n_0\,
      CO(3) => \half_duty_new_reg[0]6__53_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[0]6__53_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[0]6__53_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[0]6__53_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[0]6__53_carry__0_i_1_n_0\,
      DI(2) => \half_duty_new_reg[0]6__53_carry__0_i_2_n_0\,
      DI(1) => \half_duty_new_reg[0]6__53_carry__0_i_3_n_0\,
      DI(0) => \half_duty_new_reg[0]6__53_carry__0_i_4_n_0\,
      O(3) => \half_duty_new_reg[0]6__53_carry__0_n_4\,
      O(2) => \half_duty_new_reg[0]6__53_carry__0_n_5\,
      O(1) => \half_duty_new_reg[0]6__53_carry__0_n_6\,
      O(0) => \half_duty_new_reg[0]6__53_carry__0_n_7\,
      S(3) => \half_duty_new_reg[0]6__53_carry__0_i_5_n_0\,
      S(2) => \half_duty_new_reg[0]6__53_carry__0_i_6_n_0\,
      S(1) => \half_duty_new_reg[0]6__53_carry__0_i_7_n_0\,
      S(0) => \half_duty_new_reg[0]6__53_carry__0_i_8_n_0\
    );
\half_duty_new_reg[0]6__53_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry__0_n_4\,
      I1 => \half_duty_new_reg[0]6__26_carry__0_n_6\,
      O => \half_duty_new_reg[0]6__53_carry__0_i_1_n_0\
    );
\half_duty_new_reg[0]6__53_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry__0_n_5\,
      I1 => \half_duty_new_reg[0]6__26_carry__0_n_7\,
      O => \half_duty_new_reg[0]6__53_carry__0_i_2_n_0\
    );
\half_duty_new_reg[0]6__53_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry__0_n_6\,
      I1 => slv_reg0(7),
      I2 => \half_duty_new_reg[0]6__26_carry_n_4\,
      O => \half_duty_new_reg[0]6__53_carry__0_i_3_n_0\
    );
\half_duty_new_reg[0]6__53_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry__0_n_7\,
      I1 => slv_reg0(6),
      I2 => \half_duty_new_reg[0]6__26_carry_n_5\,
      O => \half_duty_new_reg[0]6__53_carry__0_i_4_n_0\
    );
\half_duty_new_reg[0]6__53_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__0_i_1_n_0\,
      I1 => \half_duty_new_reg[0]6__26_carry__0_n_5\,
      I2 => \half_duty_new_reg[0]6_carry__1_n_7\,
      O => \half_duty_new_reg[0]6__53_carry__0_i_5_n_0\
    );
\half_duty_new_reg[0]6__53_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry__0_n_4\,
      I1 => \half_duty_new_reg[0]6__26_carry__0_n_6\,
      I2 => \half_duty_new_reg[0]6__53_carry__0_i_2_n_0\,
      O => \half_duty_new_reg[0]6__53_carry__0_i_6_n_0\
    );
\half_duty_new_reg[0]6__53_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry__0_n_5\,
      I1 => \half_duty_new_reg[0]6__26_carry__0_n_7\,
      I2 => \half_duty_new_reg[0]6__53_carry__0_i_3_n_0\,
      O => \half_duty_new_reg[0]6__53_carry__0_i_7_n_0\
    );
\half_duty_new_reg[0]6__53_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry__0_n_6\,
      I1 => slv_reg0(7),
      I2 => \half_duty_new_reg[0]6__26_carry_n_4\,
      I3 => \half_duty_new_reg[0]6__53_carry__0_i_4_n_0\,
      O => \half_duty_new_reg[0]6__53_carry__0_i_8_n_0\
    );
\half_duty_new_reg[0]6__53_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]6__53_carry__0_n_0\,
      CO(3) => \half_duty_new_reg[0]6__53_carry__1_n_0\,
      CO(2) => \half_duty_new_reg[0]6__53_carry__1_n_1\,
      CO(1) => \half_duty_new_reg[0]6__53_carry__1_n_2\,
      CO(0) => \half_duty_new_reg[0]6__53_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \half_duty_new_reg[0]6__26_carry__1_n_6\,
      DI(1) => \half_duty_new_reg[0]6__53_carry__1_i_1_n_0\,
      DI(0) => \half_duty_new_reg[0]6__53_carry__1_i_2_n_0\,
      O(3) => \half_duty_new_reg[0]6__53_carry__1_n_4\,
      O(2) => \half_duty_new_reg[0]6__53_carry__1_n_5\,
      O(1) => \half_duty_new_reg[0]6__53_carry__1_n_6\,
      O(0) => \half_duty_new_reg[0]6__53_carry__1_n_7\,
      S(3) => \half_duty_new_reg[0]6__26_carry__1_n_5\,
      S(2) => \half_duty_new_reg[0]6__53_carry__1_i_3_n_0\,
      S(1) => \half_duty_new_reg[0]6__53_carry__1_i_4_n_0\,
      S(0) => \half_duty_new_reg[0]6__53_carry__1_i_5_n_0\
    );
\half_duty_new_reg[0]6__53_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__26_carry__0_n_4\,
      I1 => \half_duty_new_reg[0]6_carry__1_n_6\,
      O => \half_duty_new_reg[0]6__53_carry__1_i_1_n_0\
    );
\half_duty_new_reg[0]6__53_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry__1_n_7\,
      I1 => \half_duty_new_reg[0]6__26_carry__0_n_5\,
      O => \half_duty_new_reg[0]6__53_carry__1_i_2_n_0\
    );
\half_duty_new_reg[0]6__53_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry__1_n_1\,
      I1 => \half_duty_new_reg[0]6__26_carry__1_n_7\,
      I2 => \half_duty_new_reg[0]6__26_carry__1_n_6\,
      O => \half_duty_new_reg[0]6__53_carry__1_i_3_n_0\
    );
\half_duty_new_reg[0]6__53_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry__1_n_6\,
      I1 => \half_duty_new_reg[0]6__26_carry__0_n_4\,
      I2 => \half_duty_new_reg[0]6__26_carry__1_n_7\,
      I3 => \half_duty_new_reg[0]6_carry__1_n_1\,
      O => \half_duty_new_reg[0]6__53_carry__1_i_4_n_0\
    );
\half_duty_new_reg[0]6__53_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__26_carry__0_n_5\,
      I1 => \half_duty_new_reg[0]6_carry__1_n_7\,
      I2 => \half_duty_new_reg[0]6__26_carry__0_n_4\,
      I3 => \half_duty_new_reg[0]6_carry__1_n_6\,
      O => \half_duty_new_reg[0]6__53_carry__1_i_5_n_0\
    );
\half_duty_new_reg[0]6__53_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]6__53_carry__1_n_0\,
      CO(3 downto 1) => \NLW_half_duty_new_reg[0]6__53_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \half_duty_new_reg[0]6__53_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \half_duty_new_reg[0]6__26_carry__1_n_4\,
      O(3 downto 2) => \NLW_half_duty_new_reg[0]6__53_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1) => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O(0) => \half_duty_new_reg[0]6__53_carry__2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \half_duty_new_reg[0]6__26_carry__1_n_4\,
      S(0) => \half_duty_new_reg[0]6__26_carry__1_n_4\
    );
\half_duty_new_reg[0]6__53_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry_n_4\,
      I1 => slv_reg0(5),
      I2 => \half_duty_new_reg[0]6__26_carry_n_6\,
      O => \half_duty_new_reg[0]6__53_carry_i_1_n_0\
    );
\half_duty_new_reg[0]6__53_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry_n_5\,
      I1 => slv_reg0(4),
      I2 => \half_duty_new_reg[0]6_carry_n_7\,
      O => \half_duty_new_reg[0]6__53_carry_i_2_n_0\
    );
\half_duty_new_reg[0]6__53_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => slv_reg0(3),
      I1 => \half_duty_new_reg[0]6_carry_n_6\,
      O => \half_duty_new_reg[0]6__53_carry_i_3_n_0\
    );
\half_duty_new_reg[0]6__53_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => slv_reg0(0),
      O => \half_duty_new_reg[0]6__53_carry_i_4_n_0\
    );
\half_duty_new_reg[0]6__53_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry__0_n_7\,
      I1 => slv_reg0(6),
      I2 => \half_duty_new_reg[0]6__26_carry_n_5\,
      I3 => \half_duty_new_reg[0]6__53_carry_i_1_n_0\,
      O => \half_duty_new_reg[0]6__53_carry_i_5_n_0\
    );
\half_duty_new_reg[0]6__53_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry_n_4\,
      I1 => slv_reg0(5),
      I2 => \half_duty_new_reg[0]6__26_carry_n_6\,
      I3 => \half_duty_new_reg[0]6__53_carry_i_2_n_0\,
      O => \half_duty_new_reg[0]6__53_carry_i_6_n_0\
    );
\half_duty_new_reg[0]6__53_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry_n_5\,
      I1 => slv_reg0(4),
      I2 => \half_duty_new_reg[0]6_carry_n_7\,
      I3 => \half_duty_new_reg[0]6__53_carry_i_3_n_0\,
      O => \half_duty_new_reg[0]6__53_carry_i_7_n_0\
    );
\half_duty_new_reg[0]6__53_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => slv_reg0(3),
      I1 => \half_duty_new_reg[0]6_carry_n_6\,
      I2 => slv_reg0(0),
      I3 => slv_reg0(2),
      O => \half_duty_new_reg[0]6__53_carry_i_8_n_0\
    );
\half_duty_new_reg[0]6_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[0]6_carry_n_0\,
      CO(2) => \half_duty_new_reg[0]6_carry_n_1\,
      CO(1) => \half_duty_new_reg[0]6_carry_n_2\,
      CO(0) => \half_duty_new_reg[0]6_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => slv_reg0(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3) => \half_duty_new_reg[0]6_carry_n_4\,
      O(2) => \half_duty_new_reg[0]6_carry_n_5\,
      O(1) => \half_duty_new_reg[0]6_carry_n_6\,
      O(0) => \half_duty_new_reg[0]6_carry_n_7\,
      S(3) => \half_duty_new_reg[0]6_carry_i_1_n_0\,
      S(2) => \half_duty_new_reg[0]6_carry_i_2_n_0\,
      S(1) => \half_duty_new_reg[0]6_carry_i_3_n_0\,
      S(0) => slv_reg0(0)
    );
\half_duty_new_reg[0]6_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]6_carry_n_0\,
      CO(3) => \half_duty_new_reg[0]6_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[0]6_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[0]6_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[0]6_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => slv_reg0(7),
      DI(2 downto 0) => slv_reg0(4 downto 2),
      O(3) => \half_duty_new_reg[0]6_carry__0_n_4\,
      O(2) => \half_duty_new_reg[0]6_carry__0_n_5\,
      O(1) => \half_duty_new_reg[0]6_carry__0_n_6\,
      O(0) => \half_duty_new_reg[0]6_carry__0_n_7\,
      S(3) => \half_duty_new_reg[0]6_carry__0_i_1_n_0\,
      S(2) => \half_duty_new_reg[0]6_carry__0_i_2_n_0\,
      S(1) => \half_duty_new_reg[0]6_carry__0_i_3_n_0\,
      S(0) => \half_duty_new_reg[0]6_carry__0_i_4_n_0\
    );
\half_duty_new_reg[0]6_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => slv_reg0(7),
      I1 => slv_reg0(5),
      O => \half_duty_new_reg[0]6_carry__0_i_1_n_0\
    );
\half_duty_new_reg[0]6_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(4),
      I1 => slv_reg0(6),
      O => \half_duty_new_reg[0]6_carry__0_i_2_n_0\
    );
\half_duty_new_reg[0]6_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(3),
      I1 => slv_reg0(5),
      O => \half_duty_new_reg[0]6_carry__0_i_3_n_0\
    );
\half_duty_new_reg[0]6_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => slv_reg0(4),
      O => \half_duty_new_reg[0]6_carry__0_i_4_n_0\
    );
\half_duty_new_reg[0]6_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]6_carry__0_n_0\,
      CO(3) => \NLW_half_duty_new_reg[0]6_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new_reg[0]6_carry__1_n_1\,
      CO(1) => \NLW_half_duty_new_reg[0]6_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \half_duty_new_reg[0]6_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => slv_reg0(7 downto 6),
      O(3 downto 2) => \NLW_half_duty_new_reg[0]6_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \half_duty_new_reg[0]6_carry__1_n_6\,
      O(0) => \half_duty_new_reg[0]6_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \half_duty_new_reg[0]6_carry__1_i_1_n_0\,
      S(0) => \half_duty_new_reg[0]6_carry__1_i_2_n_0\
    );
\half_duty_new_reg[0]6_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(7),
      O => \half_duty_new_reg[0]6_carry__1_i_1_n_0\
    );
\half_duty_new_reg[0]6_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(7),
      I1 => slv_reg0(6),
      O => \half_duty_new_reg[0]6_carry__1_i_2_n_0\
    );
\half_duty_new_reg[0]6_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg0(3),
      O => \half_duty_new_reg[0]6_carry_i_1_n_0\
    );
\half_duty_new_reg[0]6_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => slv_reg0(0),
      O => \half_duty_new_reg[0]6_carry_i_2_n_0\
    );
\half_duty_new_reg[0]6_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(1),
      O => \half_duty_new_reg[0]6_carry_i_3_n_0\
    );
\half_duty_new_reg[0]7_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[0]7_carry_n_0\,
      CO(2) => \half_duty_new_reg[0]7_carry_n_1\,
      CO(1) => \half_duty_new_reg[0]7_carry_n_2\,
      CO(0) => \half_duty_new_reg[0]7_carry_n_3\,
      CYINIT => '1',
      DI(3) => \half_duty_new_reg[0]7_carry_i_1_n_0\,
      DI(2) => \half_duty_new_reg[0]7_carry_i_2_n_0\,
      DI(1) => \half_duty_new_reg[0]7_carry_i_3_n_0\,
      DI(0) => \half_duty_new_reg[0]7_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[0]7_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[0]7_carry_i_5_n_0\,
      S(2) => \half_duty_new_reg[0]7_carry_i_6_n_0\,
      S(1) => \half_duty_new_reg[0]7_carry_i_7_n_0\,
      S(0) => \half_duty_new_reg[0]7_carry_i_8_n_0\
    );
\half_duty_new_reg[0]7_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]7_carry_n_0\,
      CO(3) => \half_duty_new_reg[0]7_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[0]7_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[0]7_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[0]7_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[0]7_carry__0_i_1_n_0\,
      DI(2) => \half_duty_new_reg[0]7_carry__0_i_2_n_0\,
      DI(1) => \half_duty_new_reg[0]7_carry__0_i_3_n_0\,
      DI(0) => \half_duty_new_reg[0]7_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[0]7_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[0]7_carry__0_i_5_n_0\,
      S(2) => \half_duty_new_reg[0]7_carry__0_i_6_n_0\,
      S(1) => \half_duty_new_reg[0]7_carry__0_i_7_n_0\,
      S(0) => \half_duty_new_reg[0]7_carry__0_i_8_n_0\
    );
\half_duty_new_reg[0]7_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__1_n_4\,
      I1 => \half_duty_new_reg[0]6__53_carry__2_n_7\,
      O => \half_duty_new_reg[0]7_carry__0_i_1_n_0\
    );
\half_duty_new_reg[0]7_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__1_n_6\,
      I1 => \half_duty_new_reg[0]6__53_carry__1_n_5\,
      O => \half_duty_new_reg[0]7_carry__0_i_2_n_0\
    );
\half_duty_new_reg[0]7_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__0_n_4\,
      I1 => \half_duty_new_reg[0]6__53_carry__1_n_7\,
      O => \half_duty_new_reg[0]7_carry__0_i_3_n_0\
    );
\half_duty_new_reg[0]7_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__0_n_6\,
      I1 => \half_duty_new_reg[0]6__53_carry__0_n_5\,
      O => \half_duty_new_reg[0]7_carry__0_i_4_n_0\
    );
\half_duty_new_reg[0]7_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__2_n_7\,
      I1 => \half_duty_new_reg[0]6__53_carry__1_n_4\,
      O => \half_duty_new_reg[0]7_carry__0_i_5_n_0\
    );
\half_duty_new_reg[0]7_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__1_n_5\,
      I1 => \half_duty_new_reg[0]6__53_carry__1_n_6\,
      O => \half_duty_new_reg[0]7_carry__0_i_6_n_0\
    );
\half_duty_new_reg[0]7_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__1_n_7\,
      I1 => \half_duty_new_reg[0]6__53_carry__0_n_4\,
      O => \half_duty_new_reg[0]7_carry__0_i_7_n_0\
    );
\half_duty_new_reg[0]7_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__0_n_5\,
      I1 => \half_duty_new_reg[0]6__53_carry__0_n_6\,
      O => \half_duty_new_reg[0]7_carry__0_i_8_n_0\
    );
\half_duty_new_reg[0]7_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]7_carry__0_n_0\,
      CO(3 downto 1) => \NLW_half_duty_new_reg[0]7_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \half_duty_new_reg[0]7\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_half_duty_new_reg[0]7_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \half_duty_new_reg[0]7_carry__1_i_1_n_0\
    );
\half_duty_new_reg[0]7_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[0]7_carry__1_i_1_n_0\
    );
\half_duty_new_reg[0]7_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry_n_4\,
      I1 => \half_duty_new_reg[0]6__53_carry__0_n_7\,
      O => \half_duty_new_reg[0]7_carry_i_1_n_0\
    );
\half_duty_new_reg[0]7_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry_n_6\,
      I1 => \half_duty_new_reg[0]6__53_carry_n_5\,
      O => \half_duty_new_reg[0]7_carry_i_2_n_0\
    );
\half_duty_new_reg[0]7_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E77E"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(2),
      I2 => slv_reg0(3),
      I3 => \half_duty_new_reg[0]6_carry_n_6\,
      O => \half_duty_new_reg[0]7_carry_i_3_n_0\
    );
\half_duty_new_reg[0]7_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      O => \half_duty_new_reg[0]7_carry_i_4_n_0\
    );
\half_duty_new_reg[0]7_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry__0_n_7\,
      I1 => \half_duty_new_reg[0]6__53_carry_n_4\,
      O => \half_duty_new_reg[0]7_carry_i_5_n_0\
    );
\half_duty_new_reg[0]7_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[0]6__53_carry_n_5\,
      I1 => \half_duty_new_reg[0]6__53_carry_n_6\,
      O => \half_duty_new_reg[0]7_carry_i_6_n_0\
    );
\half_duty_new_reg[0]7_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6009"
    )
        port map (
      I0 => \half_duty_new_reg[0]6_carry_n_6\,
      I1 => slv_reg0(3),
      I2 => slv_reg0(2),
      I3 => slv_reg0(0),
      O => \half_duty_new_reg[0]7_carry_i_7_n_0\
    );
\half_duty_new_reg[0]7_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg0(0),
      O => \half_duty_new_reg[0]7_carry_i_8_n_0\
    );
\half_duty_new_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new_reg[0]10_in\(0),
      Q => \half_duty_new_reg[0]_1\(0),
      R => '0'
    );
\half_duty_new_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[0][1]_i_1_n_0\,
      Q => \half_duty_new_reg[0]_1\(1),
      R => '0'
    );
\half_duty_new_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[0][2]_i_1_n_0\,
      Q => \half_duty_new_reg[0]_1\(2),
      R => '0'
    );
\half_duty_new_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[0][3]_i_1_n_0\,
      Q => \half_duty_new_reg[0]_1\(3),
      R => '0'
    );
\half_duty_new_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[0][4]_i_1_n_0\,
      Q => \half_duty_new_reg[0]_1\(4),
      R => '0'
    );
\half_duty_new_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[0][5]_i_1_n_0\,
      Q => \half_duty_new_reg[0]_1\(5),
      R => '0'
    );
\half_duty_new_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[0][6]_i_1_n_0\,
      Q => \half_duty_new_reg[0]_1\(6),
      R => '0'
    );
\half_duty_new_reg[0][6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[0]4_carry__1_i_9_n_0\,
      CO(3) => \NLW_half_duty_new_reg[0][6]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new_reg[0][6]_i_2_n_1\,
      CO(1) => \NLW_half_duty_new_reg[0][6]_i_2_CO_UNCONNECTED\(1),
      CO(0) => \half_duty_new_reg[0][6]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_half_duty_new_reg[0][6]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \half_duty_new_reg[0]4\(22 downto 21),
      S(3 downto 2) => B"01",
      S(1) => \half_duty_new[0][6]_i_4_n_0\,
      S(0) => \half_duty_new[0][6]_i_5_n_0\
    );
\half_duty_new_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[0][7]_i_1_n_0\,
      Q => \half_duty_new_reg[0]_1\(7),
      R => '0'
    );
\half_duty_new_reg[1]4_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[1]4_carry_n_0\,
      CO(2) => \half_duty_new_reg[1]4_carry_n_1\,
      CO(1) => \half_duty_new_reg[1]4_carry_n_2\,
      CO(0) => \half_duty_new_reg[1]4_carry_n_3\,
      CYINIT => '1',
      DI(3) => \half_duty_new_reg[1]4_carry_i_1_n_0\,
      DI(2) => \half_duty_new_reg[1]4_carry_i_2_n_0\,
      DI(1) => \half_duty_new_reg[1]4_carry_i_3_n_0\,
      DI(0) => \half_duty_new_reg[1]4_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[1]4_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[1]4_carry_i_5_n_0\,
      S(2) => \half_duty_new_reg[1]4_carry_i_6_n_0\,
      S(1) => \half_duty_new_reg[1]4_carry_i_7_n_0\,
      S(0) => \half_duty_new_reg[1]4_carry_i_8_n_0\
    );
\half_duty_new_reg[1]4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]4_carry_n_0\,
      CO(3) => \half_duty_new_reg[1]4_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[1]4_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[1]4_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[1]4_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[1]4_carry__0_i_1_n_0\,
      DI(2) => \half_duty_new_reg[1]4_carry__0_i_2_n_0\,
      DI(1) => \half_duty_new_reg[1]4_carry__0_i_3_n_0\,
      DI(0) => \half_duty_new_reg[1]4_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[1]4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[1]4_carry__0_i_5_n_0\,
      S(2) => \half_duty_new_reg[1]4_carry__0_i_6_n_0\,
      S(1) => \half_duty_new_reg[1]4_carry__0_i_7_n_0\,
      S(0) => \half_duty_new_reg[1]4_carry__0_i_8_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(14),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[1]4\(15),
      O => \half_duty_new_reg[1]4_carry__0_i_1_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]4_carry_i_9_n_0\,
      CO(3) => \half_duty_new_reg[1]4_carry__0_i_10_n_0\,
      CO(2) => \half_duty_new_reg[1]4_carry__0_i_10_n_1\,
      CO(1) => \half_duty_new_reg[1]4_carry__0_i_10_n_2\,
      CO(0) => \half_duty_new_reg[1]4_carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[1]4\(12 downto 9),
      S(3) => \half_duty_new_reg[1]4_carry__0_i_15_n_0\,
      S(2) => \half_duty_new_reg[1]4_carry__0_i_16_n_0\,
      S(1) => \half_duty_new_reg[1]4_carry__0_i_17_n_0\,
      S(0) => \half_duty_new_reg[1]4_carry__0_i_18_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__0_i_11_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__0_i_12_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__0_i_13_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__0_i_14_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__0_i_15_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__0_i_16_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(18),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__0_i_17_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(17),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_7\,
      O => \half_duty_new_reg[1]4_carry__0_i_18_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(12),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[1]4\(13),
      O => \half_duty_new_reg[1]4_carry__0_i_2_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCF8B8BCFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(10),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]6\(18),
      I4 => \half_duty_new_reg[1]4\(11),
      I5 => \half_duty_new_reg[1]50_carry__3_n_7\,
      O => \half_duty_new_reg[1]4_carry__0_i_3_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEFEFEAEAEA"
    )
        port map (
      I0 => \half_duty_new[1][7]_i_4_n_0\,
      I1 => \half_duty_new_reg[1]4\(9),
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_7\,
      I4 => \half_duty_new_reg[1]7\,
      I5 => \half_duty_new_reg[1]6\(17),
      O => \half_duty_new_reg[1]4_carry__0_i_4_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(15),
      I1 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[1]4\(14),
      O => \half_duty_new_reg[1]4_carry__0_i_5_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(13),
      I1 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[1]4\(12),
      O => \half_duty_new_reg[1]4_carry__0_i_6_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF053333FF05"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]4\(11),
      I2 => \half_duty_new_reg[1]6\(18),
      I3 => \half_duty_new_reg[1]7\,
      I4 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I5 => \half_duty_new_reg[1]4\(10),
      O => \half_duty_new_reg[1]4_carry__0_i_7_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001DFF1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(17),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_7\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[1]4\(9),
      I5 => \half_duty_new[1][7]_i_4_n_0\,
      O => \half_duty_new_reg[1]4_carry__0_i_8_n_0\
    );
\half_duty_new_reg[1]4_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]4_carry__0_i_10_n_0\,
      CO(3) => \half_duty_new_reg[1]4_carry__0_i_9_n_0\,
      CO(2) => \half_duty_new_reg[1]4_carry__0_i_9_n_1\,
      CO(1) => \half_duty_new_reg[1]4_carry__0_i_9_n_2\,
      CO(0) => \half_duty_new_reg[1]4_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[1]4\(16 downto 13),
      S(3) => \half_duty_new_reg[1]4_carry__0_i_11_n_0\,
      S(2) => \half_duty_new_reg[1]4_carry__0_i_12_n_0\,
      S(1) => \half_duty_new_reg[1]4_carry__0_i_13_n_0\,
      S(0) => \half_duty_new_reg[1]4_carry__0_i_14_n_0\
    );
\half_duty_new_reg[1]4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]4_carry__0_n_0\,
      CO(3) => \half_duty_new_reg[1]4_carry__1_n_0\,
      CO(2) => \half_duty_new_reg[1]4_carry__1_n_1\,
      CO(1) => \half_duty_new_reg[1]4_carry__1_n_2\,
      CO(0) => \half_duty_new_reg[1]4_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[1]4_carry__1_i_1_n_0\,
      DI(2) => \half_duty_new_reg[1]4_carry__1_i_2_n_0\,
      DI(1) => \half_duty_new_reg[1]4_carry__1_i_3_n_0\,
      DI(0) => \half_duty_new_reg[1]4_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[1]4_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[1]4_carry__1_i_5_n_0\,
      S(2) => \half_duty_new_reg[1]4_carry__1_i_6_n_0\,
      S(1) => \half_duty_new_reg[1]4_carry__1_i_7_n_0\,
      S(0) => \half_duty_new_reg[1]4_carry__1_i_8_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B88CFCC"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(22),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[1][6]_i_2_n_1\,
      O => \half_duty_new_reg[1]4_carry__1_i_1_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__1_i_10_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__1_i_11_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__1_i_12_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__1_i_13_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(20),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[1]4\(21),
      O => \half_duty_new_reg[1]4_carry__1_i_2_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(18),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[1]4\(19),
      O => \half_duty_new_reg[1]4_carry__1_i_3_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(16),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[1]4\(17),
      O => \half_duty_new_reg[1]4_carry__1_i_4_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F3AAF3"
    )
        port map (
      I0 => \half_duty_new_reg[1][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[1]4\(22),
      O => \half_duty_new_reg[1]4_carry__1_i_5_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(21),
      I1 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[1]4\(20),
      O => \half_duty_new_reg[1]4_carry__1_i_6_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(19),
      I1 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[1]4\(18),
      O => \half_duty_new_reg[1]4_carry__1_i_7_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(17),
      I1 => \half_duty_new_reg[1]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[1]7\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[1]4\(16),
      O => \half_duty_new_reg[1]4_carry__1_i_8_n_0\
    );
\half_duty_new_reg[1]4_carry__1_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]4_carry__0_i_9_n_0\,
      CO(3) => \half_duty_new_reg[1]4_carry__1_i_9_n_0\,
      CO(2) => \half_duty_new_reg[1]4_carry__1_i_9_n_1\,
      CO(1) => \half_duty_new_reg[1]4_carry__1_i_9_n_2\,
      CO(0) => \half_duty_new_reg[1]4_carry__1_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[1]4\(20 downto 17),
      S(3) => \half_duty_new_reg[1]4_carry__1_i_10_n_0\,
      S(2) => \half_duty_new_reg[1]4_carry__1_i_11_n_0\,
      S(1) => \half_duty_new_reg[1]4_carry__1_i_12_n_0\,
      S(0) => \half_duty_new_reg[1]4_carry__1_i_13_n_0\
    );
\half_duty_new_reg[1]4_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]4_carry__1_n_0\,
      CO(3) => \half_duty_new_reg[1]4_carry__2_n_0\,
      CO(2) => \half_duty_new_reg[1]4_carry__2_n_1\,
      CO(1) => \half_duty_new_reg[1]4_carry__2_n_2\,
      CO(0) => \half_duty_new_reg[1]4_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \half_duty_new_reg[1]4_carry__2_i_1_n_0\,
      DI(1) => \half_duty_new_reg[1]4_carry__2_i_2_n_0\,
      DI(0) => \half_duty_new_reg[1]4_carry__2_i_3_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[1]4_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[1]4_carry__2_i_4_n_0\,
      S(2) => \half_duty_new_reg[1]4_carry__2_i_5_n_0\,
      S(1) => \half_duty_new_reg[1]4_carry__2_i_6_n_0\,
      S(0) => \half_duty_new_reg[1]4_carry__2_i_7_n_0\
    );
\half_duty_new_reg[1]4_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[1][6]_i_2_n_1\,
      O => \half_duty_new_reg[1]4_carry__2_i_1_n_0\
    );
\half_duty_new_reg[1]4_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[1][6]_i_2_n_1\,
      O => \half_duty_new_reg[1]4_carry__2_i_2_n_0\
    );
\half_duty_new_reg[1]4_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[1][6]_i_2_n_1\,
      O => \half_duty_new_reg[1]4_carry__2_i_3_n_0\
    );
\half_duty_new_reg[1]4_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[1][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__2_i_4_n_0\
    );
\half_duty_new_reg[1]4_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[1][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__2_i_5_n_0\
    );
\half_duty_new_reg[1]4_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[1][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__2_i_6_n_0\
    );
\half_duty_new_reg[1]4_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[1][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]4_carry__2_i_7_n_0\
    );
\half_duty_new_reg[1]4_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEFEFEAEAEA"
    )
        port map (
      I0 => \half_duty_new[1][5]_i_3_n_0\,
      I1 => \half_duty_new_reg[1]4\(7),
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[1]6__53_carry__1_n_5\,
      I4 => \half_duty_new_reg[1]7\,
      I5 => \half_duty_new_reg[1]6\(15),
      O => \half_duty_new_reg[1]4_carry_i_1_n_0\
    );
\half_duty_new_reg[1]4_carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[1]4\(4),
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[1]6__53_carry__0_n_4\,
      I3 => \half_duty_new_reg[1]7\,
      I4 => \half_duty_new_reg[1]6\(12),
      O => \half_duty_new_reg[1]4_carry_i_10_n_0\
    );
\half_duty_new_reg[1]4_carry_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[1]4_carry_i_11_n_0\,
      CO(2) => \half_duty_new_reg[1]4_carry_i_11_n_1\,
      CO(1) => \half_duty_new_reg[1]4_carry_i_11_n_2\,
      CO(0) => \half_duty_new_reg[1]4_carry_i_11_n_3\,
      CYINIT => \half_duty_new_reg[1]4_carry_i_16_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[1]4\(4 downto 1),
      S(3) => \half_duty_new_reg[1]4_carry_i_17_n_0\,
      S(2) => \half_duty_new_reg[1]4_carry_i_18_n_0\,
      S(1) => \half_duty_new_reg[1]4_carry_i_19_n_0\,
      S(0) => \half_duty_new_reg[1]4_carry_i_20_n_0\
    );
\half_duty_new_reg[1]4_carry_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(16),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__1_n_4\,
      O => \half_duty_new_reg[1]4_carry_i_12_n_0\
    );
\half_duty_new_reg[1]4_carry_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(15),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__1_n_5\,
      O => \half_duty_new_reg[1]4_carry_i_13_n_0\
    );
\half_duty_new_reg[1]4_carry_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(14),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__1_n_6\,
      O => \half_duty_new_reg[1]4_carry_i_14_n_0\
    );
\half_duty_new_reg[1]4_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(13),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__1_n_7\,
      O => \half_duty_new_reg[1]4_carry_i_15_n_0\
    );
\half_duty_new_reg[1]4_carry_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(8),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry_n_4\,
      O => \half_duty_new_reg[1]4_carry_i_16_n_0\
    );
\half_duty_new_reg[1]4_carry_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(12),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__0_n_4\,
      O => \half_duty_new_reg[1]4_carry_i_17_n_0\
    );
\half_duty_new_reg[1]4_carry_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(11),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__0_n_5\,
      O => \half_duty_new_reg[1]4_carry_i_18_n_0\
    );
\half_duty_new_reg[1]4_carry_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(10),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__0_n_6\,
      O => \half_duty_new_reg[1]4_carry_i_19_n_0\
    );
\half_duty_new_reg[1]4_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEFEFEAEAEA"
    )
        port map (
      I0 => \half_duty_new_reg[1]4_carry_i_10_n_0\,
      I1 => \half_duty_new_reg[1]4\(5),
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[1]6__53_carry__1_n_7\,
      I4 => \half_duty_new_reg[1]7\,
      I5 => \half_duty_new_reg[1]6\(13),
      O => \half_duty_new_reg[1]4_carry_i_2_n_0\
    );
\half_duty_new_reg[1]4_carry_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(9),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__0_n_7\,
      O => \half_duty_new_reg[1]4_carry_i_20_n_0\
    );
\half_duty_new_reg[1]4_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEFEFEAEAEA"
    )
        port map (
      I0 => \half_duty_new[1][2]_i_3_n_0\,
      I1 => \half_duty_new_reg[1]4\(3),
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[1]6__53_carry__0_n_5\,
      I4 => \half_duty_new_reg[1]7\,
      I5 => \half_duty_new_reg[1]6\(11),
      O => \half_duty_new_reg[1]4_carry_i_3_n_0\
    );
\half_duty_new_reg[1]4_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(9),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__0_n_7\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[1]4\(1),
      I5 => \half_duty_new[1][2]_i_5_n_0\,
      O => \half_duty_new_reg[1]4_carry_i_4_n_0\
    );
\half_duty_new_reg[1]4_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001DFF1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(15),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__1_n_5\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[1]4\(7),
      I5 => \half_duty_new[1][5]_i_3_n_0\,
      O => \half_duty_new_reg[1]4_carry_i_5_n_0\
    );
\half_duty_new_reg[1]4_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001DFF1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(13),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__1_n_7\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[1]4\(5),
      I5 => \half_duty_new_reg[1]4_carry_i_10_n_0\,
      O => \half_duty_new_reg[1]4_carry_i_6_n_0\
    );
\half_duty_new_reg[1]4_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001DFF1D"
    )
        port map (
      I0 => \half_duty_new_reg[1]6\(11),
      I1 => \half_duty_new_reg[1]7\,
      I2 => \half_duty_new_reg[1]6__53_carry__0_n_5\,
      I3 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[1]4\(3),
      I5 => \half_duty_new[1][2]_i_3_n_0\,
      O => \half_duty_new_reg[1]4_carry_i_7_n_0\
    );
\half_duty_new_reg[1]4_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1015101010151515"
    )
        port map (
      I0 => \half_duty_new[1][2]_i_5_n_0\,
      I1 => \half_duty_new_reg[1]4\(1),
      I2 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[1]6__53_carry__0_n_7\,
      I4 => \half_duty_new_reg[1]7\,
      I5 => \half_duty_new_reg[1]6\(9),
      O => \half_duty_new_reg[1]4_carry_i_8_n_0\
    );
\half_duty_new_reg[1]4_carry_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]4_carry_i_11_n_0\,
      CO(3) => \half_duty_new_reg[1]4_carry_i_9_n_0\,
      CO(2) => \half_duty_new_reg[1]4_carry_i_9_n_1\,
      CO(1) => \half_duty_new_reg[1]4_carry_i_9_n_2\,
      CO(0) => \half_duty_new_reg[1]4_carry_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[1]4\(8 downto 5),
      S(3) => \half_duty_new_reg[1]4_carry_i_12_n_0\,
      S(2) => \half_duty_new_reg[1]4_carry_i_13_n_0\,
      S(1) => \half_duty_new_reg[1]4_carry_i_14_n_0\,
      S(0) => \half_duty_new_reg[1]4_carry_i_15_n_0\
    );
\half_duty_new_reg[1]50_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[1]50_carry_n_0\,
      CO(2) => \half_duty_new_reg[1]50_carry_n_1\,
      CO(1) => \half_duty_new_reg[1]50_carry_n_2\,
      CO(0) => \half_duty_new_reg[1]50_carry_n_3\,
      CYINIT => \half_duty_new_reg[1]50_carry_i_1_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_half_duty_new_reg[1]50_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[1]50_carry_i_2_n_0\,
      S(2) => \half_duty_new_reg[1]50_carry_i_3_n_0\,
      S(1) => \half_duty_new_reg[1]50_carry_i_4_n_0\,
      S(0) => \half_duty_new_reg[1]50_carry_i_5_n_0\
    );
\half_duty_new_reg[1]50_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]50_carry_n_0\,
      CO(3) => \half_duty_new_reg[1]50_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[1]50_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[1]50_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[1]50_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \half_duty_new_reg[1]6\(10 downto 8),
      O(0) => \NLW_half_duty_new_reg[1]50_carry__0_O_UNCONNECTED\(0),
      S(3) => \half_duty_new_reg[1]50_carry__0_i_1_n_0\,
      S(2) => \half_duty_new_reg[1]50_carry__0_i_2_n_0\,
      S(1) => \half_duty_new_reg[1]50_carry__0_i_3_n_0\,
      S(0) => \half_duty_new_reg[1]50_carry__0_i_4_n_0\
    );
\half_duty_new_reg[1]50_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__0_n_6\,
      O => \half_duty_new_reg[1]50_carry__0_i_1_n_0\
    );
\half_duty_new_reg[1]50_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__0_n_7\,
      O => \half_duty_new_reg[1]50_carry__0_i_2_n_0\
    );
\half_duty_new_reg[1]50_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry_n_4\,
      O => \half_duty_new_reg[1]50_carry__0_i_3_n_0\
    );
\half_duty_new_reg[1]50_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry_n_5\,
      O => \half_duty_new_reg[1]50_carry__0_i_4_n_0\
    );
\half_duty_new_reg[1]50_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]50_carry__0_n_0\,
      CO(3) => \half_duty_new_reg[1]50_carry__1_n_0\,
      CO(2) => \half_duty_new_reg[1]50_carry__1_n_1\,
      CO(1) => \half_duty_new_reg[1]50_carry__1_n_2\,
      CO(0) => \half_duty_new_reg[1]50_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[1]6\(14 downto 11),
      S(3) => \half_duty_new_reg[1]50_carry__1_i_1_n_0\,
      S(2) => \half_duty_new_reg[1]50_carry__1_i_2_n_0\,
      S(1) => \half_duty_new_reg[1]50_carry__1_i_3_n_0\,
      S(0) => \half_duty_new_reg[1]50_carry__1_i_4_n_0\
    );
\half_duty_new_reg[1]50_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__1_n_6\,
      O => \half_duty_new_reg[1]50_carry__1_i_1_n_0\
    );
\half_duty_new_reg[1]50_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__1_n_7\,
      O => \half_duty_new_reg[1]50_carry__1_i_2_n_0\
    );
\half_duty_new_reg[1]50_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__0_n_4\,
      O => \half_duty_new_reg[1]50_carry__1_i_3_n_0\
    );
\half_duty_new_reg[1]50_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__0_n_5\,
      O => \half_duty_new_reg[1]50_carry__1_i_4_n_0\
    );
\half_duty_new_reg[1]50_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]50_carry__1_n_0\,
      CO(3) => \half_duty_new_reg[1]50_carry__2_n_0\,
      CO(2) => \half_duty_new_reg[1]50_carry__2_n_1\,
      CO(1) => \half_duty_new_reg[1]50_carry__2_n_2\,
      CO(0) => \half_duty_new_reg[1]50_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1000",
      O(3 downto 0) => \half_duty_new_reg[1]6\(18 downto 15),
      S(3) => \half_duty_new_reg[1]50_carry__2_i_1_n_0\,
      S(2) => \half_duty_new_reg[1]50_carry__2_i_2_n_0\,
      S(1) => \half_duty_new_reg[1]50_carry__2_i_3_n_0\,
      S(0) => \half_duty_new_reg[1]50_carry__2_i_4_n_0\
    );
\half_duty_new_reg[1]50_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]50_carry__2_i_1_n_0\
    );
\half_duty_new_reg[1]50_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__2_n_7\,
      O => \half_duty_new_reg[1]50_carry__2_i_2_n_0\
    );
\half_duty_new_reg[1]50_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__1_n_4\,
      O => \half_duty_new_reg[1]50_carry__2_i_3_n_0\
    );
\half_duty_new_reg[1]50_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__1_n_5\,
      O => \half_duty_new_reg[1]50_carry__2_i_4_n_0\
    );
\half_duty_new_reg[1]50_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]50_carry__2_n_0\,
      CO(3 downto 0) => \NLW_half_duty_new_reg[1]50_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_half_duty_new_reg[1]50_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \half_duty_new_reg[1]50_carry__3_n_7\,
      S(3 downto 0) => B"0001"
    );
\half_duty_new_reg[1]50_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(8),
      O => \half_duty_new_reg[1]50_carry_i_1_n_0\
    );
\half_duty_new_reg[1]50_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry_n_6\,
      O => \half_duty_new_reg[1]50_carry_i_2_n_0\
    );
\half_duty_new_reg[1]50_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry_n_6\,
      I1 => slv_reg0(11),
      I2 => slv_reg0(10),
      I3 => slv_reg0(8),
      O => \half_duty_new_reg[1]50_carry_i_3_n_0\
    );
\half_duty_new_reg[1]50_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => slv_reg0(8),
      O => \half_duty_new_reg[1]50_carry_i_4_n_0\
    );
\half_duty_new_reg[1]50_carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(9),
      O => \half_duty_new_reg[1]50_carry_i_5_n_0\
    );
\half_duty_new_reg[1]6__26_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[1]6__26_carry_n_0\,
      CO(2) => \half_duty_new_reg[1]6__26_carry_n_1\,
      CO(1) => \half_duty_new_reg[1]6__26_carry_n_2\,
      CO(0) => \half_duty_new_reg[1]6__26_carry_n_3\,
      CYINIT => '0',
      DI(3) => slv_reg0(8),
      DI(2 downto 0) => B"001",
      O(3) => \half_duty_new_reg[1]6__26_carry_n_4\,
      O(2) => \half_duty_new_reg[1]6__26_carry_n_5\,
      O(1) => \half_duty_new_reg[1]6__26_carry_n_6\,
      O(0) => \NLW_half_duty_new_reg[1]6__26_carry_O_UNCONNECTED\(0),
      S(3) => \half_duty_new_reg[1]6__26_carry_i_1_n_0\,
      S(2) => \half_duty_new_reg[1]6__26_carry_i_2_n_0\,
      S(1) => \half_duty_new_reg[1]6__26_carry_i_3_n_0\,
      S(0) => slv_reg0(8)
    );
\half_duty_new_reg[1]6__26_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]6__26_carry_n_0\,
      CO(3) => \half_duty_new_reg[1]6__26_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[1]6__26_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[1]6__26_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[1]6__26_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => slv_reg0(12 downto 9),
      O(3) => \half_duty_new_reg[1]6__26_carry__0_n_4\,
      O(2) => \half_duty_new_reg[1]6__26_carry__0_n_5\,
      O(1) => \half_duty_new_reg[1]6__26_carry__0_n_6\,
      O(0) => \half_duty_new_reg[1]6__26_carry__0_n_7\,
      S(3) => \half_duty_new_reg[1]6__26_carry__0_i_1_n_0\,
      S(2) => \half_duty_new_reg[1]6__26_carry__0_i_2_n_0\,
      S(1) => \half_duty_new_reg[1]6__26_carry__0_i_3_n_0\,
      S(0) => \half_duty_new_reg[1]6__26_carry__0_i_4_n_0\
    );
\half_duty_new_reg[1]6__26_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(12),
      I1 => slv_reg0(15),
      O => \half_duty_new_reg[1]6__26_carry__0_i_1_n_0\
    );
\half_duty_new_reg[1]6__26_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => slv_reg0(14),
      O => \half_duty_new_reg[1]6__26_carry__0_i_2_n_0\
    );
\half_duty_new_reg[1]6__26_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => slv_reg0(13),
      O => \half_duty_new_reg[1]6__26_carry__0_i_3_n_0\
    );
\half_duty_new_reg[1]6__26_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(9),
      I1 => slv_reg0(12),
      O => \half_duty_new_reg[1]6__26_carry__0_i_4_n_0\
    );
\half_duty_new_reg[1]6__26_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]6__26_carry__0_n_0\,
      CO(3) => \NLW_half_duty_new_reg[1]6__26_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new_reg[1]6__26_carry__1_n_1\,
      CO(1) => \half_duty_new_reg[1]6__26_carry__1_n_2\,
      CO(0) => \half_duty_new_reg[1]6__26_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => slv_reg0(15 downto 14),
      DI(0) => '0',
      O(3) => \half_duty_new_reg[1]6__26_carry__1_n_4\,
      O(2) => \half_duty_new_reg[1]6__26_carry__1_n_5\,
      O(1) => \half_duty_new_reg[1]6__26_carry__1_n_6\,
      O(0) => \half_duty_new_reg[1]6__26_carry__1_n_7\,
      S(3) => '1',
      S(2) => \half_duty_new_reg[1]6__26_carry__1_i_1_n_0\,
      S(1) => \half_duty_new_reg[1]6__26_carry__1_i_2_n_0\,
      S(0) => slv_reg0(13)
    );
\half_duty_new_reg[1]6__26_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(15),
      O => \half_duty_new_reg[1]6__26_carry__1_i_1_n_0\
    );
\half_duty_new_reg[1]6__26_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(14),
      O => \half_duty_new_reg[1]6__26_carry__1_i_2_n_0\
    );
\half_duty_new_reg[1]6__26_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => slv_reg0(11),
      O => \half_duty_new_reg[1]6__26_carry_i_1_n_0\
    );
\half_duty_new_reg[1]6__26_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(10),
      O => \half_duty_new_reg[1]6__26_carry_i_2_n_0\
    );
\half_duty_new_reg[1]6__26_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(9),
      O => \half_duty_new_reg[1]6__26_carry_i_3_n_0\
    );
\half_duty_new_reg[1]6__53_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[1]6__53_carry_n_0\,
      CO(2) => \half_duty_new_reg[1]6__53_carry_n_1\,
      CO(1) => \half_duty_new_reg[1]6__53_carry_n_2\,
      CO(0) => \half_duty_new_reg[1]6__53_carry_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[1]6__53_carry_i_1_n_0\,
      DI(2) => \half_duty_new_reg[1]6__53_carry_i_2_n_0\,
      DI(1) => \half_duty_new_reg[1]6__53_carry_i_3_n_0\,
      DI(0) => \half_duty_new_reg[1]6__53_carry_i_4_n_0\,
      O(3) => \half_duty_new_reg[1]6__53_carry_n_4\,
      O(2) => \half_duty_new_reg[1]6__53_carry_n_5\,
      O(1) => \half_duty_new_reg[1]6__53_carry_n_6\,
      O(0) => \NLW_half_duty_new_reg[1]6__53_carry_O_UNCONNECTED\(0),
      S(3) => \half_duty_new_reg[1]6__53_carry_i_5_n_0\,
      S(2) => \half_duty_new_reg[1]6__53_carry_i_6_n_0\,
      S(1) => \half_duty_new_reg[1]6__53_carry_i_7_n_0\,
      S(0) => \half_duty_new_reg[1]6__53_carry_i_8_n_0\
    );
\half_duty_new_reg[1]6__53_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]6__53_carry_n_0\,
      CO(3) => \half_duty_new_reg[1]6__53_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[1]6__53_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[1]6__53_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[1]6__53_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[1]6__53_carry__0_i_1_n_0\,
      DI(2) => \half_duty_new_reg[1]6__53_carry__0_i_2_n_0\,
      DI(1) => \half_duty_new_reg[1]6__53_carry__0_i_3_n_0\,
      DI(0) => \half_duty_new_reg[1]6__53_carry__0_i_4_n_0\,
      O(3) => \half_duty_new_reg[1]6__53_carry__0_n_4\,
      O(2) => \half_duty_new_reg[1]6__53_carry__0_n_5\,
      O(1) => \half_duty_new_reg[1]6__53_carry__0_n_6\,
      O(0) => \half_duty_new_reg[1]6__53_carry__0_n_7\,
      S(3) => \half_duty_new_reg[1]6__53_carry__0_i_5_n_0\,
      S(2) => \half_duty_new_reg[1]6__53_carry__0_i_6_n_0\,
      S(1) => \half_duty_new_reg[1]6__53_carry__0_i_7_n_0\,
      S(0) => \half_duty_new_reg[1]6__53_carry__0_i_8_n_0\
    );
\half_duty_new_reg[1]6__53_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry__0_n_4\,
      I1 => \half_duty_new_reg[1]6__26_carry__0_n_6\,
      O => \half_duty_new_reg[1]6__53_carry__0_i_1_n_0\
    );
\half_duty_new_reg[1]6__53_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry__0_n_5\,
      I1 => \half_duty_new_reg[1]6__26_carry__0_n_7\,
      O => \half_duty_new_reg[1]6__53_carry__0_i_2_n_0\
    );
\half_duty_new_reg[1]6__53_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry__0_n_6\,
      I1 => slv_reg0(15),
      I2 => \half_duty_new_reg[1]6__26_carry_n_4\,
      O => \half_duty_new_reg[1]6__53_carry__0_i_3_n_0\
    );
\half_duty_new_reg[1]6__53_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry__0_n_7\,
      I1 => slv_reg0(14),
      I2 => \half_duty_new_reg[1]6__26_carry_n_5\,
      O => \half_duty_new_reg[1]6__53_carry__0_i_4_n_0\
    );
\half_duty_new_reg[1]6__53_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__0_i_1_n_0\,
      I1 => \half_duty_new_reg[1]6__26_carry__0_n_5\,
      I2 => \half_duty_new_reg[1]6_carry__1_n_7\,
      O => \half_duty_new_reg[1]6__53_carry__0_i_5_n_0\
    );
\half_duty_new_reg[1]6__53_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry__0_n_4\,
      I1 => \half_duty_new_reg[1]6__26_carry__0_n_6\,
      I2 => \half_duty_new_reg[1]6__53_carry__0_i_2_n_0\,
      O => \half_duty_new_reg[1]6__53_carry__0_i_6_n_0\
    );
\half_duty_new_reg[1]6__53_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry__0_n_5\,
      I1 => \half_duty_new_reg[1]6__26_carry__0_n_7\,
      I2 => \half_duty_new_reg[1]6__53_carry__0_i_3_n_0\,
      O => \half_duty_new_reg[1]6__53_carry__0_i_7_n_0\
    );
\half_duty_new_reg[1]6__53_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry__0_n_6\,
      I1 => slv_reg0(15),
      I2 => \half_duty_new_reg[1]6__26_carry_n_4\,
      I3 => \half_duty_new_reg[1]6__53_carry__0_i_4_n_0\,
      O => \half_duty_new_reg[1]6__53_carry__0_i_8_n_0\
    );
\half_duty_new_reg[1]6__53_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]6__53_carry__0_n_0\,
      CO(3) => \half_duty_new_reg[1]6__53_carry__1_n_0\,
      CO(2) => \half_duty_new_reg[1]6__53_carry__1_n_1\,
      CO(1) => \half_duty_new_reg[1]6__53_carry__1_n_2\,
      CO(0) => \half_duty_new_reg[1]6__53_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \half_duty_new_reg[1]6__26_carry__1_n_6\,
      DI(1) => \half_duty_new_reg[1]6__53_carry__1_i_1_n_0\,
      DI(0) => \half_duty_new_reg[1]6__53_carry__1_i_2_n_0\,
      O(3) => \half_duty_new_reg[1]6__53_carry__1_n_4\,
      O(2) => \half_duty_new_reg[1]6__53_carry__1_n_5\,
      O(1) => \half_duty_new_reg[1]6__53_carry__1_n_6\,
      O(0) => \half_duty_new_reg[1]6__53_carry__1_n_7\,
      S(3) => \half_duty_new_reg[1]6__26_carry__1_n_5\,
      S(2) => \half_duty_new_reg[1]6__53_carry__1_i_3_n_0\,
      S(1) => \half_duty_new_reg[1]6__53_carry__1_i_4_n_0\,
      S(0) => \half_duty_new_reg[1]6__53_carry__1_i_5_n_0\
    );
\half_duty_new_reg[1]6__53_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__26_carry__0_n_4\,
      I1 => \half_duty_new_reg[1]6_carry__1_n_6\,
      O => \half_duty_new_reg[1]6__53_carry__1_i_1_n_0\
    );
\half_duty_new_reg[1]6__53_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry__1_n_7\,
      I1 => \half_duty_new_reg[1]6__26_carry__0_n_5\,
      O => \half_duty_new_reg[1]6__53_carry__1_i_2_n_0\
    );
\half_duty_new_reg[1]6__53_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry__1_n_1\,
      I1 => \half_duty_new_reg[1]6__26_carry__1_n_7\,
      I2 => \half_duty_new_reg[1]6__26_carry__1_n_6\,
      O => \half_duty_new_reg[1]6__53_carry__1_i_3_n_0\
    );
\half_duty_new_reg[1]6__53_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry__1_n_6\,
      I1 => \half_duty_new_reg[1]6__26_carry__0_n_4\,
      I2 => \half_duty_new_reg[1]6__26_carry__1_n_7\,
      I3 => \half_duty_new_reg[1]6_carry__1_n_1\,
      O => \half_duty_new_reg[1]6__53_carry__1_i_4_n_0\
    );
\half_duty_new_reg[1]6__53_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__26_carry__0_n_5\,
      I1 => \half_duty_new_reg[1]6_carry__1_n_7\,
      I2 => \half_duty_new_reg[1]6__26_carry__0_n_4\,
      I3 => \half_duty_new_reg[1]6_carry__1_n_6\,
      O => \half_duty_new_reg[1]6__53_carry__1_i_5_n_0\
    );
\half_duty_new_reg[1]6__53_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]6__53_carry__1_n_0\,
      CO(3 downto 1) => \NLW_half_duty_new_reg[1]6__53_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \half_duty_new_reg[1]6__53_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \half_duty_new_reg[1]6__26_carry__1_n_4\,
      O(3 downto 2) => \NLW_half_duty_new_reg[1]6__53_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1) => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O(0) => \half_duty_new_reg[1]6__53_carry__2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \half_duty_new_reg[1]6__26_carry__1_n_4\,
      S(0) => \half_duty_new_reg[1]6__26_carry__1_n_4\
    );
\half_duty_new_reg[1]6__53_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry_n_4\,
      I1 => slv_reg0(13),
      I2 => \half_duty_new_reg[1]6__26_carry_n_6\,
      O => \half_duty_new_reg[1]6__53_carry_i_1_n_0\
    );
\half_duty_new_reg[1]6__53_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry_n_5\,
      I1 => slv_reg0(12),
      I2 => \half_duty_new_reg[1]6_carry_n_7\,
      O => \half_duty_new_reg[1]6__53_carry_i_2_n_0\
    );
\half_duty_new_reg[1]6__53_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => \half_duty_new_reg[1]6_carry_n_6\,
      O => \half_duty_new_reg[1]6__53_carry_i_3_n_0\
    );
\half_duty_new_reg[1]6__53_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => slv_reg0(8),
      O => \half_duty_new_reg[1]6__53_carry_i_4_n_0\
    );
\half_duty_new_reg[1]6__53_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry__0_n_7\,
      I1 => slv_reg0(14),
      I2 => \half_duty_new_reg[1]6__26_carry_n_5\,
      I3 => \half_duty_new_reg[1]6__53_carry_i_1_n_0\,
      O => \half_duty_new_reg[1]6__53_carry_i_5_n_0\
    );
\half_duty_new_reg[1]6__53_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry_n_4\,
      I1 => slv_reg0(13),
      I2 => \half_duty_new_reg[1]6__26_carry_n_6\,
      I3 => \half_duty_new_reg[1]6__53_carry_i_2_n_0\,
      O => \half_duty_new_reg[1]6__53_carry_i_6_n_0\
    );
\half_duty_new_reg[1]6__53_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry_n_5\,
      I1 => slv_reg0(12),
      I2 => \half_duty_new_reg[1]6_carry_n_7\,
      I3 => \half_duty_new_reg[1]6__53_carry_i_3_n_0\,
      O => \half_duty_new_reg[1]6__53_carry_i_7_n_0\
    );
\half_duty_new_reg[1]6__53_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => \half_duty_new_reg[1]6_carry_n_6\,
      I2 => slv_reg0(8),
      I3 => slv_reg0(10),
      O => \half_duty_new_reg[1]6__53_carry_i_8_n_0\
    );
\half_duty_new_reg[1]6_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[1]6_carry_n_0\,
      CO(2) => \half_duty_new_reg[1]6_carry_n_1\,
      CO(1) => \half_duty_new_reg[1]6_carry_n_2\,
      CO(0) => \half_duty_new_reg[1]6_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => slv_reg0(9 downto 8),
      DI(1 downto 0) => B"01",
      O(3) => \half_duty_new_reg[1]6_carry_n_4\,
      O(2) => \half_duty_new_reg[1]6_carry_n_5\,
      O(1) => \half_duty_new_reg[1]6_carry_n_6\,
      O(0) => \half_duty_new_reg[1]6_carry_n_7\,
      S(3) => \half_duty_new_reg[1]6_carry_i_1_n_0\,
      S(2) => \half_duty_new_reg[1]6_carry_i_2_n_0\,
      S(1) => \half_duty_new_reg[1]6_carry_i_3_n_0\,
      S(0) => slv_reg0(8)
    );
\half_duty_new_reg[1]6_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]6_carry_n_0\,
      CO(3) => \half_duty_new_reg[1]6_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[1]6_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[1]6_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[1]6_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => slv_reg0(15),
      DI(2 downto 0) => slv_reg0(12 downto 10),
      O(3) => \half_duty_new_reg[1]6_carry__0_n_4\,
      O(2) => \half_duty_new_reg[1]6_carry__0_n_5\,
      O(1) => \half_duty_new_reg[1]6_carry__0_n_6\,
      O(0) => \half_duty_new_reg[1]6_carry__0_n_7\,
      S(3) => \half_duty_new_reg[1]6_carry__0_i_1_n_0\,
      S(2) => \half_duty_new_reg[1]6_carry__0_i_2_n_0\,
      S(1) => \half_duty_new_reg[1]6_carry__0_i_3_n_0\,
      S(0) => \half_duty_new_reg[1]6_carry__0_i_4_n_0\
    );
\half_duty_new_reg[1]6_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => slv_reg0(15),
      I1 => slv_reg0(13),
      O => \half_duty_new_reg[1]6_carry__0_i_1_n_0\
    );
\half_duty_new_reg[1]6_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(12),
      I1 => slv_reg0(14),
      O => \half_duty_new_reg[1]6_carry__0_i_2_n_0\
    );
\half_duty_new_reg[1]6_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => slv_reg0(13),
      O => \half_duty_new_reg[1]6_carry__0_i_3_n_0\
    );
\half_duty_new_reg[1]6_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => slv_reg0(12),
      O => \half_duty_new_reg[1]6_carry__0_i_4_n_0\
    );
\half_duty_new_reg[1]6_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]6_carry__0_n_0\,
      CO(3) => \NLW_half_duty_new_reg[1]6_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new_reg[1]6_carry__1_n_1\,
      CO(1) => \NLW_half_duty_new_reg[1]6_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \half_duty_new_reg[1]6_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => slv_reg0(15 downto 14),
      O(3 downto 2) => \NLW_half_duty_new_reg[1]6_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \half_duty_new_reg[1]6_carry__1_n_6\,
      O(0) => \half_duty_new_reg[1]6_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \half_duty_new_reg[1]6_carry__1_i_1_n_0\,
      S(0) => \half_duty_new_reg[1]6_carry__1_i_2_n_0\
    );
\half_duty_new_reg[1]6_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(15),
      O => \half_duty_new_reg[1]6_carry__1_i_1_n_0\
    );
\half_duty_new_reg[1]6_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(15),
      I1 => slv_reg0(14),
      O => \half_duty_new_reg[1]6_carry__1_i_2_n_0\
    );
\half_duty_new_reg[1]6_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(9),
      I1 => slv_reg0(11),
      O => \half_duty_new_reg[1]6_carry_i_1_n_0\
    );
\half_duty_new_reg[1]6_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => slv_reg0(8),
      O => \half_duty_new_reg[1]6_carry_i_2_n_0\
    );
\half_duty_new_reg[1]6_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(9),
      O => \half_duty_new_reg[1]6_carry_i_3_n_0\
    );
\half_duty_new_reg[1]7_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[1]7_carry_n_0\,
      CO(2) => \half_duty_new_reg[1]7_carry_n_1\,
      CO(1) => \half_duty_new_reg[1]7_carry_n_2\,
      CO(0) => \half_duty_new_reg[1]7_carry_n_3\,
      CYINIT => '1',
      DI(3) => \half_duty_new_reg[1]7_carry_i_1_n_0\,
      DI(2) => \half_duty_new_reg[1]7_carry_i_2_n_0\,
      DI(1) => \half_duty_new_reg[1]7_carry_i_3_n_0\,
      DI(0) => \half_duty_new_reg[1]7_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[1]7_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[1]7_carry_i_5_n_0\,
      S(2) => \half_duty_new_reg[1]7_carry_i_6_n_0\,
      S(1) => \half_duty_new_reg[1]7_carry_i_7_n_0\,
      S(0) => \half_duty_new_reg[1]7_carry_i_8_n_0\
    );
\half_duty_new_reg[1]7_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]7_carry_n_0\,
      CO(3) => \half_duty_new_reg[1]7_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[1]7_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[1]7_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[1]7_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[1]7_carry__0_i_1_n_0\,
      DI(2) => \half_duty_new_reg[1]7_carry__0_i_2_n_0\,
      DI(1) => \half_duty_new_reg[1]7_carry__0_i_3_n_0\,
      DI(0) => \half_duty_new_reg[1]7_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[1]7_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[1]7_carry__0_i_5_n_0\,
      S(2) => \half_duty_new_reg[1]7_carry__0_i_6_n_0\,
      S(1) => \half_duty_new_reg[1]7_carry__0_i_7_n_0\,
      S(0) => \half_duty_new_reg[1]7_carry__0_i_8_n_0\
    );
\half_duty_new_reg[1]7_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__1_n_4\,
      I1 => \half_duty_new_reg[1]6__53_carry__2_n_7\,
      O => \half_duty_new_reg[1]7_carry__0_i_1_n_0\
    );
\half_duty_new_reg[1]7_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__1_n_6\,
      I1 => \half_duty_new_reg[1]6__53_carry__1_n_5\,
      O => \half_duty_new_reg[1]7_carry__0_i_2_n_0\
    );
\half_duty_new_reg[1]7_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__0_n_4\,
      I1 => \half_duty_new_reg[1]6__53_carry__1_n_7\,
      O => \half_duty_new_reg[1]7_carry__0_i_3_n_0\
    );
\half_duty_new_reg[1]7_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__0_n_6\,
      I1 => \half_duty_new_reg[1]6__53_carry__0_n_5\,
      O => \half_duty_new_reg[1]7_carry__0_i_4_n_0\
    );
\half_duty_new_reg[1]7_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__2_n_7\,
      I1 => \half_duty_new_reg[1]6__53_carry__1_n_4\,
      O => \half_duty_new_reg[1]7_carry__0_i_5_n_0\
    );
\half_duty_new_reg[1]7_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__1_n_5\,
      I1 => \half_duty_new_reg[1]6__53_carry__1_n_6\,
      O => \half_duty_new_reg[1]7_carry__0_i_6_n_0\
    );
\half_duty_new_reg[1]7_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__1_n_7\,
      I1 => \half_duty_new_reg[1]6__53_carry__0_n_4\,
      O => \half_duty_new_reg[1]7_carry__0_i_7_n_0\
    );
\half_duty_new_reg[1]7_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__0_n_5\,
      I1 => \half_duty_new_reg[1]6__53_carry__0_n_6\,
      O => \half_duty_new_reg[1]7_carry__0_i_8_n_0\
    );
\half_duty_new_reg[1]7_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]7_carry__0_n_0\,
      CO(3 downto 1) => \NLW_half_duty_new_reg[1]7_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \half_duty_new_reg[1]7\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_half_duty_new_reg[1]7_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \half_duty_new_reg[1]7_carry__1_i_1_n_0\
    );
\half_duty_new_reg[1]7_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[1]7_carry__1_i_1_n_0\
    );
\half_duty_new_reg[1]7_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry_n_4\,
      I1 => \half_duty_new_reg[1]6__53_carry__0_n_7\,
      O => \half_duty_new_reg[1]7_carry_i_1_n_0\
    );
\half_duty_new_reg[1]7_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry_n_6\,
      I1 => \half_duty_new_reg[1]6__53_carry_n_5\,
      O => \half_duty_new_reg[1]7_carry_i_2_n_0\
    );
\half_duty_new_reg[1]7_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E77E"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => slv_reg0(10),
      I2 => slv_reg0(11),
      I3 => \half_duty_new_reg[1]6_carry_n_6\,
      O => \half_duty_new_reg[1]7_carry_i_3_n_0\
    );
\half_duty_new_reg[1]7_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => slv_reg0(9),
      O => \half_duty_new_reg[1]7_carry_i_4_n_0\
    );
\half_duty_new_reg[1]7_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry__0_n_7\,
      I1 => \half_duty_new_reg[1]6__53_carry_n_4\,
      O => \half_duty_new_reg[1]7_carry_i_5_n_0\
    );
\half_duty_new_reg[1]7_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[1]6__53_carry_n_5\,
      I1 => \half_duty_new_reg[1]6__53_carry_n_6\,
      O => \half_duty_new_reg[1]7_carry_i_6_n_0\
    );
\half_duty_new_reg[1]7_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6009"
    )
        port map (
      I0 => \half_duty_new_reg[1]6_carry_n_6\,
      I1 => slv_reg0(11),
      I2 => slv_reg0(10),
      I3 => slv_reg0(8),
      O => \half_duty_new_reg[1]7_carry_i_7_n_0\
    );
\half_duty_new_reg[1]7_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(9),
      I1 => slv_reg0(8),
      O => \half_duty_new_reg[1]7_carry_i_8_n_0\
    );
\half_duty_new_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new_reg[1]10_in\(0),
      Q => \half_duty_new_reg[1]_3\(0),
      R => '0'
    );
\half_duty_new_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[1][1]_i_1_n_0\,
      Q => \half_duty_new_reg[1]_3\(1),
      R => '0'
    );
\half_duty_new_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[1][2]_i_1_n_0\,
      Q => \half_duty_new_reg[1]_3\(2),
      R => '0'
    );
\half_duty_new_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[1][3]_i_1_n_0\,
      Q => \half_duty_new_reg[1]_3\(3),
      R => '0'
    );
\half_duty_new_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[1][4]_i_1_n_0\,
      Q => \half_duty_new_reg[1]_3\(4),
      R => '0'
    );
\half_duty_new_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[1][5]_i_1_n_0\,
      Q => \half_duty_new_reg[1]_3\(5),
      R => '0'
    );
\half_duty_new_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[1][6]_i_1_n_0\,
      Q => \half_duty_new_reg[1]_3\(6),
      R => '0'
    );
\half_duty_new_reg[1][6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[1]4_carry__1_i_9_n_0\,
      CO(3) => \NLW_half_duty_new_reg[1][6]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new_reg[1][6]_i_2_n_1\,
      CO(1) => \NLW_half_duty_new_reg[1][6]_i_2_CO_UNCONNECTED\(1),
      CO(0) => \half_duty_new_reg[1][6]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_half_duty_new_reg[1][6]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \half_duty_new_reg[1]4\(22 downto 21),
      S(3 downto 2) => B"01",
      S(1) => \half_duty_new[1][6]_i_4_n_0\,
      S(0) => \half_duty_new[1][6]_i_5_n_0\
    );
\half_duty_new_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[1][7]_i_1_n_0\,
      Q => \half_duty_new_reg[1]_3\(7),
      R => '0'
    );
\half_duty_new_reg[2]4_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[2]4_carry_n_0\,
      CO(2) => \half_duty_new_reg[2]4_carry_n_1\,
      CO(1) => \half_duty_new_reg[2]4_carry_n_2\,
      CO(0) => \half_duty_new_reg[2]4_carry_n_3\,
      CYINIT => '1',
      DI(3) => \half_duty_new_reg[2]4_carry_i_1_n_0\,
      DI(2) => \half_duty_new_reg[2]4_carry_i_2_n_0\,
      DI(1) => \half_duty_new_reg[2]4_carry_i_3_n_0\,
      DI(0) => \half_duty_new_reg[2]4_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[2]4_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[2]4_carry_i_5_n_0\,
      S(2) => \half_duty_new_reg[2]4_carry_i_6_n_0\,
      S(1) => \half_duty_new_reg[2]4_carry_i_7_n_0\,
      S(0) => \half_duty_new_reg[2]4_carry_i_8_n_0\
    );
\half_duty_new_reg[2]4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]4_carry_n_0\,
      CO(3) => \half_duty_new_reg[2]4_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[2]4_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[2]4_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[2]4_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[2]4_carry__0_i_1_n_0\,
      DI(2) => \half_duty_new_reg[2]4_carry__0_i_2_n_0\,
      DI(1) => \half_duty_new_reg[2]4_carry__0_i_3_n_0\,
      DI(0) => \half_duty_new_reg[2]4_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[2]4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[2]4_carry__0_i_5_n_0\,
      S(2) => \half_duty_new_reg[2]4_carry__0_i_6_n_0\,
      S(1) => \half_duty_new_reg[2]4_carry__0_i_7_n_0\,
      S(0) => \half_duty_new_reg[2]4_carry__0_i_8_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(14),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[2]4\(15),
      O => \half_duty_new_reg[2]4_carry__0_i_1_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]4_carry_i_9_n_0\,
      CO(3) => \half_duty_new_reg[2]4_carry__0_i_10_n_0\,
      CO(2) => \half_duty_new_reg[2]4_carry__0_i_10_n_1\,
      CO(1) => \half_duty_new_reg[2]4_carry__0_i_10_n_2\,
      CO(0) => \half_duty_new_reg[2]4_carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[2]4\(12 downto 9),
      S(3) => \half_duty_new_reg[2]4_carry__0_i_15_n_0\,
      S(2) => \half_duty_new_reg[2]4_carry__0_i_16_n_0\,
      S(1) => \half_duty_new_reg[2]4_carry__0_i_17_n_0\,
      S(0) => \half_duty_new_reg[2]4_carry__0_i_18_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__0_i_11_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__0_i_12_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__0_i_13_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__0_i_14_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__0_i_15_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__0_i_16_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(18),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__0_i_17_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(17),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_7\,
      O => \half_duty_new_reg[2]4_carry__0_i_18_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(12),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[2]4\(13),
      O => \half_duty_new_reg[2]4_carry__0_i_2_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCF8B8BCFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(10),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]6\(18),
      I4 => \half_duty_new_reg[2]4\(11),
      I5 => \half_duty_new_reg[2]50_carry__3_n_7\,
      O => \half_duty_new_reg[2]4_carry__0_i_3_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEFEFEAEAEA"
    )
        port map (
      I0 => \half_duty_new[2][7]_i_4_n_0\,
      I1 => \half_duty_new_reg[2]4\(9),
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_7\,
      I4 => \half_duty_new_reg[2]7\,
      I5 => \half_duty_new_reg[2]6\(17),
      O => \half_duty_new_reg[2]4_carry__0_i_4_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(15),
      I1 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[2]4\(14),
      O => \half_duty_new_reg[2]4_carry__0_i_5_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(13),
      I1 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[2]4\(12),
      O => \half_duty_new_reg[2]4_carry__0_i_6_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF053333FF05"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]4\(11),
      I2 => \half_duty_new_reg[2]6\(18),
      I3 => \half_duty_new_reg[2]7\,
      I4 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I5 => \half_duty_new_reg[2]4\(10),
      O => \half_duty_new_reg[2]4_carry__0_i_7_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001DFF1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(17),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_7\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[2]4\(9),
      I5 => \half_duty_new[2][7]_i_4_n_0\,
      O => \half_duty_new_reg[2]4_carry__0_i_8_n_0\
    );
\half_duty_new_reg[2]4_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]4_carry__0_i_10_n_0\,
      CO(3) => \half_duty_new_reg[2]4_carry__0_i_9_n_0\,
      CO(2) => \half_duty_new_reg[2]4_carry__0_i_9_n_1\,
      CO(1) => \half_duty_new_reg[2]4_carry__0_i_9_n_2\,
      CO(0) => \half_duty_new_reg[2]4_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[2]4\(16 downto 13),
      S(3) => \half_duty_new_reg[2]4_carry__0_i_11_n_0\,
      S(2) => \half_duty_new_reg[2]4_carry__0_i_12_n_0\,
      S(1) => \half_duty_new_reg[2]4_carry__0_i_13_n_0\,
      S(0) => \half_duty_new_reg[2]4_carry__0_i_14_n_0\
    );
\half_duty_new_reg[2]4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]4_carry__0_n_0\,
      CO(3) => \half_duty_new_reg[2]4_carry__1_n_0\,
      CO(2) => \half_duty_new_reg[2]4_carry__1_n_1\,
      CO(1) => \half_duty_new_reg[2]4_carry__1_n_2\,
      CO(0) => \half_duty_new_reg[2]4_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[2]4_carry__1_i_1_n_0\,
      DI(2) => \half_duty_new_reg[2]4_carry__1_i_2_n_0\,
      DI(1) => \half_duty_new_reg[2]4_carry__1_i_3_n_0\,
      DI(0) => \half_duty_new_reg[2]4_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[2]4_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[2]4_carry__1_i_5_n_0\,
      S(2) => \half_duty_new_reg[2]4_carry__1_i_6_n_0\,
      S(1) => \half_duty_new_reg[2]4_carry__1_i_7_n_0\,
      S(0) => \half_duty_new_reg[2]4_carry__1_i_8_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B88CFCC"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(22),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[2][6]_i_2_n_1\,
      O => \half_duty_new_reg[2]4_carry__1_i_1_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__1_i_10_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__1_i_11_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__1_i_12_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__1_i_13_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(20),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[2]4\(21),
      O => \half_duty_new_reg[2]4_carry__1_i_2_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(18),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[2]4\(19),
      O => \half_duty_new_reg[2]4_carry__1_i_3_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCC8B88"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(16),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I4 => \half_duty_new_reg[2]4\(17),
      O => \half_duty_new_reg[2]4_carry__1_i_4_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F3AAF3"
    )
        port map (
      I0 => \half_duty_new_reg[2][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[2]4\(22),
      O => \half_duty_new_reg[2]4_carry__1_i_5_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(21),
      I1 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[2]4\(20),
      O => \half_duty_new_reg[2]4_carry__1_i_6_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(19),
      I1 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[2]4\(18),
      O => \half_duty_new_reg[2]4_carry__1_i_7_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F355F3"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(17),
      I1 => \half_duty_new_reg[2]50_carry__3_n_7\,
      I2 => \half_duty_new_reg[2]7\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[2]4\(16),
      O => \half_duty_new_reg[2]4_carry__1_i_8_n_0\
    );
\half_duty_new_reg[2]4_carry__1_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]4_carry__0_i_9_n_0\,
      CO(3) => \half_duty_new_reg[2]4_carry__1_i_9_n_0\,
      CO(2) => \half_duty_new_reg[2]4_carry__1_i_9_n_1\,
      CO(1) => \half_duty_new_reg[2]4_carry__1_i_9_n_2\,
      CO(0) => \half_duty_new_reg[2]4_carry__1_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[2]4\(20 downto 17),
      S(3) => \half_duty_new_reg[2]4_carry__1_i_10_n_0\,
      S(2) => \half_duty_new_reg[2]4_carry__1_i_11_n_0\,
      S(1) => \half_duty_new_reg[2]4_carry__1_i_12_n_0\,
      S(0) => \half_duty_new_reg[2]4_carry__1_i_13_n_0\
    );
\half_duty_new_reg[2]4_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]4_carry__1_n_0\,
      CO(3) => \half_duty_new_reg[2]4_carry__2_n_0\,
      CO(2) => \half_duty_new_reg[2]4_carry__2_n_1\,
      CO(1) => \half_duty_new_reg[2]4_carry__2_n_2\,
      CO(0) => \half_duty_new_reg[2]4_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \half_duty_new_reg[2]4_carry__2_i_1_n_0\,
      DI(1) => \half_duty_new_reg[2]4_carry__2_i_2_n_0\,
      DI(0) => \half_duty_new_reg[2]4_carry__2_i_3_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[2]4_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[2]4_carry__2_i_4_n_0\,
      S(2) => \half_duty_new_reg[2]4_carry__2_i_5_n_0\,
      S(1) => \half_duty_new_reg[2]4_carry__2_i_6_n_0\,
      S(0) => \half_duty_new_reg[2]4_carry__2_i_7_n_0\
    );
\half_duty_new_reg[2]4_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[2][6]_i_2_n_1\,
      O => \half_duty_new_reg[2]4_carry__2_i_1_n_0\
    );
\half_duty_new_reg[2]4_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[2][6]_i_2_n_1\,
      O => \half_duty_new_reg[2]4_carry__2_i_2_n_0\
    );
\half_duty_new_reg[2]4_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I1 => \half_duty_new_reg[2][6]_i_2_n_1\,
      O => \half_duty_new_reg[2]4_carry__2_i_3_n_0\
    );
\half_duty_new_reg[2]4_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[2][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__2_i_4_n_0\
    );
\half_duty_new_reg[2]4_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[2][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__2_i_5_n_0\
    );
\half_duty_new_reg[2]4_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[2][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__2_i_6_n_0\
    );
\half_duty_new_reg[2]4_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \half_duty_new_reg[2][6]_i_2_n_1\,
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]4_carry__2_i_7_n_0\
    );
\half_duty_new_reg[2]4_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEFEFEAEAEA"
    )
        port map (
      I0 => \half_duty_new[2][5]_i_3_n_0\,
      I1 => \half_duty_new_reg[2]4\(7),
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[2]6__53_carry__1_n_5\,
      I4 => \half_duty_new_reg[2]7\,
      I5 => \half_duty_new_reg[2]6\(15),
      O => \half_duty_new_reg[2]4_carry_i_1_n_0\
    );
\half_duty_new_reg[2]4_carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \half_duty_new_reg[2]4\(4),
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I2 => \half_duty_new_reg[2]6__53_carry__0_n_4\,
      I3 => \half_duty_new_reg[2]7\,
      I4 => \half_duty_new_reg[2]6\(12),
      O => \half_duty_new_reg[2]4_carry_i_10_n_0\
    );
\half_duty_new_reg[2]4_carry_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[2]4_carry_i_11_n_0\,
      CO(2) => \half_duty_new_reg[2]4_carry_i_11_n_1\,
      CO(1) => \half_duty_new_reg[2]4_carry_i_11_n_2\,
      CO(0) => \half_duty_new_reg[2]4_carry_i_11_n_3\,
      CYINIT => \half_duty_new_reg[2]4_carry_i_16_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[2]4\(4 downto 1),
      S(3) => \half_duty_new_reg[2]4_carry_i_17_n_0\,
      S(2) => \half_duty_new_reg[2]4_carry_i_18_n_0\,
      S(1) => \half_duty_new_reg[2]4_carry_i_19_n_0\,
      S(0) => \half_duty_new_reg[2]4_carry_i_20_n_0\
    );
\half_duty_new_reg[2]4_carry_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(16),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__1_n_4\,
      O => \half_duty_new_reg[2]4_carry_i_12_n_0\
    );
\half_duty_new_reg[2]4_carry_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(15),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__1_n_5\,
      O => \half_duty_new_reg[2]4_carry_i_13_n_0\
    );
\half_duty_new_reg[2]4_carry_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(14),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__1_n_6\,
      O => \half_duty_new_reg[2]4_carry_i_14_n_0\
    );
\half_duty_new_reg[2]4_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(13),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__1_n_7\,
      O => \half_duty_new_reg[2]4_carry_i_15_n_0\
    );
\half_duty_new_reg[2]4_carry_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(8),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry_n_4\,
      O => \half_duty_new_reg[2]4_carry_i_16_n_0\
    );
\half_duty_new_reg[2]4_carry_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(12),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__0_n_4\,
      O => \half_duty_new_reg[2]4_carry_i_17_n_0\
    );
\half_duty_new_reg[2]4_carry_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(11),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__0_n_5\,
      O => \half_duty_new_reg[2]4_carry_i_18_n_0\
    );
\half_duty_new_reg[2]4_carry_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(10),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__0_n_6\,
      O => \half_duty_new_reg[2]4_carry_i_19_n_0\
    );
\half_duty_new_reg[2]4_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEFEFEAEAEA"
    )
        port map (
      I0 => \half_duty_new_reg[2]4_carry_i_10_n_0\,
      I1 => \half_duty_new_reg[2]4\(5),
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[2]6__53_carry__1_n_7\,
      I4 => \half_duty_new_reg[2]7\,
      I5 => \half_duty_new_reg[2]6\(13),
      O => \half_duty_new_reg[2]4_carry_i_2_n_0\
    );
\half_duty_new_reg[2]4_carry_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(9),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__0_n_7\,
      O => \half_duty_new_reg[2]4_carry_i_20_n_0\
    );
\half_duty_new_reg[2]4_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEFEFEAEAEA"
    )
        port map (
      I0 => \half_duty_new[2][2]_i_3_n_0\,
      I1 => \half_duty_new_reg[2]4\(3),
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[2]6__53_carry__0_n_5\,
      I4 => \half_duty_new_reg[2]7\,
      I5 => \half_duty_new_reg[2]6\(11),
      O => \half_duty_new_reg[2]4_carry_i_3_n_0\
    );
\half_duty_new_reg[2]4_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(9),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__0_n_7\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[2]4\(1),
      I5 => \half_duty_new[2][2]_i_5_n_0\,
      O => \half_duty_new_reg[2]4_carry_i_4_n_0\
    );
\half_duty_new_reg[2]4_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001DFF1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(15),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__1_n_5\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[2]4\(7),
      I5 => \half_duty_new[2][5]_i_3_n_0\,
      O => \half_duty_new_reg[2]4_carry_i_5_n_0\
    );
\half_duty_new_reg[2]4_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001DFF1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(13),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__1_n_7\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[2]4\(5),
      I5 => \half_duty_new_reg[2]4_carry_i_10_n_0\,
      O => \half_duty_new_reg[2]4_carry_i_6_n_0\
    );
\half_duty_new_reg[2]4_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001DFF1D"
    )
        port map (
      I0 => \half_duty_new_reg[2]6\(11),
      I1 => \half_duty_new_reg[2]7\,
      I2 => \half_duty_new_reg[2]6__53_carry__0_n_5\,
      I3 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I4 => \half_duty_new_reg[2]4\(3),
      I5 => \half_duty_new[2][2]_i_3_n_0\,
      O => \half_duty_new_reg[2]4_carry_i_7_n_0\
    );
\half_duty_new_reg[2]4_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1015101010151515"
    )
        port map (
      I0 => \half_duty_new[2][2]_i_5_n_0\,
      I1 => \half_duty_new_reg[2]4\(1),
      I2 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      I3 => \half_duty_new_reg[2]6__53_carry__0_n_7\,
      I4 => \half_duty_new_reg[2]7\,
      I5 => \half_duty_new_reg[2]6\(9),
      O => \half_duty_new_reg[2]4_carry_i_8_n_0\
    );
\half_duty_new_reg[2]4_carry_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]4_carry_i_11_n_0\,
      CO(3) => \half_duty_new_reg[2]4_carry_i_9_n_0\,
      CO(2) => \half_duty_new_reg[2]4_carry_i_9_n_1\,
      CO(1) => \half_duty_new_reg[2]4_carry_i_9_n_2\,
      CO(0) => \half_duty_new_reg[2]4_carry_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[2]4\(8 downto 5),
      S(3) => \half_duty_new_reg[2]4_carry_i_12_n_0\,
      S(2) => \half_duty_new_reg[2]4_carry_i_13_n_0\,
      S(1) => \half_duty_new_reg[2]4_carry_i_14_n_0\,
      S(0) => \half_duty_new_reg[2]4_carry_i_15_n_0\
    );
\half_duty_new_reg[2]50_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[2]50_carry_n_0\,
      CO(2) => \half_duty_new_reg[2]50_carry_n_1\,
      CO(1) => \half_duty_new_reg[2]50_carry_n_2\,
      CO(0) => \half_duty_new_reg[2]50_carry_n_3\,
      CYINIT => \half_duty_new_reg[2]50_carry_i_1_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_half_duty_new_reg[2]50_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[2]50_carry_i_2_n_0\,
      S(2) => \half_duty_new_reg[2]50_carry_i_3_n_0\,
      S(1) => \half_duty_new_reg[2]50_carry_i_4_n_0\,
      S(0) => \half_duty_new_reg[2]50_carry_i_5_n_0\
    );
\half_duty_new_reg[2]50_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]50_carry_n_0\,
      CO(3) => \half_duty_new_reg[2]50_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[2]50_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[2]50_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[2]50_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \half_duty_new_reg[2]6\(10 downto 8),
      O(0) => \NLW_half_duty_new_reg[2]50_carry__0_O_UNCONNECTED\(0),
      S(3) => \half_duty_new_reg[2]50_carry__0_i_1_n_0\,
      S(2) => \half_duty_new_reg[2]50_carry__0_i_2_n_0\,
      S(1) => \half_duty_new_reg[2]50_carry__0_i_3_n_0\,
      S(0) => \half_duty_new_reg[2]50_carry__0_i_4_n_0\
    );
\half_duty_new_reg[2]50_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__0_n_6\,
      O => \half_duty_new_reg[2]50_carry__0_i_1_n_0\
    );
\half_duty_new_reg[2]50_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__0_n_7\,
      O => \half_duty_new_reg[2]50_carry__0_i_2_n_0\
    );
\half_duty_new_reg[2]50_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry_n_4\,
      O => \half_duty_new_reg[2]50_carry__0_i_3_n_0\
    );
\half_duty_new_reg[2]50_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry_n_5\,
      O => \half_duty_new_reg[2]50_carry__0_i_4_n_0\
    );
\half_duty_new_reg[2]50_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]50_carry__0_n_0\,
      CO(3) => \half_duty_new_reg[2]50_carry__1_n_0\,
      CO(2) => \half_duty_new_reg[2]50_carry__1_n_1\,
      CO(1) => \half_duty_new_reg[2]50_carry__1_n_2\,
      CO(0) => \half_duty_new_reg[2]50_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \half_duty_new_reg[2]6\(14 downto 11),
      S(3) => \half_duty_new_reg[2]50_carry__1_i_1_n_0\,
      S(2) => \half_duty_new_reg[2]50_carry__1_i_2_n_0\,
      S(1) => \half_duty_new_reg[2]50_carry__1_i_3_n_0\,
      S(0) => \half_duty_new_reg[2]50_carry__1_i_4_n_0\
    );
\half_duty_new_reg[2]50_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__1_n_6\,
      O => \half_duty_new_reg[2]50_carry__1_i_1_n_0\
    );
\half_duty_new_reg[2]50_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__1_n_7\,
      O => \half_duty_new_reg[2]50_carry__1_i_2_n_0\
    );
\half_duty_new_reg[2]50_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__0_n_4\,
      O => \half_duty_new_reg[2]50_carry__1_i_3_n_0\
    );
\half_duty_new_reg[2]50_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__0_n_5\,
      O => \half_duty_new_reg[2]50_carry__1_i_4_n_0\
    );
\half_duty_new_reg[2]50_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]50_carry__1_n_0\,
      CO(3) => \half_duty_new_reg[2]50_carry__2_n_0\,
      CO(2) => \half_duty_new_reg[2]50_carry__2_n_1\,
      CO(1) => \half_duty_new_reg[2]50_carry__2_n_2\,
      CO(0) => \half_duty_new_reg[2]50_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1000",
      O(3 downto 0) => \half_duty_new_reg[2]6\(18 downto 15),
      S(3) => \half_duty_new_reg[2]50_carry__2_i_1_n_0\,
      S(2) => \half_duty_new_reg[2]50_carry__2_i_2_n_0\,
      S(1) => \half_duty_new_reg[2]50_carry__2_i_3_n_0\,
      S(0) => \half_duty_new_reg[2]50_carry__2_i_4_n_0\
    );
\half_duty_new_reg[2]50_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]50_carry__2_i_1_n_0\
    );
\half_duty_new_reg[2]50_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__2_n_7\,
      O => \half_duty_new_reg[2]50_carry__2_i_2_n_0\
    );
\half_duty_new_reg[2]50_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__1_n_4\,
      O => \half_duty_new_reg[2]50_carry__2_i_3_n_0\
    );
\half_duty_new_reg[2]50_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__1_n_5\,
      O => \half_duty_new_reg[2]50_carry__2_i_4_n_0\
    );
\half_duty_new_reg[2]50_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]50_carry__2_n_0\,
      CO(3 downto 0) => \NLW_half_duty_new_reg[2]50_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_half_duty_new_reg[2]50_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \half_duty_new_reg[2]50_carry__3_n_7\,
      S(3 downto 0) => B"0001"
    );
\half_duty_new_reg[2]50_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(16),
      O => \half_duty_new_reg[2]50_carry_i_1_n_0\
    );
\half_duty_new_reg[2]50_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry_n_6\,
      O => \half_duty_new_reg[2]50_carry_i_2_n_0\
    );
\half_duty_new_reg[2]50_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry_n_6\,
      I1 => slv_reg0(19),
      I2 => slv_reg0(18),
      I3 => slv_reg0(16),
      O => \half_duty_new_reg[2]50_carry_i_3_n_0\
    );
\half_duty_new_reg[2]50_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => slv_reg0(16),
      O => \half_duty_new_reg[2]50_carry_i_4_n_0\
    );
\half_duty_new_reg[2]50_carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(17),
      O => \half_duty_new_reg[2]50_carry_i_5_n_0\
    );
\half_duty_new_reg[2]6__26_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[2]6__26_carry_n_0\,
      CO(2) => \half_duty_new_reg[2]6__26_carry_n_1\,
      CO(1) => \half_duty_new_reg[2]6__26_carry_n_2\,
      CO(0) => \half_duty_new_reg[2]6__26_carry_n_3\,
      CYINIT => '0',
      DI(3) => slv_reg0(16),
      DI(2 downto 0) => B"001",
      O(3) => \half_duty_new_reg[2]6__26_carry_n_4\,
      O(2) => \half_duty_new_reg[2]6__26_carry_n_5\,
      O(1) => \half_duty_new_reg[2]6__26_carry_n_6\,
      O(0) => \NLW_half_duty_new_reg[2]6__26_carry_O_UNCONNECTED\(0),
      S(3) => \half_duty_new_reg[2]6__26_carry_i_1_n_0\,
      S(2) => \half_duty_new_reg[2]6__26_carry_i_2_n_0\,
      S(1) => \half_duty_new_reg[2]6__26_carry_i_3_n_0\,
      S(0) => slv_reg0(16)
    );
\half_duty_new_reg[2]6__26_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]6__26_carry_n_0\,
      CO(3) => \half_duty_new_reg[2]6__26_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[2]6__26_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[2]6__26_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[2]6__26_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => slv_reg0(20 downto 17),
      O(3) => \half_duty_new_reg[2]6__26_carry__0_n_4\,
      O(2) => \half_duty_new_reg[2]6__26_carry__0_n_5\,
      O(1) => \half_duty_new_reg[2]6__26_carry__0_n_6\,
      O(0) => \half_duty_new_reg[2]6__26_carry__0_n_7\,
      S(3) => \half_duty_new_reg[2]6__26_carry__0_i_1_n_0\,
      S(2) => \half_duty_new_reg[2]6__26_carry__0_i_2_n_0\,
      S(1) => \half_duty_new_reg[2]6__26_carry__0_i_3_n_0\,
      S(0) => \half_duty_new_reg[2]6__26_carry__0_i_4_n_0\
    );
\half_duty_new_reg[2]6__26_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(20),
      I1 => slv_reg0(23),
      O => \half_duty_new_reg[2]6__26_carry__0_i_1_n_0\
    );
\half_duty_new_reg[2]6__26_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => slv_reg0(22),
      O => \half_duty_new_reg[2]6__26_carry__0_i_2_n_0\
    );
\half_duty_new_reg[2]6__26_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => slv_reg0(21),
      O => \half_duty_new_reg[2]6__26_carry__0_i_3_n_0\
    );
\half_duty_new_reg[2]6__26_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => slv_reg0(20),
      O => \half_duty_new_reg[2]6__26_carry__0_i_4_n_0\
    );
\half_duty_new_reg[2]6__26_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]6__26_carry__0_n_0\,
      CO(3) => \NLW_half_duty_new_reg[2]6__26_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new_reg[2]6__26_carry__1_n_1\,
      CO(1) => \half_duty_new_reg[2]6__26_carry__1_n_2\,
      CO(0) => \half_duty_new_reg[2]6__26_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => slv_reg0(23 downto 22),
      DI(0) => '0',
      O(3) => \half_duty_new_reg[2]6__26_carry__1_n_4\,
      O(2) => \half_duty_new_reg[2]6__26_carry__1_n_5\,
      O(1) => \half_duty_new_reg[2]6__26_carry__1_n_6\,
      O(0) => \half_duty_new_reg[2]6__26_carry__1_n_7\,
      S(3) => '1',
      S(2) => \half_duty_new_reg[2]6__26_carry__1_i_1_n_0\,
      S(1) => \half_duty_new_reg[2]6__26_carry__1_i_2_n_0\,
      S(0) => slv_reg0(21)
    );
\half_duty_new_reg[2]6__26_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(23),
      O => \half_duty_new_reg[2]6__26_carry__1_i_1_n_0\
    );
\half_duty_new_reg[2]6__26_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(22),
      O => \half_duty_new_reg[2]6__26_carry__1_i_2_n_0\
    );
\half_duty_new_reg[2]6__26_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => slv_reg0(19),
      O => \half_duty_new_reg[2]6__26_carry_i_1_n_0\
    );
\half_duty_new_reg[2]6__26_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(18),
      O => \half_duty_new_reg[2]6__26_carry_i_2_n_0\
    );
\half_duty_new_reg[2]6__26_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(17),
      O => \half_duty_new_reg[2]6__26_carry_i_3_n_0\
    );
\half_duty_new_reg[2]6__53_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[2]6__53_carry_n_0\,
      CO(2) => \half_duty_new_reg[2]6__53_carry_n_1\,
      CO(1) => \half_duty_new_reg[2]6__53_carry_n_2\,
      CO(0) => \half_duty_new_reg[2]6__53_carry_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[2]6__53_carry_i_1_n_0\,
      DI(2) => \half_duty_new_reg[2]6__53_carry_i_2_n_0\,
      DI(1) => \half_duty_new_reg[2]6__53_carry_i_3_n_0\,
      DI(0) => \half_duty_new_reg[2]6__53_carry_i_4_n_0\,
      O(3) => \half_duty_new_reg[2]6__53_carry_n_4\,
      O(2) => \half_duty_new_reg[2]6__53_carry_n_5\,
      O(1) => \half_duty_new_reg[2]6__53_carry_n_6\,
      O(0) => \NLW_half_duty_new_reg[2]6__53_carry_O_UNCONNECTED\(0),
      S(3) => \half_duty_new_reg[2]6__53_carry_i_5_n_0\,
      S(2) => \half_duty_new_reg[2]6__53_carry_i_6_n_0\,
      S(1) => \half_duty_new_reg[2]6__53_carry_i_7_n_0\,
      S(0) => \half_duty_new_reg[2]6__53_carry_i_8_n_0\
    );
\half_duty_new_reg[2]6__53_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]6__53_carry_n_0\,
      CO(3) => \half_duty_new_reg[2]6__53_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[2]6__53_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[2]6__53_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[2]6__53_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[2]6__53_carry__0_i_1_n_0\,
      DI(2) => \half_duty_new_reg[2]6__53_carry__0_i_2_n_0\,
      DI(1) => \half_duty_new_reg[2]6__53_carry__0_i_3_n_0\,
      DI(0) => \half_duty_new_reg[2]6__53_carry__0_i_4_n_0\,
      O(3) => \half_duty_new_reg[2]6__53_carry__0_n_4\,
      O(2) => \half_duty_new_reg[2]6__53_carry__0_n_5\,
      O(1) => \half_duty_new_reg[2]6__53_carry__0_n_6\,
      O(0) => \half_duty_new_reg[2]6__53_carry__0_n_7\,
      S(3) => \half_duty_new_reg[2]6__53_carry__0_i_5_n_0\,
      S(2) => \half_duty_new_reg[2]6__53_carry__0_i_6_n_0\,
      S(1) => \half_duty_new_reg[2]6__53_carry__0_i_7_n_0\,
      S(0) => \half_duty_new_reg[2]6__53_carry__0_i_8_n_0\
    );
\half_duty_new_reg[2]6__53_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry__0_n_4\,
      I1 => \half_duty_new_reg[2]6__26_carry__0_n_6\,
      O => \half_duty_new_reg[2]6__53_carry__0_i_1_n_0\
    );
\half_duty_new_reg[2]6__53_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry__0_n_5\,
      I1 => \half_duty_new_reg[2]6__26_carry__0_n_7\,
      O => \half_duty_new_reg[2]6__53_carry__0_i_2_n_0\
    );
\half_duty_new_reg[2]6__53_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry__0_n_6\,
      I1 => slv_reg0(23),
      I2 => \half_duty_new_reg[2]6__26_carry_n_4\,
      O => \half_duty_new_reg[2]6__53_carry__0_i_3_n_0\
    );
\half_duty_new_reg[2]6__53_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry__0_n_7\,
      I1 => slv_reg0(22),
      I2 => \half_duty_new_reg[2]6__26_carry_n_5\,
      O => \half_duty_new_reg[2]6__53_carry__0_i_4_n_0\
    );
\half_duty_new_reg[2]6__53_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__0_i_1_n_0\,
      I1 => \half_duty_new_reg[2]6__26_carry__0_n_5\,
      I2 => \half_duty_new_reg[2]6_carry__1_n_7\,
      O => \half_duty_new_reg[2]6__53_carry__0_i_5_n_0\
    );
\half_duty_new_reg[2]6__53_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry__0_n_4\,
      I1 => \half_duty_new_reg[2]6__26_carry__0_n_6\,
      I2 => \half_duty_new_reg[2]6__53_carry__0_i_2_n_0\,
      O => \half_duty_new_reg[2]6__53_carry__0_i_6_n_0\
    );
\half_duty_new_reg[2]6__53_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry__0_n_5\,
      I1 => \half_duty_new_reg[2]6__26_carry__0_n_7\,
      I2 => \half_duty_new_reg[2]6__53_carry__0_i_3_n_0\,
      O => \half_duty_new_reg[2]6__53_carry__0_i_7_n_0\
    );
\half_duty_new_reg[2]6__53_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry__0_n_6\,
      I1 => slv_reg0(23),
      I2 => \half_duty_new_reg[2]6__26_carry_n_4\,
      I3 => \half_duty_new_reg[2]6__53_carry__0_i_4_n_0\,
      O => \half_duty_new_reg[2]6__53_carry__0_i_8_n_0\
    );
\half_duty_new_reg[2]6__53_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]6__53_carry__0_n_0\,
      CO(3) => \half_duty_new_reg[2]6__53_carry__1_n_0\,
      CO(2) => \half_duty_new_reg[2]6__53_carry__1_n_1\,
      CO(1) => \half_duty_new_reg[2]6__53_carry__1_n_2\,
      CO(0) => \half_duty_new_reg[2]6__53_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \half_duty_new_reg[2]6__26_carry__1_n_6\,
      DI(1) => \half_duty_new_reg[2]6__53_carry__1_i_1_n_0\,
      DI(0) => \half_duty_new_reg[2]6__53_carry__1_i_2_n_0\,
      O(3) => \half_duty_new_reg[2]6__53_carry__1_n_4\,
      O(2) => \half_duty_new_reg[2]6__53_carry__1_n_5\,
      O(1) => \half_duty_new_reg[2]6__53_carry__1_n_6\,
      O(0) => \half_duty_new_reg[2]6__53_carry__1_n_7\,
      S(3) => \half_duty_new_reg[2]6__26_carry__1_n_5\,
      S(2) => \half_duty_new_reg[2]6__53_carry__1_i_3_n_0\,
      S(1) => \half_duty_new_reg[2]6__53_carry__1_i_4_n_0\,
      S(0) => \half_duty_new_reg[2]6__53_carry__1_i_5_n_0\
    );
\half_duty_new_reg[2]6__53_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__26_carry__0_n_4\,
      I1 => \half_duty_new_reg[2]6_carry__1_n_6\,
      O => \half_duty_new_reg[2]6__53_carry__1_i_1_n_0\
    );
\half_duty_new_reg[2]6__53_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry__1_n_7\,
      I1 => \half_duty_new_reg[2]6__26_carry__0_n_5\,
      O => \half_duty_new_reg[2]6__53_carry__1_i_2_n_0\
    );
\half_duty_new_reg[2]6__53_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry__1_n_1\,
      I1 => \half_duty_new_reg[2]6__26_carry__1_n_7\,
      I2 => \half_duty_new_reg[2]6__26_carry__1_n_6\,
      O => \half_duty_new_reg[2]6__53_carry__1_i_3_n_0\
    );
\half_duty_new_reg[2]6__53_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry__1_n_6\,
      I1 => \half_duty_new_reg[2]6__26_carry__0_n_4\,
      I2 => \half_duty_new_reg[2]6__26_carry__1_n_7\,
      I3 => \half_duty_new_reg[2]6_carry__1_n_1\,
      O => \half_duty_new_reg[2]6__53_carry__1_i_4_n_0\
    );
\half_duty_new_reg[2]6__53_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__26_carry__0_n_5\,
      I1 => \half_duty_new_reg[2]6_carry__1_n_7\,
      I2 => \half_duty_new_reg[2]6__26_carry__0_n_4\,
      I3 => \half_duty_new_reg[2]6_carry__1_n_6\,
      O => \half_duty_new_reg[2]6__53_carry__1_i_5_n_0\
    );
\half_duty_new_reg[2]6__53_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]6__53_carry__1_n_0\,
      CO(3 downto 1) => \NLW_half_duty_new_reg[2]6__53_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \half_duty_new_reg[2]6__53_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \half_duty_new_reg[2]6__26_carry__1_n_4\,
      O(3 downto 2) => \NLW_half_duty_new_reg[2]6__53_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1) => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O(0) => \half_duty_new_reg[2]6__53_carry__2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \half_duty_new_reg[2]6__26_carry__1_n_4\,
      S(0) => \half_duty_new_reg[2]6__26_carry__1_n_4\
    );
\half_duty_new_reg[2]6__53_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry_n_4\,
      I1 => slv_reg0(21),
      I2 => \half_duty_new_reg[2]6__26_carry_n_6\,
      O => \half_duty_new_reg[2]6__53_carry_i_1_n_0\
    );
\half_duty_new_reg[2]6__53_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry_n_5\,
      I1 => slv_reg0(20),
      I2 => \half_duty_new_reg[2]6_carry_n_7\,
      O => \half_duty_new_reg[2]6__53_carry_i_2_n_0\
    );
\half_duty_new_reg[2]6__53_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => \half_duty_new_reg[2]6_carry_n_6\,
      O => \half_duty_new_reg[2]6__53_carry_i_3_n_0\
    );
\half_duty_new_reg[2]6__53_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => slv_reg0(16),
      O => \half_duty_new_reg[2]6__53_carry_i_4_n_0\
    );
\half_duty_new_reg[2]6__53_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry__0_n_7\,
      I1 => slv_reg0(22),
      I2 => \half_duty_new_reg[2]6__26_carry_n_5\,
      I3 => \half_duty_new_reg[2]6__53_carry_i_1_n_0\,
      O => \half_duty_new_reg[2]6__53_carry_i_5_n_0\
    );
\half_duty_new_reg[2]6__53_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry_n_4\,
      I1 => slv_reg0(21),
      I2 => \half_duty_new_reg[2]6__26_carry_n_6\,
      I3 => \half_duty_new_reg[2]6__53_carry_i_2_n_0\,
      O => \half_duty_new_reg[2]6__53_carry_i_6_n_0\
    );
\half_duty_new_reg[2]6__53_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry_n_5\,
      I1 => slv_reg0(20),
      I2 => \half_duty_new_reg[2]6_carry_n_7\,
      I3 => \half_duty_new_reg[2]6__53_carry_i_3_n_0\,
      O => \half_duty_new_reg[2]6__53_carry_i_7_n_0\
    );
\half_duty_new_reg[2]6__53_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => \half_duty_new_reg[2]6_carry_n_6\,
      I2 => slv_reg0(16),
      I3 => slv_reg0(18),
      O => \half_duty_new_reg[2]6__53_carry_i_8_n_0\
    );
\half_duty_new_reg[2]6_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[2]6_carry_n_0\,
      CO(2) => \half_duty_new_reg[2]6_carry_n_1\,
      CO(1) => \half_duty_new_reg[2]6_carry_n_2\,
      CO(0) => \half_duty_new_reg[2]6_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => slv_reg0(17 downto 16),
      DI(1 downto 0) => B"01",
      O(3) => \half_duty_new_reg[2]6_carry_n_4\,
      O(2) => \half_duty_new_reg[2]6_carry_n_5\,
      O(1) => \half_duty_new_reg[2]6_carry_n_6\,
      O(0) => \half_duty_new_reg[2]6_carry_n_7\,
      S(3) => \half_duty_new_reg[2]6_carry_i_1_n_0\,
      S(2) => \half_duty_new_reg[2]6_carry_i_2_n_0\,
      S(1) => \half_duty_new_reg[2]6_carry_i_3_n_0\,
      S(0) => slv_reg0(16)
    );
\half_duty_new_reg[2]6_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]6_carry_n_0\,
      CO(3) => \half_duty_new_reg[2]6_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[2]6_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[2]6_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[2]6_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => slv_reg0(23),
      DI(2 downto 0) => slv_reg0(20 downto 18),
      O(3) => \half_duty_new_reg[2]6_carry__0_n_4\,
      O(2) => \half_duty_new_reg[2]6_carry__0_n_5\,
      O(1) => \half_duty_new_reg[2]6_carry__0_n_6\,
      O(0) => \half_duty_new_reg[2]6_carry__0_n_7\,
      S(3) => \half_duty_new_reg[2]6_carry__0_i_1_n_0\,
      S(2) => \half_duty_new_reg[2]6_carry__0_i_2_n_0\,
      S(1) => \half_duty_new_reg[2]6_carry__0_i_3_n_0\,
      S(0) => \half_duty_new_reg[2]6_carry__0_i_4_n_0\
    );
\half_duty_new_reg[2]6_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => slv_reg0(21),
      O => \half_duty_new_reg[2]6_carry__0_i_1_n_0\
    );
\half_duty_new_reg[2]6_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(20),
      I1 => slv_reg0(22),
      O => \half_duty_new_reg[2]6_carry__0_i_2_n_0\
    );
\half_duty_new_reg[2]6_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => slv_reg0(21),
      O => \half_duty_new_reg[2]6_carry__0_i_3_n_0\
    );
\half_duty_new_reg[2]6_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => slv_reg0(20),
      O => \half_duty_new_reg[2]6_carry__0_i_4_n_0\
    );
\half_duty_new_reg[2]6_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]6_carry__0_n_0\,
      CO(3) => \NLW_half_duty_new_reg[2]6_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new_reg[2]6_carry__1_n_1\,
      CO(1) => \NLW_half_duty_new_reg[2]6_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \half_duty_new_reg[2]6_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => slv_reg0(23 downto 22),
      O(3 downto 2) => \NLW_half_duty_new_reg[2]6_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \half_duty_new_reg[2]6_carry__1_n_6\,
      O(0) => \half_duty_new_reg[2]6_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \half_duty_new_reg[2]6_carry__1_i_1_n_0\,
      S(0) => \half_duty_new_reg[2]6_carry__1_i_2_n_0\
    );
\half_duty_new_reg[2]6_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(23),
      O => \half_duty_new_reg[2]6_carry__1_i_1_n_0\
    );
\half_duty_new_reg[2]6_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => slv_reg0(22),
      O => \half_duty_new_reg[2]6_carry__1_i_2_n_0\
    );
\half_duty_new_reg[2]6_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => slv_reg0(19),
      O => \half_duty_new_reg[2]6_carry_i_1_n_0\
    );
\half_duty_new_reg[2]6_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => slv_reg0(16),
      O => \half_duty_new_reg[2]6_carry_i_2_n_0\
    );
\half_duty_new_reg[2]6_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(17),
      O => \half_duty_new_reg[2]6_carry_i_3_n_0\
    );
\half_duty_new_reg[2]7_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \half_duty_new_reg[2]7_carry_n_0\,
      CO(2) => \half_duty_new_reg[2]7_carry_n_1\,
      CO(1) => \half_duty_new_reg[2]7_carry_n_2\,
      CO(0) => \half_duty_new_reg[2]7_carry_n_3\,
      CYINIT => '1',
      DI(3) => \half_duty_new_reg[2]7_carry_i_1_n_0\,
      DI(2) => \half_duty_new_reg[2]7_carry_i_2_n_0\,
      DI(1) => \half_duty_new_reg[2]7_carry_i_3_n_0\,
      DI(0) => \half_duty_new_reg[2]7_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[2]7_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[2]7_carry_i_5_n_0\,
      S(2) => \half_duty_new_reg[2]7_carry_i_6_n_0\,
      S(1) => \half_duty_new_reg[2]7_carry_i_7_n_0\,
      S(0) => \half_duty_new_reg[2]7_carry_i_8_n_0\
    );
\half_duty_new_reg[2]7_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]7_carry_n_0\,
      CO(3) => \half_duty_new_reg[2]7_carry__0_n_0\,
      CO(2) => \half_duty_new_reg[2]7_carry__0_n_1\,
      CO(1) => \half_duty_new_reg[2]7_carry__0_n_2\,
      CO(0) => \half_duty_new_reg[2]7_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \half_duty_new_reg[2]7_carry__0_i_1_n_0\,
      DI(2) => \half_duty_new_reg[2]7_carry__0_i_2_n_0\,
      DI(1) => \half_duty_new_reg[2]7_carry__0_i_3_n_0\,
      DI(0) => \half_duty_new_reg[2]7_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_half_duty_new_reg[2]7_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \half_duty_new_reg[2]7_carry__0_i_5_n_0\,
      S(2) => \half_duty_new_reg[2]7_carry__0_i_6_n_0\,
      S(1) => \half_duty_new_reg[2]7_carry__0_i_7_n_0\,
      S(0) => \half_duty_new_reg[2]7_carry__0_i_8_n_0\
    );
\half_duty_new_reg[2]7_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__1_n_4\,
      I1 => \half_duty_new_reg[2]6__53_carry__2_n_7\,
      O => \half_duty_new_reg[2]7_carry__0_i_1_n_0\
    );
\half_duty_new_reg[2]7_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__1_n_6\,
      I1 => \half_duty_new_reg[2]6__53_carry__1_n_5\,
      O => \half_duty_new_reg[2]7_carry__0_i_2_n_0\
    );
\half_duty_new_reg[2]7_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__0_n_4\,
      I1 => \half_duty_new_reg[2]6__53_carry__1_n_7\,
      O => \half_duty_new_reg[2]7_carry__0_i_3_n_0\
    );
\half_duty_new_reg[2]7_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__0_n_6\,
      I1 => \half_duty_new_reg[2]6__53_carry__0_n_5\,
      O => \half_duty_new_reg[2]7_carry__0_i_4_n_0\
    );
\half_duty_new_reg[2]7_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__2_n_7\,
      I1 => \half_duty_new_reg[2]6__53_carry__1_n_4\,
      O => \half_duty_new_reg[2]7_carry__0_i_5_n_0\
    );
\half_duty_new_reg[2]7_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__1_n_5\,
      I1 => \half_duty_new_reg[2]6__53_carry__1_n_6\,
      O => \half_duty_new_reg[2]7_carry__0_i_6_n_0\
    );
\half_duty_new_reg[2]7_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__1_n_7\,
      I1 => \half_duty_new_reg[2]6__53_carry__0_n_4\,
      O => \half_duty_new_reg[2]7_carry__0_i_7_n_0\
    );
\half_duty_new_reg[2]7_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__0_n_5\,
      I1 => \half_duty_new_reg[2]6__53_carry__0_n_6\,
      O => \half_duty_new_reg[2]7_carry__0_i_8_n_0\
    );
\half_duty_new_reg[2]7_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]7_carry__0_n_0\,
      CO(3 downto 1) => \NLW_half_duty_new_reg[2]7_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \half_duty_new_reg[2]7\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_half_duty_new_reg[2]7_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \half_duty_new_reg[2]7_carry__1_i_1_n_0\
    );
\half_duty_new_reg[2]7_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__2_n_6\,
      O => \half_duty_new_reg[2]7_carry__1_i_1_n_0\
    );
\half_duty_new_reg[2]7_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry_n_4\,
      I1 => \half_duty_new_reg[2]6__53_carry__0_n_7\,
      O => \half_duty_new_reg[2]7_carry_i_1_n_0\
    );
\half_duty_new_reg[2]7_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry_n_6\,
      I1 => \half_duty_new_reg[2]6__53_carry_n_5\,
      O => \half_duty_new_reg[2]7_carry_i_2_n_0\
    );
\half_duty_new_reg[2]7_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E77E"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => slv_reg0(18),
      I2 => slv_reg0(19),
      I3 => \half_duty_new_reg[2]6_carry_n_6\,
      O => \half_duty_new_reg[2]7_carry_i_3_n_0\
    );
\half_duty_new_reg[2]7_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => slv_reg0(17),
      O => \half_duty_new_reg[2]7_carry_i_4_n_0\
    );
\half_duty_new_reg[2]7_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry__0_n_7\,
      I1 => \half_duty_new_reg[2]6__53_carry_n_4\,
      O => \half_duty_new_reg[2]7_carry_i_5_n_0\
    );
\half_duty_new_reg[2]7_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \half_duty_new_reg[2]6__53_carry_n_5\,
      I1 => \half_duty_new_reg[2]6__53_carry_n_6\,
      O => \half_duty_new_reg[2]7_carry_i_6_n_0\
    );
\half_duty_new_reg[2]7_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6009"
    )
        port map (
      I0 => \half_duty_new_reg[2]6_carry_n_6\,
      I1 => slv_reg0(19),
      I2 => slv_reg0(18),
      I3 => slv_reg0(16),
      O => \half_duty_new_reg[2]7_carry_i_7_n_0\
    );
\half_duty_new_reg[2]7_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => slv_reg0(16),
      O => \half_duty_new_reg[2]7_carry_i_8_n_0\
    );
\half_duty_new_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new_reg[2]10_in\(0),
      Q => \half_duty_new_reg[2]_6\(0),
      R => '0'
    );
\half_duty_new_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[2][1]_i_1_n_0\,
      Q => \half_duty_new_reg[2]_6\(1),
      R => '0'
    );
\half_duty_new_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[2][2]_i_1_n_0\,
      Q => \half_duty_new_reg[2]_6\(2),
      R => '0'
    );
\half_duty_new_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[2][3]_i_1_n_0\,
      Q => \half_duty_new_reg[2]_6\(3),
      R => '0'
    );
\half_duty_new_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[2][4]_i_1_n_0\,
      Q => \half_duty_new_reg[2]_6\(4),
      R => '0'
    );
\half_duty_new_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[2][5]_i_1_n_0\,
      Q => \half_duty_new_reg[2]_6\(5),
      R => '0'
    );
\half_duty_new_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[2][6]_i_1_n_0\,
      Q => \half_duty_new_reg[2]_6\(6),
      R => '0'
    );
\half_duty_new_reg[2][6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \half_duty_new_reg[2]4_carry__1_i_9_n_0\,
      CO(3) => \NLW_half_duty_new_reg[2][6]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \half_duty_new_reg[2][6]_i_2_n_1\,
      CO(1) => \NLW_half_duty_new_reg[2][6]_i_2_CO_UNCONNECTED\(1),
      CO(0) => \half_duty_new_reg[2][6]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_half_duty_new_reg[2][6]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \half_duty_new_reg[2]4\(22 downto 21),
      S(3 downto 2) => B"01",
      S(1) => \half_duty_new[2][6]_i_4_n_0\,
      S(0) => \half_duty_new[2][6]_i_5_n_0\
    );
\half_duty_new_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => reset_n,
      D => \half_duty_new[2][7]_i_1_n_0\,
      Q => \half_duty_new_reg[2]_6\(7),
      R => '0'
    );
\half_duty_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[0]0\,
      D => \half_duty_new_reg[0]_1\(0),
      Q => \half_duty_reg[0]_2\(0),
      R => '0'
    );
\half_duty_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[0]0\,
      D => \half_duty_new_reg[0]_1\(1),
      Q => \half_duty_reg[0]_2\(1),
      R => '0'
    );
\half_duty_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[0]0\,
      D => \half_duty_new_reg[0]_1\(2),
      Q => \half_duty_reg[0]_2\(2),
      R => '0'
    );
\half_duty_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[0]0\,
      D => \half_duty_new_reg[0]_1\(3),
      Q => \half_duty_reg[0]_2\(3),
      R => '0'
    );
\half_duty_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[0]0\,
      D => \half_duty_new_reg[0]_1\(4),
      Q => \half_duty_reg[0]_2\(4),
      R => '0'
    );
\half_duty_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[0]0\,
      D => \half_duty_new_reg[0]_1\(5),
      Q => \half_duty_reg[0]_2\(5),
      R => '0'
    );
\half_duty_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[0]0\,
      D => \half_duty_new_reg[0]_1\(6),
      Q => \half_duty_reg[0]_2\(6),
      R => '0'
    );
\half_duty_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[0]0\,
      D => \half_duty_new_reg[0]_1\(7),
      Q => \half_duty_reg[0]_2\(7),
      R => '0'
    );
\half_duty_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[1]0\,
      D => \half_duty_new_reg[1]_3\(0),
      Q => \half_duty_reg[1]_4\(0),
      R => '0'
    );
\half_duty_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[1]0\,
      D => \half_duty_new_reg[1]_3\(1),
      Q => \half_duty_reg[1]_4\(1),
      R => '0'
    );
\half_duty_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[1]0\,
      D => \half_duty_new_reg[1]_3\(2),
      Q => \half_duty_reg[1]_4\(2),
      R => '0'
    );
\half_duty_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[1]0\,
      D => \half_duty_new_reg[1]_3\(3),
      Q => \half_duty_reg[1]_4\(3),
      R => '0'
    );
\half_duty_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[1]0\,
      D => \half_duty_new_reg[1]_3\(4),
      Q => \half_duty_reg[1]_4\(4),
      R => '0'
    );
\half_duty_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[1]0\,
      D => \half_duty_new_reg[1]_3\(5),
      Q => \half_duty_reg[1]_4\(5),
      R => '0'
    );
\half_duty_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[1]0\,
      D => \half_duty_new_reg[1]_3\(6),
      Q => \half_duty_reg[1]_4\(6),
      R => '0'
    );
\half_duty_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[1]0\,
      D => \half_duty_new_reg[1]_3\(7),
      Q => \half_duty_reg[1]_4\(7),
      R => '0'
    );
\half_duty_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[2]0\,
      D => \half_duty_new_reg[2]_6\(0),
      Q => \half_duty_reg[2]_7\(0),
      R => '0'
    );
\half_duty_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[2]0\,
      D => \half_duty_new_reg[2]_6\(1),
      Q => \half_duty_reg[2]_7\(1),
      R => '0'
    );
\half_duty_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[2]0\,
      D => \half_duty_new_reg[2]_6\(2),
      Q => \half_duty_reg[2]_7\(2),
      R => '0'
    );
\half_duty_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[2]0\,
      D => \half_duty_new_reg[2]_6\(3),
      Q => \half_duty_reg[2]_7\(3),
      R => '0'
    );
\half_duty_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[2]0\,
      D => \half_duty_new_reg[2]_6\(4),
      Q => \half_duty_reg[2]_7\(4),
      R => '0'
    );
\half_duty_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[2]0\,
      D => \half_duty_new_reg[2]_6\(5),
      Q => \half_duty_reg[2]_7\(5),
      R => '0'
    );
\half_duty_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[2]0\,
      D => \half_duty_new_reg[2]_6\(6),
      Q => \half_duty_reg[2]_7\(6),
      R => '0'
    );
\half_duty_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \half_duty_reg[2]0\,
      D => \half_duty_new_reg[2]_6\(7),
      Q => \half_duty_reg[2]_7\(7),
      R => '0'
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440088020080440"
    )
        port map (
      I0 => \count_reg[1]_5\(6),
      I1 => \count_reg[1]_5\(8),
      I2 => \count_reg[1]_5\(7),
      I3 => \half_duty_reg[1]_4\(7),
      I4 => \half_duty_reg[1]_4\(6),
      I5 => \i__carry_i_4_n_0\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => \count_reg[1]_5\(8),
      I1 => \count_reg[1]_5\(6),
      I2 => \half_duty_reg[1]_4\(6),
      I3 => \half_duty_reg[1]_4\(7),
      I4 => \count_reg[1]_5\(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440088020080440"
    )
        port map (
      I0 => \count_reg[2]_8\(6),
      I1 => \count_reg[2]_8\(8),
      I2 => \count_reg[2]_8\(7),
      I3 => \half_duty_reg[2]_7\(7),
      I4 => \half_duty_reg[2]_7\(6),
      I5 => \i__carry_i_4__0_n_0\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => \count_reg[2]_8\(8),
      I1 => \count_reg[2]_8\(6),
      I2 => \half_duty_reg[2]_7\(6),
      I3 => \half_duty_reg[2]_7\(7),
      I4 => \count_reg[2]_8\(7),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000044804488000"
    )
        port map (
      I0 => \count_reg[1]_5\(4),
      I1 => \i__carry_i_5_n_0\,
      I2 => \half_duty_reg[1]_4\(4),
      I3 => \i__carry_i_6_n_0\,
      I4 => \half_duty_reg[1]_4\(5),
      I5 => \count_reg[1]_5\(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000044804488000"
    )
        port map (
      I0 => \count_reg[2]_8\(4),
      I1 => \i__carry_i_5__0_n_0\,
      I2 => \half_duty_reg[2]_7\(4),
      I3 => \i__carry_i_6__0_n_0\,
      I4 => \half_duty_reg[2]_7\(5),
      I5 => \count_reg[2]_8\(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_reg[1]_5\(3),
      I1 => \half_duty_reg[1]_4\(3),
      I2 => \count_reg[1]_5\(4),
      I3 => \half_duty_reg[1]_4\(4),
      I4 => \half_duty_reg[1]_4\(5),
      I5 => \count_reg[1]_5\(5),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_reg[2]_8\(3),
      I1 => \half_duty_reg[2]_7\(3),
      I2 => \count_reg[2]_8\(4),
      I3 => \half_duty_reg[2]_7\(4),
      I4 => \half_duty_reg[2]_7\(5),
      I5 => \count_reg[2]_8\(5),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_reg[1]_5\(0),
      I1 => \half_duty_reg[1]_4\(0),
      I2 => \count_reg[1]_5\(1),
      I3 => \half_duty_reg[1]_4\(1),
      I4 => \half_duty_reg[1]_4\(2),
      I5 => \count_reg[1]_5\(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082820041000014"
    )
        port map (
      I0 => \count_reg[1]_5\(0),
      I1 => \half_duty_reg[1]_4\(2),
      I2 => \count_reg[1]_5\(2),
      I3 => \count_reg[1]_5\(1),
      I4 => \half_duty_reg[1]_4\(1),
      I5 => \half_duty_reg[1]_4\(0),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_reg[2]_8\(0),
      I1 => \half_duty_reg[2]_7\(0),
      I2 => \count_reg[2]_8\(1),
      I3 => \half_duty_reg[2]_7\(1),
      I4 => \half_duty_reg[2]_7\(2),
      I5 => \count_reg[2]_8\(2),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082820041000014"
    )
        port map (
      I0 => \count_reg[2]_8\(0),
      I1 => \half_duty_reg[2]_7\(2),
      I2 => \count_reg[2]_8\(2),
      I3 => \count_reg[2]_8\(1),
      I4 => \half_duty_reg[2]_7\(1),
      I5 => \half_duty_reg[2]_7\(0),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57575777FFFFFFFF"
    )
        port map (
      I0 => \half_duty_reg[1]_4\(4),
      I1 => \half_duty_reg[1]_4\(3),
      I2 => \half_duty_reg[1]_4\(2),
      I3 => \half_duty_reg[1]_4\(1),
      I4 => \half_duty_reg[1]_4\(0),
      I5 => \half_duty_reg[1]_4\(5),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57575777FFFFFFFF"
    )
        port map (
      I0 => \half_duty_reg[2]_7\(4),
      I1 => \half_duty_reg[2]_7\(3),
      I2 => \half_duty_reg[2]_7\(2),
      I3 => \half_duty_reg[2]_7\(1),
      I4 => \half_duty_reg[2]_7\(0),
      I5 => \half_duty_reg[2]_7\(5),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69696999"
    )
        port map (
      I0 => \half_duty_reg[1]_4\(3),
      I1 => \count_reg[1]_5\(3),
      I2 => \half_duty_reg[1]_4\(2),
      I3 => \half_duty_reg[1]_4\(1),
      I4 => \half_duty_reg[1]_4\(0),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69696999"
    )
        port map (
      I0 => \half_duty_reg[2]_7\(3),
      I1 => \count_reg[2]_8\(3),
      I2 => \half_duty_reg[2]_7\(2),
      I3 => \half_duty_reg[2]_7\(1),
      I4 => \half_duty_reg[2]_7\(0),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEA"
    )
        port map (
      I0 => \half_duty_reg[1]_4\(3),
      I1 => \half_duty_reg[1]_4\(2),
      I2 => \half_duty_reg[1]_4\(1),
      I3 => \half_duty_reg[1]_4\(0),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEA"
    )
        port map (
      I0 => \half_duty_reg[2]_7\(3),
      I1 => \half_duty_reg[2]_7\(2),
      I2 => \half_duty_reg[2]_7\(1),
      I3 => \half_duty_reg[2]_7\(0),
      O => \i__carry_i_6__0_n_0\
    );
pwm_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_pwm_out0_carry_CO_UNCONNECTED(3),
      CO(2) => pwm_out04_in,
      CO(1) => pwm_out0_carry_n_2,
      CO(0) => pwm_out0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pwm_out0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => pwm_out0_carry_i_1_n_0,
      S(1) => pwm_out0_carry_i_2_n_0,
      S(0) => pwm_out0_carry_i_3_n_0
    );
pwm_out0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440088020080440"
    )
        port map (
      I0 => \count_reg[0]_0\(6),
      I1 => \count_reg[0]_0\(8),
      I2 => \count_reg[0]_0\(7),
      I3 => \half_duty_reg[0]_2\(7),
      I4 => \half_duty_reg[0]_2\(6),
      I5 => pwm_out0_carry_i_4_n_0,
      O => pwm_out0_carry_i_1_n_0
    );
pwm_out0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8118000006600000"
    )
        port map (
      I0 => \half_duty_reg[0]_2\(4),
      I1 => pwm_out0_carry_i_5_n_0,
      I2 => \half_duty_reg[0]_2\(5),
      I3 => \count_reg[0]_0\(5),
      I4 => pwm_out0_carry_i_6_n_0,
      I5 => \count_reg[0]_0\(4),
      O => pwm_out0_carry_i_2_n_0
    );
pwm_out0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082820041000014"
    )
        port map (
      I0 => \count_reg[0]_0\(0),
      I1 => \half_duty_reg[0]_2\(2),
      I2 => \count_reg[0]_0\(2),
      I3 => \count_reg[0]_0\(1),
      I4 => \half_duty_reg[0]_2\(1),
      I5 => \half_duty_reg[0]_2\(0),
      O => pwm_out0_carry_i_3_n_0
    );
pwm_out0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57575777FFFFFFFF"
    )
        port map (
      I0 => \half_duty_reg[0]_2\(4),
      I1 => \half_duty_reg[0]_2\(3),
      I2 => \half_duty_reg[0]_2\(2),
      I3 => \half_duty_reg[0]_2\(1),
      I4 => \half_duty_reg[0]_2\(0),
      I5 => \half_duty_reg[0]_2\(5),
      O => pwm_out0_carry_i_4_n_0
    );
pwm_out0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEA"
    )
        port map (
      I0 => \half_duty_reg[0]_2\(3),
      I1 => \half_duty_reg[0]_2\(2),
      I2 => \half_duty_reg[0]_2\(1),
      I3 => \half_duty_reg[0]_2\(0),
      O => pwm_out0_carry_i_5_n_0
    );
pwm_out0_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69696999"
    )
        port map (
      I0 => \half_duty_reg[0]_2\(3),
      I1 => \count_reg[0]_0\(3),
      I2 => \half_duty_reg[0]_2\(2),
      I3 => \half_duty_reg[0]_2\(1),
      I4 => \half_duty_reg[0]_2\(0),
      O => pwm_out0_carry_i_6_n_0
    );
\pwm_out0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_pwm_out0_inferred__0/i__carry_CO_UNCONNECTED\(3),
      CO(2) => pwm_out01_in,
      CO(1) => \pwm_out0_inferred__0/i__carry_n_2\,
      CO(0) => \pwm_out0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_out0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1_n_0\,
      S(1) => \i__carry_i_2_n_0\,
      S(0) => \i__carry_i_3__0_n_0\
    );
\pwm_out0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_pwm_out0_inferred__1/i__carry_CO_UNCONNECTED\(3),
      CO(2) => pwm_out0,
      CO(1) => \pwm_out0_inferred__1/i__carry_n_2\,
      CO(0) => \pwm_out0_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_out0_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1__1_n_0\,
      S(1) => \i__carry_i_2__0_n_0\,
      S(0) => \i__carry_i_3__2_n_0\
    );
pwm_out1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_pwm_out1_carry_CO_UNCONNECTED(3),
      CO(2) => pwm_out1,
      CO(1) => pwm_out1_carry_n_2,
      CO(0) => pwm_out1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pwm_out1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => pwm_out1_carry_i_1_n_0,
      S(1) => pwm_out1_carry_i_2_n_0,
      S(0) => pwm_out1_carry_i_3_n_0
    );
pwm_out1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => \count_reg[0]_0\(8),
      I1 => \half_duty_reg[0]_2\(6),
      I2 => \count_reg[0]_0\(6),
      I3 => \count_reg[0]_0\(7),
      I4 => \half_duty_reg[0]_2\(7),
      O => pwm_out1_carry_i_1_n_0
    );
pwm_out1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_reg[0]_0\(3),
      I1 => \half_duty_reg[0]_2\(3),
      I2 => \half_duty_reg[0]_2\(4),
      I3 => \count_reg[0]_0\(4),
      I4 => \count_reg[0]_0\(5),
      I5 => \half_duty_reg[0]_2\(5),
      O => pwm_out1_carry_i_2_n_0
    );
pwm_out1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_reg[0]_0\(0),
      I1 => \half_duty_reg[0]_2\(0),
      I2 => \half_duty_reg[0]_2\(1),
      I3 => \count_reg[0]_0\(1),
      I4 => \count_reg[0]_0\(2),
      I5 => \half_duty_reg[0]_2\(2),
      O => pwm_out1_carry_i_3_n_0
    );
\pwm_out1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_pwm_out1_inferred__1/i__carry_CO_UNCONNECTED\(3),
      CO(2) => pwm_out10_out,
      CO(1) => \pwm_out1_inferred__1/i__carry_n_2\,
      CO(0) => \pwm_out1_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_out1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1__0_n_0\,
      S(1) => \i__carry_i_2__1_n_0\,
      S(0) => \i__carry_i_3_n_0\
    );
\pwm_out1_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_pwm_out1_inferred__3/i__carry_CO_UNCONNECTED\(3),
      CO(2) => pwm_out11_out,
      CO(1) => \pwm_out1_inferred__3/i__carry_n_2\,
      CO(0) => \pwm_out1_inferred__3/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_out1_inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1__2_n_0\,
      S(1) => \i__carry_i_2__2_n_0\,
      S(0) => \i__carry_i_3__1_n_0\
    );
\pwm_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => pwm_out1,
      I1 => pwm_out04_in,
      I2 => \^pwm_out\(0),
      O => \pwm_out[0]_i_1_n_0\
    );
\pwm_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => pwm_out10_out,
      I1 => pwm_out01_in,
      I2 => \^pwm_out\(1),
      O => \pwm_out[1]_i_1_n_0\
    );
\pwm_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => pwm_out11_out,
      I1 => pwm_out0,
      I2 => \^pwm_out\(2),
      O => \pwm_out[2]_i_1_n_0\
    );
\pwm_out[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \pwm_out[2]_i_2_n_0\
    );
\pwm_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \pwm_out[0]_i_1_n_0\,
      Q => \^pwm_out\(0)
    );
\pwm_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \pwm_out[1]_i_1_n_0\,
      Q => \^pwm_out\(1)
    );
\pwm_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \pwm_out[2]_i_2_n_0\,
      D => \pwm_out[2]_i_1_n_0\,
      Q => \^pwm_out\(2)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
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
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => SR(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => SR(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => SR(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => SR(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => SR(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => SR(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => SR(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => SR(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => SR(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => SR(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => SR(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => SR(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => SR(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => SR(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => SR(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => SR(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => SR(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => SR(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => SR(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => SR(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => SR(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => SR(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => SR(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => SR(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => SR(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => SR(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => SR(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => SR(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => SR(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => SR(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => SR(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
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
      I0 => \slv_reg_wren__2\,
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
      I0 => \slv_reg_wren__2\,
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
      I0 => \slv_reg_wren__2\,
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
      I0 => \slv_reg_wren__2\,
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
      Q => slv_reg1(0),
      R => SR(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => SR(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => SR(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => SR(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => SR(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => SR(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => SR(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => SR(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => SR(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => SR(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => SR(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => SR(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => SR(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => SR(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => SR(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => SR(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => SR(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => SR(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => SR(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => SR(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => SR(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => SR(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => SR(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => SR(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => SR(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => SR(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => SR(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => SR(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => SR(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => SR(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => SR(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => SR(0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
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
      I0 => \slv_reg_wren__2\,
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
      I0 => \slv_reg_wren__2\,
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
      I0 => \slv_reg_wren__2\,
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
      Q => slv_reg2(0),
      R => SR(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => SR(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => SR(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => SR(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => SR(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => SR(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => SR(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => SR(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => SR(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => SR(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => SR(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => SR(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => SR(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => SR(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => SR(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => SR(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => SR(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => SR(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => SR(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => SR(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => SR(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => SR(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => SR(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => SR(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => SR(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => SR(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => SR(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => SR(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => SR(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => SR(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => SR(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => SR(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
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
      I0 => \slv_reg_wren__2\,
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
      I0 => \slv_reg_wren__2\,
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
      I0 => \slv_reg_wren__2\,
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
entity design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    pwm_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset_n : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0 : entity is "pwmRgbLed_v1_0";
end design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0;

architecture STRUCTURE of design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0 is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
pwmRgbLed_v1_0_S00_AXI_inst: entity work.design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0_S00_AXI
     port map (
      SR(0) => axi_awready_i_1_n_0,
      axi_arready_reg_0 => axi_rvalid_i_1_n_0,
      axi_wready_reg_0 => axi_bvalid_i_1_n_0,
      pwm_out(2 downto 0) => pwm_out(2 downto 0),
      reset_n => reset_n,
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
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pwmDriverAXI_0_0 is
  port (
    pwm_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_n : in STD_LOGIC;
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
  attribute NotValidForBitStream of design_1_pwmDriverAXI_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pwmDriverAXI_0_0 : entity is "design_1_pwmDriverAXI_0_0,pwmRgbLed_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_pwmDriverAXI_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_pwmDriverAXI_0_0 : entity is "pwmRgbLed_v1_0,Vivado 2017.4";
end design_1_pwmDriverAXI_0_0;

architecture STRUCTURE of design_1_pwmDriverAXI_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 5e+07, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
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
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 5e+07, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
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
U0: entity work.design_1_pwmDriverAXI_0_0_pwmRgbLed_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      pwm_out(2 downto 0) => pwm_out(2 downto 0),
      reset_n => reset_n,
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
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
