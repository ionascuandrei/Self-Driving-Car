// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module HystThreshold (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        fifo5_dout,
        fifo5_empty_n,
        fifo5_read,
        fifo6_din,
        fifo6_full_n,
        fifo6_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [7:0] fifo5_dout;
input   fifo5_empty_n;
output   fifo5_read;
output  [7:0] fifo6_din;
input   fifo6_full_n;
output   fifo6_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg fifo5_read;
reg fifo6_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    fifo5_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_54_i_reg_194;
reg    fifo6_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] ap_reg_pp0_iter1_tmp_54_i_reg_194;
reg   [10:0] xi_i_reg_108;
wire   [0:0] tmp_i_fu_119_p2;
wire    ap_CS_fsm_state2;
wire   [9:0] yi_fu_125_p2;
reg   [9:0] yi_reg_189;
wire   [0:0] tmp_54_i_fu_131_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] xi_fu_137_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_57_i_fu_143_p2;
reg   [0:0] tmp_57_i_reg_203;
wire   [0:0] tmp_58_i_fu_149_p2;
reg   [0:0] tmp_58_i_reg_209;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [9:0] yi_i_reg_97;
reg    ap_block_state1;
wire    ap_CS_fsm_state6;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] not_tmp_57_i_fu_155_p2;
wire   [0:0] tmp_fu_168_p2;
wire   [1:0] pix_hyst_i_cast_fu_160_p3;
wire   [1:0] pix_hyst_1_i_fu_172_p3;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((tmp_i_fu_119_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((tmp_i_fu_119_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((tmp_i_fu_119_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_fu_119_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        xi_i_reg_108 <= 11'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_54_i_fu_131_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        xi_i_reg_108 <= xi_fu_137_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        yi_i_reg_97 <= yi_reg_189;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        yi_i_reg_97 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_reg_pp0_iter1_tmp_54_i_reg_194 <= tmp_54_i_reg_194;
        tmp_54_i_reg_194 <= tmp_54_i_fu_131_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_54_i_reg_194 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_57_i_reg_203 <= tmp_57_i_fu_143_p2;
        tmp_58_i_reg_209 <= tmp_58_i_fu_149_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        yi_reg_189 <= yi_fu_125_p2;
    end
end

always @ (*) begin
    if ((tmp_54_i_fu_131_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_fu_119_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_54_i_reg_194 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo5_blk_n = fifo5_empty_n;
    end else begin
        fifo5_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_54_i_reg_194 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo5_read = 1'b1;
    end else begin
        fifo5_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter1_tmp_54_i_reg_194 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        fifo6_blk_n = fifo6_full_n;
    end else begin
        fifo6_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_reg_pp0_iter1_tmp_54_i_reg_194 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        fifo6_write = 1'b1;
    end else begin
        fifo6_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_fu_119_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_i_fu_119_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((tmp_54_i_fu_131_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((tmp_54_i_fu_131_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_reg_pp0_iter1_tmp_54_i_reg_194 == 1'd0) & (fifo6_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_54_i_reg_194 == 1'd0) & (fifo5_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_reg_pp0_iter1_tmp_54_i_reg_194 == 1'd0) & (fifo6_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_54_i_reg_194 == 1'd0) & (fifo5_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_reg_pp0_iter1_tmp_54_i_reg_194 == 1'd0) & (fifo6_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_54_i_reg_194 == 1'd0) & (fifo5_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((tmp_54_i_reg_194 == 1'd0) & (fifo5_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = ((ap_reg_pp0_iter1_tmp_54_i_reg_194 == 1'd0) & (fifo6_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign fifo6_din = $signed(pix_hyst_1_i_fu_172_p3);

assign not_tmp_57_i_fu_155_p2 = (tmp_57_i_reg_203 ^ 1'd1);

assign pix_hyst_1_i_fu_172_p3 = ((tmp_fu_168_p2[0:0] === 1'b1) ? pix_hyst_i_cast_fu_160_p3 : 2'd1);

assign pix_hyst_i_cast_fu_160_p3 = ((not_tmp_57_i_fu_155_p2[0:0] === 1'b1) ? 2'd3 : 2'd0);

assign start_out = real_start;

assign tmp_54_i_fu_131_p2 = ((xi_i_reg_108 == 11'd1280) ? 1'b1 : 1'b0);

assign tmp_57_i_fu_143_p2 = ((fifo5_dout < 8'd80) ? 1'b1 : 1'b0);

assign tmp_58_i_fu_149_p2 = ((fifo5_dout > 8'd85) ? 1'b1 : 1'b0);

assign tmp_fu_168_p2 = (tmp_58_i_reg_209 | tmp_57_i_reg_203);

assign tmp_i_fu_119_p2 = ((yi_i_reg_97 == 10'd720) ? 1'b1 : 1'b0);

assign xi_fu_137_p2 = (xi_i_reg_108 + 11'd1);

assign yi_fu_125_p2 = (yi_i_reg_97 + 10'd1);

endmodule //HystThreshold
