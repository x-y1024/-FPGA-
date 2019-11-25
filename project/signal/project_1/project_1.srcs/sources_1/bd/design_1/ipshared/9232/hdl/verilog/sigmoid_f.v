// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sigmoid_f (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sigm_din_V,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [19:0] sigm_din_V;
output  [19:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
reg    ap_block_pp0_stage0_11001;
wire   [2:0] poly_coe_V_0_address0;
reg    poly_coe_V_0_ce0;
wire   [13:0] poly_coe_V_0_q0;
wire   [2:0] poly_coe_V_1_address0;
reg    poly_coe_V_1_ce0;
wire   [15:0] poly_coe_V_1_q0;
wire   [2:0] poly_coe_V_2_address0;
reg    poly_coe_V_2_ce0;
wire   [16:0] poly_coe_V_2_q0;
wire   [2:0] poly_coe_V_3_address0;
reg    poly_coe_V_3_ce0;
wire   [17:0] poly_coe_V_3_q0;
wire   [0:0] tmp_fu_225_p2;
reg   [0:0] tmp_reg_546;
reg   [0:0] tmp_reg_546_pp0_iter1_reg;
reg   [0:0] tmp_reg_546_pp0_iter2_reg;
reg   [0:0] tmp_reg_546_pp0_iter3_reg;
reg   [0:0] tmp_reg_546_pp0_iter4_reg;
reg   [0:0] tmp_reg_546_pp0_iter5_reg;
reg   [0:0] tmp_reg_546_pp0_iter6_reg;
reg   [0:0] tmp_reg_546_pp0_iter7_reg;
wire   [0:0] icmp_fu_241_p2;
reg   [0:0] icmp_reg_550;
reg   [0:0] icmp_reg_550_pp0_iter1_reg;
reg   [0:0] icmp_reg_550_pp0_iter2_reg;
reg   [0:0] icmp_reg_550_pp0_iter3_reg;
reg   [0:0] icmp_reg_550_pp0_iter4_reg;
reg   [0:0] icmp_reg_550_pp0_iter5_reg;
reg   [0:0] icmp_reg_550_pp0_iter6_reg;
reg   [0:0] icmp_reg_550_pp0_iter7_reg;
reg   [0:0] tmp_5_reg_593;
reg   [0:0] tmp_5_reg_593_pp0_iter1_reg;
reg   [0:0] tmp_5_reg_593_pp0_iter2_reg;
reg   [0:0] tmp_5_reg_593_pp0_iter3_reg;
reg   [0:0] tmp_5_reg_593_pp0_iter4_reg;
reg   [0:0] tmp_5_reg_593_pp0_iter5_reg;
reg   [0:0] tmp_5_reg_593_pp0_iter6_reg;
wire   [17:0] tmp_6_fu_378_p1;
reg   [17:0] tmp_6_reg_599;
wire   [17:0] poly_din_abs_V_fu_395_p3;
reg   [17:0] poly_din_abs_V_reg_625;
reg   [17:0] poly_din_abs_V_reg_625_pp0_iter2_reg;
reg   [17:0] poly_din_abs_V_reg_625_pp0_iter3_reg;
reg   [17:0] poly_din_abs_V_reg_625_pp0_iter4_reg;
reg  signed [13:0] poly_coe_V_0_load_reg_634;
reg   [15:0] poly_coe_V_1_load_reg_639;
reg   [15:0] poly_coe_V_1_load_reg_639_pp0_iter2_reg;
reg  signed [15:0] poly_coe_V_1_load_reg_639_pp0_iter3_reg;
reg   [16:0] poly_coe_V_2_load_reg_644;
reg   [16:0] poly_coe_V_2_load_reg_644_pp0_iter2_reg;
reg   [16:0] poly_coe_V_2_load_reg_644_pp0_iter3_reg;
reg   [17:0] p_Val2_5_reg_649;
reg   [17:0] p_Val2_5_reg_649_pp0_iter2_reg;
reg   [17:0] p_Val2_5_reg_649_pp0_iter3_reg;
reg   [17:0] p_Val2_5_reg_649_pp0_iter4_reg;
reg   [17:0] p_Val2_5_reg_649_pp0_iter5_reg;
reg   [17:0] p_Val2_5_reg_649_pp0_iter6_reg;
wire  signed [31:0] r_V_fu_528_p2;
reg  signed [31:0] r_V_reg_654;
wire   [47:0] r_V_1_fu_413_p2;
reg  signed [47:0] r_V_1_reg_659;
wire  signed [33:0] r_V_2_fu_534_p2;
reg  signed [33:0] r_V_2_reg_674;
wire   [33:0] p_Val2_3_fu_540_p2;
reg   [33:0] p_Val2_3_reg_679;
reg   [33:0] p_Val2_3_reg_679_pp0_iter5_reg;
reg   [33:0] p_Val2_3_reg_679_pp0_iter6_reg;
wire   [64:0] grp_fu_428_p2;
reg   [64:0] p_Val2_s_reg_684;
wire   [49:0] p_Val2_1_fu_446_p2;
reg   [49:0] p_Val2_1_reg_689;
wire   [64:0] p_Val2_2_fu_463_p2;
reg   [64:0] p_Val2_2_reg_694;
wire   [19:0] poly_temp_V_fu_521_p3;
reg   [19:0] poly_temp_V_reg_699;
reg    ap_block_pp0_stage0_subdone;
reg   [2:0] ap_phi_mux_p_0_phi_fu_167_p28;
wire   [2:0] ap_phi_reg_pp0_iter0_p_0_reg_164;
wire   [0:0] tmp_s_fu_247_p2;
wire   [0:0] tmp_13_1_fu_253_p2;
wire   [0:0] tmp_13_2_fu_259_p2;
wire   [0:0] tmp_13_3_fu_265_p2;
wire   [0:0] tmp_13_4_fu_271_p2;
wire   [0:0] tmp_13_5_fu_277_p2;
wire   [0:0] tmp_13_6_fu_283_p2;
wire   [0:0] icmp4_fu_299_p2;
wire   [0:0] icmp7_fu_315_p2;
wire   [0:0] tmp_13_s_fu_321_p2;
wire   [0:0] icmp1_fu_337_p2;
wire   [0:0] tmp_13_7_fu_343_p2;
wire   [0:0] tmp_13_8_fu_349_p2;
wire   [2:0] p_cast_cast_fu_361_p3;
reg   [19:0] ap_phi_mux_agg_result_V_phi_fu_215_p6;
reg   [19:0] ap_phi_reg_pp0_iter8_agg_result_V_reg_210;
wire   [19:0] ap_phi_reg_pp0_iter0_agg_result_V_reg_210;
reg   [19:0] ap_phi_reg_pp0_iter1_agg_result_V_reg_210;
reg   [19:0] ap_phi_reg_pp0_iter2_agg_result_V_reg_210;
reg   [19:0] ap_phi_reg_pp0_iter3_agg_result_V_reg_210;
reg   [19:0] ap_phi_reg_pp0_iter4_agg_result_V_reg_210;
reg   [19:0] ap_phi_reg_pp0_iter5_agg_result_V_reg_210;
reg   [19:0] ap_phi_reg_pp0_iter6_agg_result_V_reg_210;
reg   [19:0] ap_phi_reg_pp0_iter7_agg_result_V_reg_210;
wire   [63:0] tmp_i_i_fu_382_p1;
wire   [2:0] tmp_1_fu_231_p4;
wire   [5:0] tmp_2_fu_289_p4;
wire   [4:0] tmp_3_fu_305_p4;
wire   [3:0] tmp_4_fu_327_p4;
wire   [0:0] tmp_13_9_fu_355_p2;
wire   [17:0] poly_din_abs_V_cast_fu_390_p2;
wire  signed [31:0] r_V_1_fu_413_p0;
wire   [17:0] r_V_1_fu_413_p1;
wire   [17:0] grp_fu_428_p1;
wire  signed [33:0] p_Val2_1_fu_446_p0;
wire   [17:0] p_Val2_1_fu_446_p1;
wire   [63:0] tmp_2_i_i_fu_452_p3;
wire  signed [64:0] tmp_2_i_i_cast_fu_459_p1;
wire   [61:0] tmp_5_i_i_fu_471_p3;
wire   [65:0] tmp_5_i_i_cast_cast_fu_478_p1;
wire   [65:0] tmp_3_i_i_cast_fu_468_p1;
wire   [59:0] tmp_8_i_i_fu_488_p3;
wire   [65:0] tmp_8_i_i_cast_cast_fu_495_p1;
wire   [65:0] p_Val2_4_fu_482_p2;
wire   [65:0] p_Val2_6_fu_499_p2;
wire   [19:0] poly_eq_dout_V_fu_505_p4;
wire   [19:0] p_Val2_9_i_fu_515_p2;
wire   [17:0] r_V_fu_528_p0;
wire   [17:0] r_V_2_fu_534_p1;
wire   [33:0] OP2_V_cast3_fu_419_p1;
wire   [16:0] p_Val2_3_fu_540_p0;
wire   [17:0] p_Val2_3_fu_540_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to7;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire   [64:0] grp_fu_428_p10;
wire   [49:0] p_Val2_1_fu_446_p10;
wire   [33:0] p_Val2_3_fu_540_p00;
wire   [47:0] r_V_1_fu_413_p10;
wire   [31:0] r_V_fu_528_p00;
reg    ap_condition_71;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
end

sigmoid_f_poly_cobkb #(
    .DataWidth( 14 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
poly_coe_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(poly_coe_V_0_address0),
    .ce0(poly_coe_V_0_ce0),
    .q0(poly_coe_V_0_q0)
);

sigmoid_f_poly_cocud #(
    .DataWidth( 16 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
poly_coe_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(poly_coe_V_1_address0),
    .ce0(poly_coe_V_1_ce0),
    .q0(poly_coe_V_1_q0)
);

sigmoid_f_poly_codEe #(
    .DataWidth( 17 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
poly_coe_V_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(poly_coe_V_2_address0),
    .ce0(poly_coe_V_2_ce0),
    .q0(poly_coe_V_2_q0)
);

sigmoid_f_poly_coeOg #(
    .DataWidth( 18 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
poly_coe_V_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(poly_coe_V_3_address0),
    .ce0(poly_coe_V_3_ce0),
    .q0(poly_coe_V_3_q0)
);

bpnn_mul_48s_18nsfYi #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 48 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 65 ))
bpnn_mul_48s_18nsfYi_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(r_V_1_reg_659),
    .din1(grp_fu_428_p1),
    .ce(1'b1),
    .dout(grp_fu_428_p2)
);

bpnn_mul_mul_18nsg8j #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 18 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 32 ))
bpnn_mul_mul_18nsg8j_U2(
    .din0(r_V_fu_528_p0),
    .din1(poly_coe_V_0_load_reg_634),
    .dout(r_V_fu_528_p2)
);

bpnn_mul_mul_16s_hbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 34 ))
bpnn_mul_mul_16s_hbi_U3(
    .din0(poly_coe_V_1_load_reg_639_pp0_iter3_reg),
    .din1(r_V_2_fu_534_p1),
    .dout(r_V_2_fu_534_p2)
);

