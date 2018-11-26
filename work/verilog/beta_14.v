/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module beta_14 (
    input clk,
    input rst,
    input [6:0] button_press,
    input [0:0] board_sel,
    input [0:0] board_en,
    input [0:0] level_en,
    input [0:0] asel,
    input [1:0] bsel,
    input [5:0] alufn,
    output reg [0:0] allon,
    output reg [15:0] boardout
  );
  
  
  
  wire [16-1:0] M_buttons_mux_out;
  reg [7-1:0] M_buttons_mux_buttons_sel;
  buttons_mux_19 buttons_mux (
    .buttons_sel(M_buttons_mux_buttons_sel),
    .out(M_buttons_mux_out)
  );
  
  wire [16-1:0] M_levels_mux_out;
  reg [2-1:0] M_levels_mux_levels_sel;
  levels_mux_20 levels_mux (
    .levels_sel(M_levels_mux_levels_sel),
    .out(M_levels_mux_out)
  );
  
  wire [16-1:0] M_alu_out;
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  reg [8-1:0] M_alu_io_dip;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  alu_21 alu (
    .io_dip(M_alu_io_dip),
    .a(M_alu_a),
    .b(M_alu_b),
    .out(M_alu_out),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n)
  );
  
  wire [16-1:0] M_board_out;
  reg [1-1:0] M_board_en;
  reg [16-1:0] M_board_data;
  register_22 board (
    .clk(clk),
    .rst(rst),
    .en(M_board_en),
    .data(M_board_data),
    .out(M_board_out)
  );
  wire [16-1:0] M_level_out;
  reg [1-1:0] M_level_en;
  reg [16-1:0] M_level_data;
  register_22 level (
    .clk(clk),
    .rst(rst),
    .en(M_level_en),
    .data(M_level_data),
    .out(M_level_out)
  );
  
  always @* begin
    M_alu_io_dip = alufn;
    M_board_en = board_en;
    M_level_en = level_en;
    M_level_data = M_alu_out;
    M_buttons_mux_buttons_sel = button_press;
    M_levels_mux_levels_sel = M_level_out[0+1-:2];
    boardout = M_board_out;
    if (asel == 1'h0) begin
      M_alu_a = M_board_out;
    end else begin
      M_alu_a = M_level_out;
    end
    if (bsel == 1'h0) begin
      M_alu_b = M_buttons_mux_out;
    end else begin
      if (bsel == 1'h1) begin
        M_alu_b = 16'h0fff;
      end else begin
        M_alu_b = 16'h0001;
      end
    end
    if (board_sel == 1'h0) begin
      M_board_data = M_alu_out;
    end else begin
      M_board_data = M_levels_mux_out;
    end
    allon = M_alu_out[0+0-:1];
  end
endmodule