//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
//Date        : Mon Nov  4 14:59:00 2019
//Host        : XY running 64-bit major release  (build 9200)
//Command     : generate_target vga_buffer_wrapper.bd
//Design      : vga_buffer_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module vga_buffer_wrapper
   (BRAM_PORTA_addr,
    BRAM_PORTA_clk,
    BRAM_PORTA_din,
    BRAM_PORTA_en,
    BRAM_PORTA_we,
    BRAM_PORTB_addr,
    BRAM_PORTB_clk,
    BRAM_PORTB_dout,
    BRAM_PORTB_en);
  input [18:0]BRAM_PORTA_addr;
  input BRAM_PORTA_clk;
  input [11:0]BRAM_PORTA_din;
  input BRAM_PORTA_en;
  input [0:0]BRAM_PORTA_we;
  input [18:0]BRAM_PORTB_addr;
  input BRAM_PORTB_clk;
  output [11:0]BRAM_PORTB_dout;
  input BRAM_PORTB_en;

  wire [18:0]BRAM_PORTA_addr;
  wire BRAM_PORTA_clk;
  wire [11:0]BRAM_PORTA_din;
  wire BRAM_PORTA_en;
  wire [0:0]BRAM_PORTA_we;
  wire [18:0]BRAM_PORTB_addr;
  wire BRAM_PORTB_clk;
  wire [11:0]BRAM_PORTB_dout;
  wire BRAM_PORTB_en;

  vga_buffer vga_buffer_i
       (.BRAM_PORTA_addr(BRAM_PORTA_addr),
        .BRAM_PORTA_clk(BRAM_PORTA_clk),
        .BRAM_PORTA_din(BRAM_PORTA_din),
        .BRAM_PORTA_en(BRAM_PORTA_en),
        .BRAM_PORTA_we(BRAM_PORTA_we),
        .BRAM_PORTB_addr(BRAM_PORTB_addr),
        .BRAM_PORTB_clk(BRAM_PORTB_clk),
        .BRAM_PORTB_dout(BRAM_PORTB_dout),
        .BRAM_PORTB_en(BRAM_PORTB_en));
endmodule