bpnn_mul_mul_17nsibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 18 ),
    .dout_WIDTH( 34 ))
bpnn_mul_mul_17nsibs_U4(
    .din0(p_Val2_3_fu_540_p0),
    .din1(p_Val2_3_fu_540_p1),
    .dout(p_Val2_3_fu_540_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_71)) begin
        if (((icmp_fu_241_p2 == 1'd0) & (tmp_fu_225_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_agg_result_V_reg_210 <= 20'd262141;
        end else if ((tmp_fu_225_p2 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_agg_result_V_reg_210 <= 20'd2;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_agg_result_V_reg_210 <= ap_phi_reg_pp0_iter0_agg_result_V_reg_210;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter2_agg_result_V_reg_210 <= ap_phi_reg_pp0_iter1_agg_result_V_reg_210;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_reg_pp0_iter3_agg_result_V_reg_210 <= ap_phi_reg_pp0_iter2_agg_result_V_reg_210;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_reg_pp0_iter4_agg_result_V_reg_210 <= ap_phi_reg_pp0_iter3_agg_result_V_reg_210;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        ap_phi_reg_pp0_iter5_agg_result_V_reg_210 <= ap_phi_reg_pp0_iter4_agg_result_V_reg_210;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        ap_phi_reg_pp0_iter6_agg_result_V_reg_210 <= ap_phi_reg_pp0_iter5_agg_result_V_reg_210;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        ap_phi_reg_pp0_iter7_agg_result_V_reg_210 <= ap_phi_reg_pp0_iter6_agg_result_V_reg_210;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        ap_phi_reg_pp0_iter8_agg_result_V_reg_210 <= ap_phi_reg_pp0_iter7_agg_result_V_reg_210;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_fu_225_p2 == 1'd0))) begin
        icmp_reg_550 <= icmp_fu_241_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_reg_550_pp0_iter1_reg <= icmp_reg_550;
        tmp_5_reg_593_pp0_iter1_reg <= tmp_5_reg_593;
        tmp_reg_546 <= tmp_fu_225_p2;
        tmp_reg_546_pp0_iter1_reg <= tmp_reg_546;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_reg_550_pp0_iter2_reg <= icmp_reg_550_pp0_iter1_reg;
        icmp_reg_550_pp0_iter3_reg <= icmp_reg_550_pp0_iter2_reg;
        icmp_reg_550_pp0_iter4_reg <= icmp_reg_550_pp0_iter3_reg;
        icmp_reg_550_pp0_iter5_reg <= icmp_reg_550_pp0_iter4_reg;
        icmp_reg_550_pp0_iter6_reg <= icmp_reg_550_pp0_iter5_reg;
        icmp_reg_550_pp0_iter7_reg <= icmp_reg_550_pp0_iter6_reg;
        p_Val2_3_reg_679_pp0_iter5_reg <= p_Val2_3_reg_679;
        p_Val2_3_reg_679_pp0_iter6_reg <= p_Val2_3_reg_679_pp0_iter5_reg;
        p_Val2_5_reg_649_pp0_iter2_reg <= p_Val2_5_reg_649;
        p_Val2_5_reg_649_pp0_iter3_reg <= p_Val2_5_reg_649_pp0_iter2_reg;
        p_Val2_5_reg_649_pp0_iter4_reg <= p_Val2_5_reg_649_pp0_iter3_reg;
        p_Val2_5_reg_649_pp0_iter5_reg <= p_Val2_5_reg_649_pp0_iter4_reg;
        p_Val2_5_reg_649_pp0_iter6_reg <= p_Val2_5_reg_649_pp0_iter5_reg;
        poly_coe_V_1_load_reg_639_pp0_iter2_reg <= poly_coe_V_1_load_reg_639;
        poly_coe_V_1_load_reg_639_pp0_iter3_reg <= poly_coe_V_1_load_reg_639_pp0_iter2_reg;
        poly_coe_V_2_load_reg_644_pp0_iter2_reg <= poly_coe_V_2_load_reg_644;
        poly_coe_V_2_load_reg_644_pp0_iter3_reg <= poly_coe_V_2_load_reg_644_pp0_iter2_reg;
        poly_din_abs_V_reg_625_pp0_iter2_reg <= poly_din_abs_V_reg_625;
        poly_din_abs_V_reg_625_pp0_iter3_reg <= poly_din_abs_V_reg_625_pp0_iter2_reg;
        poly_din_abs_V_reg_625_pp0_iter4_reg <= poly_din_abs_V_reg_625_pp0_iter3_reg;
        tmp_5_reg_593_pp0_iter2_reg <= tmp_5_reg_593_pp0_iter1_reg;
        tmp_5_reg_593_pp0_iter3_reg <= tmp_5_reg_593_pp0_iter2_reg;
        tmp_5_reg_593_pp0_iter4_reg <= tmp_5_reg_593_pp0_iter3_reg;
        tmp_5_reg_593_pp0_iter5_reg <= tmp_5_reg_593_pp0_iter4_reg;
        tmp_5_reg_593_pp0_iter6_reg <= tmp_5_reg_593_pp0_iter5_reg;
        tmp_reg_546_pp0_iter2_reg <= tmp_reg_546_pp0_iter1_reg;
        tmp_reg_546_pp0_iter3_reg <= tmp_reg_546_pp0_iter2_reg;
        tmp_reg_546_pp0_iter4_reg <= tmp_reg_546_pp0_iter3_reg;
        tmp_reg_546_pp0_iter5_reg <= tmp_reg_546_pp0_iter4_reg;
        tmp_reg_546_pp0_iter6_reg <= tmp_reg_546_pp0_iter5_reg;
        tmp_reg_546_pp0_iter7_reg <= tmp_reg_546_pp0_iter6_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_reg_550_pp0_iter4_reg == 1'd1) & (tmp_reg_546_pp0_iter4_reg == 1'd0))) begin
        p_Val2_1_reg_689 <= p_Val2_1_fu_446_p2;
        p_Val2_s_reg_684 <= grp_fu_428_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_reg_550_pp0_iter5_reg == 1'd1) & (tmp_reg_546_pp0_iter5_reg == 1'd0))) begin
        p_Val2_2_reg_694 <= p_Val2_2_fu_463_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_reg_550_pp0_iter3_reg == 1'd1) & (tmp_reg_546_pp0_iter3_reg == 1'd0))) begin
        p_Val2_3_reg_679 <= p_Val2_3_fu_540_p2;
        r_V_2_reg_674 <= r_V_2_fu_534_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_reg_550 == 1'd1) & (tmp_reg_546 == 1'd0))) begin
        p_Val2_5_reg_649 <= poly_coe_V_3_q0;
        poly_coe_V_0_load_reg_634 <= poly_coe_V_0_q0;
        poly_coe_V_1_load_reg_639 <= poly_coe_V_1_q0;
        poly_coe_V_2_load_reg_644 <= poly_coe_V_2_q0;
        poly_din_abs_V_reg_625 <= poly_din_abs_V_fu_395_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_reg_550_pp0_iter6_reg == 1'd1) & (tmp_reg_546_pp0_iter6_reg == 1'd0))) begin
        poly_temp_V_reg_699 <= poly_temp_V_fu_521_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_reg_550_pp0_iter2_reg == 1'd1) & (tmp_reg_546_pp0_iter2_reg == 1'd0))) begin
        r_V_1_reg_659 <= r_V_1_fu_413_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_reg_550_pp0_iter1_reg == 1'd1) & (tmp_reg_546_pp0_iter1_reg == 1'd0))) begin
        r_V_reg_654 <= r_V_fu_528_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0))) begin
        tmp_5_reg_593 <= sigm_din_V[32'd19];
        tmp_6_reg_599 <= tmp_6_fu_378_p1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to7 = 1'b1;
    end else begin
        ap_idle_pp0_0to7 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_reg_550_pp0_iter7_reg == 1'd1) & (tmp_reg_546_pp0_iter7_reg == 1'd0))) begin
        ap_phi_mux_agg_result_V_phi_fu_215_p6 = poly_temp_V_reg_699;
    end else begin
        ap_phi_mux_agg_result_V_phi_fu_215_p6 = ap_phi_reg_pp0_iter8_agg_result_V_reg_210;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_13_8_fu_349_p2 == 1'd0) & (tmp_13_7_fu_343_p2 == 1'd0) & (icmp1_fu_337_p2 == 1'd0) & (tmp_13_s_fu_321_p2 == 1'd0) & (icmp7_fu_315_p2 == 1'd0) & (icmp4_fu_299_p2 == 1'd0) & (tmp_13_6_fu_283_p2 == 1'd0) & (tmp_13_5_fu_277_p2 == 1'd0) & (tmp_13_4_fu_271_p2 == 1'd0) & (tmp_13_3_fu_265_p2 == 1'd0) & (tmp_13_2_fu_259_p2 == 1'd0) & (tmp_13_1_fu_253_p2 == 1'd0) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0))) begin
        ap_phi_mux_p_0_phi_fu_167_p28 = p_cast_cast_fu_361_p3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp4_fu_299_p2 == 1'd1) & (tmp_13_6_fu_283_p2 == 1'd0) & (tmp_13_5_fu_277_p2 == 1'd0) & (tmp_13_4_fu_271_p2 == 1'd0) & (tmp_13_3_fu_265_p2 == 1'd0) & (tmp_13_2_fu_259_p2 == 1'd0) & (tmp_13_1_fu_253_p2 == 1'd0) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0))) begin
        ap_phi_mux_p_0_phi_fu_167_p28 = 3'd0;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp7_fu_315_p2 == 1'd1) & (icmp4_fu_299_p2 == 1'd0) & (tmp_13_6_fu_283_p2 == 1'd0) & (tmp_13_5_fu_277_p2 == 1'd0) & (tmp_13_4_fu_271_p2 == 1'd0) & (tmp_13_3_fu_265_p2 == 1'd0) & (tmp_13_2_fu_259_p2 == 1'd0) & (tmp_13_1_fu_253_p2 == 1'd0) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_13_6_fu_283_p2 == 1'd1) & (tmp_13_5_fu_277_p2 == 1'd0) & (tmp_13_4_fu_271_p2 == 1'd0) & (tmp_13_3_fu_265_p2 == 1'd0) & (tmp_13_2_fu_259_p2 == 1'd0) & (tmp_13_1_fu_253_p2 == 1'd0) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0)))) begin
        ap_phi_mux_p_0_phi_fu_167_p28 = 3'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_13_s_fu_321_p2 == 1'd1) & (icmp7_fu_315_p2 == 1'd0) & (icmp4_fu_299_p2 == 1'd0) & (tmp_13_6_fu_283_p2 == 1'd0) & (tmp_13_5_fu_277_p2 == 1'd0) & (tmp_13_4_fu_271_p2 == 1'd0) & (tmp_13_3_fu_265_p2 == 1'd0) & (tmp_13_2_fu_259_p2 == 1'd0) & (tmp_13_1_fu_253_p2 == 1'd0) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_13_5_fu_277_p2 == 1'd1) & (tmp_13_4_fu_271_p2 == 1'd0) & (tmp_13_3_fu_265_p2 == 1'd0) & (tmp_13_2_fu_259_p2 == 1'd0) & (tmp_13_1_fu_253_p2 == 1'd0) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0)))) begin
        ap_phi_mux_p_0_phi_fu_167_p28 = 3'd2;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp1_fu_337_p2 == 1'd1) & (tmp_13_s_fu_321_p2 == 1'd0) & (icmp7_fu_315_p2 == 1'd0) & (icmp4_fu_299_p2 == 1'd0) & (tmp_13_6_fu_283_p2 == 1'd0) & (tmp_13_5_fu_277_p2 == 1'd0) & (tmp_13_4_fu_271_p2 == 1'd0) & (tmp_13_3_fu_265_p2 == 1'd0) & (tmp_13_2_fu_259_p2 == 1'd0) & (tmp_13_1_fu_253_p2 == 1'd0) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_13_4_fu_271_p2 == 1'd1) & (tmp_13_3_fu_265_p2 == 1'd0) & (tmp_13_2_fu_259_p2 == 1'd0) & (tmp_13_1_fu_253_p2 == 1'd0) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0)))) begin
        ap_phi_mux_p_0_phi_fu_167_p28 = 3'd3;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_13_7_fu_343_p2 == 1'd1) & (icmp1_fu_337_p2 == 1'd0) & (tmp_13_s_fu_321_p2 == 1'd0) & (icmp7_fu_315_p2 == 1'd0) & (icmp4_fu_299_p2 == 1'd0) & (tmp_13_6_fu_283_p2 == 1'd0) & (tmp_13_5_fu_277_p2 == 1'd0) & (tmp_13_4_fu_271_p2 == 1'd0) & (tmp_13_3_fu_265_p2 == 1'd0) & (tmp_13_2_fu_259_p2 == 1'd0) & (tmp_13_1_fu_253_p2 == 1'd0) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_13_3_fu_265_p2 == 1'd1) & (tmp_13_2_fu_259_p2 == 1'd0) & (tmp_13_1_fu_253_p2 == 1'd0) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0)))) begin
        ap_phi_mux_p_0_phi_fu_167_p28 = 3'd4;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_13_8_fu_349_p2 == 1'd1) & (tmp_13_7_fu_343_p2 == 1'd0) & (icmp1_fu_337_p2 == 1'd0) & (tmp_13_s_fu_321_p2 == 1'd0) & (icmp7_fu_315_p2 == 1'd0) & (icmp4_fu_299_p2 == 1'd0) & (tmp_13_6_fu_283_p2 == 1'd0) & (tmp_13_5_fu_277_p2 == 1'd0) & (tmp_13_4_fu_271_p2 == 1'd0) & (tmp_13_3_fu_265_p2 == 1'd0) & (tmp_13_2_fu_259_p2 == 1'd0) & (tmp_13_1_fu_253_p2 == 1'd0) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_13_2_fu_259_p2 == 1'd1) & (tmp_13_1_fu_253_p2 == 1'd0) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0)))) begin
        ap_phi_mux_p_0_phi_fu_167_p28 = 3'd5;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_13_1_fu_253_p2 == 1'd1) & (tmp_s_fu_247_p2 == 1'd0) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0))) begin
        ap_phi_mux_p_0_phi_fu_167_p28 = 3'd6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_s_fu_247_p2 == 1'd1) & (icmp_fu_241_p2 == 1'd1) & (tmp_fu_225_p2 == 1'd0))) begin
        ap_phi_mux_p_0_phi_fu_167_p28 = 3'd7;
    end else begin
        ap_phi_mux_p_0_phi_fu_167_p28 = ap_phi_reg_pp0_iter0_p_0_reg_164;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        poly_coe_V_0_ce0 = 1'b1;
    end else begin
        poly_coe_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        poly_coe_V_1_ce0 = 1'b1;
    end else begin
        poly_coe_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        poly_coe_V_2_ce0 = 1'b1;
    end else begin
        poly_coe_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        poly_coe_V_3_ce0 = 1'b1;
    end else begin
        poly_coe_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign OP2_V_cast3_fu_419_p1 = poly_din_abs_V_reg_625_pp0_iter3_reg;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_start == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start == 1'b0);
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_71 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_agg_result_V_reg_210 = 'bx;

