-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sat May  4 15:36:18 2019
-- Host        : catabit-UX430UAR running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_canny_edge_detection_0_1 -prefix
--               design_1_canny_edge_detection_0_1_ design_1_canny_edge_detection_0_1_stub.vhdl
-- Design      : design_1_canny_edge_detection_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_canny_edge_detection_0_1 is
  Port ( 
    axis_in_TVALID : in STD_LOGIC;
    axis_in_TREADY : out STD_LOGIC;
    axis_in_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    axis_in_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axis_in_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axis_in_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    axis_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    axis_in_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    axis_in_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    axis_out_TVALID : out STD_LOGIC;
    axis_out_TREADY : in STD_LOGIC;
    axis_out_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_out_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    axis_out_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    axis_out_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    axis_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    axis_out_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    axis_out_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );

end design_1_canny_edge_detection_0_1;

architecture stub of design_1_canny_edge_detection_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axis_in_TVALID,axis_in_TREADY,axis_in_TDATA[23:0],axis_in_TKEEP[2:0],axis_in_TSTRB[2:0],axis_in_TUSER[0:0],axis_in_TLAST[0:0],axis_in_TID[0:0],axis_in_TDEST[0:0],axis_out_TVALID,axis_out_TREADY,axis_out_TDATA[7:0],axis_out_TKEEP[0:0],axis_out_TSTRB[0:0],axis_out_TUSER[0:0],axis_out_TLAST[0:0],axis_out_TID[0:0],axis_out_TDEST[0:0],ap_clk,ap_rst_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "canny_edge_detection,Vivado 2017.4";
begin
end;