assign ap_phi_reg_pp0_iter0_p_0_reg_164 = 'bx;

assign ap_return = ap_phi_mux_agg_result_V_phi_fu_215_p6;

assign grp_fu_428_p1 = grp_fu_428_p10;

assign grp_fu_428_p10 = poly_din_abs_V_reg_625_pp0_iter3_reg;

assign icmp1_fu_337_p2 = (($signed(tmp_4_fu_327_p4) < $signed(4'd1)) ? 1'b1 : 1'b0);

assign icmp4_fu_299_p2 = (($signed(tmp_2_fu_289_p4) < $signed(6'd1)) ? 1'b1 : 1'b0);

assign icmp7_fu_315_p2 = (($signed(tmp_3_fu_305_p4) < $signed(5'd1)) ? 1'b1 : 1'b0);

assign icmp_fu_241_p2 = (($signed(tmp_1_fu_231_p4) < $signed(3'd1)) ? 1'b1 : 1'b0);

assign p_Val2_1_fu_446_p0 = r_V_2_reg_674;

assign p_Val2_1_fu_446_p1 = p_Val2_1_fu_446_p10;

assign p_Val2_1_fu_446_p10 = poly_din_abs_V_reg_625_pp0_iter4_reg;

assign p_Val2_1_fu_446_p2 = ($signed(p_Val2_1_fu_446_p0) * $signed({{1'b0}, {p_Val2_1_fu_446_p1}}));

assign p_Val2_2_fu_463_p2 = ($signed(tmp_2_i_i_cast_fu_459_p1) + $signed(p_Val2_s_reg_684));

assign p_Val2_3_fu_540_p0 = p_Val2_3_fu_540_p00;

assign p_Val2_3_fu_540_p00 = poly_coe_V_2_load_reg_644_pp0_iter3_reg;

assign p_Val2_3_fu_540_p1 = OP2_V_cast3_fu_419_p1;

assign p_Val2_4_fu_482_p2 = (tmp_5_i_i_cast_cast_fu_478_p1 + tmp_3_i_i_cast_fu_468_p1);

assign p_Val2_6_fu_499_p2 = (tmp_8_i_i_cast_cast_fu_495_p1 + p_Val2_4_fu_482_p2);

assign p_Val2_9_i_fu_515_p2 = (20'd262144 - poly_eq_dout_V_fu_505_p4);

assign p_cast_cast_fu_361_p3 = ((tmp_13_9_fu_355_p2[0:0] === 1'b1) ? 3'd6 : 3'd7);

assign poly_coe_V_0_address0 = tmp_i_i_fu_382_p1;

assign poly_coe_V_1_address0 = tmp_i_i_fu_382_p1;

assign poly_coe_V_2_address0 = tmp_i_i_fu_382_p1;

assign poly_coe_V_3_address0 = tmp_i_i_fu_382_p1;

assign poly_din_abs_V_cast_fu_390_p2 = (18'd0 - tmp_6_reg_599);

assign poly_din_abs_V_fu_395_p3 = ((tmp_5_reg_593[0:0] === 1'b1) ? poly_din_abs_V_cast_fu_390_p2 : tmp_6_reg_599);

assign poly_eq_dout_V_fu_505_p4 = {{p_Val2_6_fu_499_p2[61:42]}};

assign poly_temp_V_fu_521_p3 = ((tmp_5_reg_593_pp0_iter6_reg[0:0] === 1'b1) ? p_Val2_9_i_fu_515_p2 : poly_eq_dout_V_fu_505_p4);

assign r_V_1_fu_413_p0 = r_V_reg_654;

assign r_V_1_fu_413_p1 = r_V_1_fu_413_p10;

assign r_V_1_fu_413_p10 = poly_din_abs_V_reg_625_pp0_iter2_reg;

assign r_V_1_fu_413_p2 = ($signed(r_V_1_fu_413_p0) * $signed({{1'b0}, {r_V_1_fu_413_p1}}));

assign r_V_2_fu_534_p1 = OP2_V_cast3_fu_419_p1;

assign r_V_fu_528_p0 = r_V_fu_528_p00;

assign r_V_fu_528_p00 = poly_din_abs_V_reg_625;

assign tmp_13_1_fu_253_p2 = (($signed(sigm_din_V) < $signed(20'd950272)) ? 1'b1 : 1'b0);

assign tmp_13_2_fu_259_p2 = (($signed(sigm_din_V) < $signed(20'd966656)) ? 1'b1 : 1'b0);

assign tmp_13_3_fu_265_p2 = (($signed(sigm_din_V) < $signed(20'd983040)) ? 1'b1 : 1'b0);

assign tmp_13_4_fu_271_p2 = (($signed(sigm_din_V) < $signed(20'd999424)) ? 1'b1 : 1'b0);

assign tmp_13_5_fu_277_p2 = (($signed(sigm_din_V) < $signed(20'd1015808)) ? 1'b1 : 1'b0);

assign tmp_13_6_fu_283_p2 = (($signed(sigm_din_V) < $signed(20'd1032192)) ? 1'b1 : 1'b0);

assign tmp_13_7_fu_343_p2 = (($signed(sigm_din_V) < $signed(20'd81920)) ? 1'b1 : 1'b0);

assign tmp_13_8_fu_349_p2 = (($signed(sigm_din_V) < $signed(20'd98304)) ? 1'b1 : 1'b0);

assign tmp_13_9_fu_355_p2 = (($signed(sigm_din_V) < $signed(20'd114688)) ? 1'b1 : 1'b0);

assign tmp_13_s_fu_321_p2 = (($signed(sigm_din_V) < $signed(20'd49152)) ? 1'b1 : 1'b0);

assign tmp_1_fu_231_p4 = {{sigm_din_V[19:17]}};

assign tmp_2_fu_289_p4 = {{sigm_din_V[19:14]}};

assign tmp_2_i_i_cast_fu_459_p1 = $signed(tmp_2_i_i_fu_452_p3);

assign tmp_2_i_i_fu_452_p3 = {{p_Val2_1_reg_689}, {14'd0}};

assign tmp_3_fu_305_p4 = {{sigm_din_V[19:15]}};

assign tmp_3_i_i_cast_fu_468_p1 = p_Val2_2_reg_694;

assign tmp_4_fu_327_p4 = {{sigm_din_V[19:16]}};

assign tmp_5_i_i_cast_cast_fu_478_p1 = tmp_5_i_i_fu_471_p3;

assign tmp_5_i_i_fu_471_p3 = {{p_Val2_3_reg_679_pp0_iter6_reg}, {28'd0}};

assign tmp_6_fu_378_p1 = sigm_din_V[17:0];

assign tmp_8_i_i_cast_cast_fu_495_p1 = tmp_8_i_i_fu_488_p3;

assign tmp_8_i_i_fu_488_p3 = {{p_Val2_5_reg_649_pp0_iter6_reg}, {42'd0}};

assign tmp_fu_225_p2 = (($signed(sigm_din_V) < $signed(20'd917504)) ? 1'b1 : 1'b0);

assign tmp_i_i_fu_382_p1 = ap_phi_mux_p_0_phi_fu_167_p28;

assign tmp_s_fu_247_p2 = (($signed(sigm_din_V) < $signed(20'd933888)) ? 1'b1 : 1'b0);

endmodule //sigmoid_f