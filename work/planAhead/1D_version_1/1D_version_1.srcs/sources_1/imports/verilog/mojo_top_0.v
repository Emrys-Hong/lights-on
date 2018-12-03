/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    output reg spi_miso,
    output reg [3:0] spi_channel,
    output reg avr_rx,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip,
    input [0:0] button0,
    input [0:0] button1,
    input [0:0] button2,
    input [0:0] button3,
    input [0:0] button4,
    input [0:0] button5,
    input [0:0] button6,
    input [0:0] button_reset,
    output reg led_strip,
    output reg led_strip_1
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_conditioner0_out;
  reg [1-1:0] M_conditioner0_in;
  button_conditioner_2 conditioner0 (
    .clk(clk),
    .in(M_conditioner0_in),
    .out(M_conditioner0_out)
  );
  wire [1-1:0] M_conditioner1_out;
  reg [1-1:0] M_conditioner1_in;
  button_conditioner_2 conditioner1 (
    .clk(clk),
    .in(M_conditioner1_in),
    .out(M_conditioner1_out)
  );
  wire [1-1:0] M_conditioner2_out;
  reg [1-1:0] M_conditioner2_in;
  button_conditioner_2 conditioner2 (
    .clk(clk),
    .in(M_conditioner2_in),
    .out(M_conditioner2_out)
  );
  wire [1-1:0] M_conditioner3_out;
  reg [1-1:0] M_conditioner3_in;
  button_conditioner_2 conditioner3 (
    .clk(clk),
    .in(M_conditioner3_in),
    .out(M_conditioner3_out)
  );
  wire [1-1:0] M_conditioner4_out;
  reg [1-1:0] M_conditioner4_in;
  button_conditioner_2 conditioner4 (
    .clk(clk),
    .in(M_conditioner4_in),
    .out(M_conditioner4_out)
  );
  wire [1-1:0] M_conditioner5_out;
  reg [1-1:0] M_conditioner5_in;
  button_conditioner_2 conditioner5 (
    .clk(clk),
    .in(M_conditioner5_in),
    .out(M_conditioner5_out)
  );
  wire [1-1:0] M_conditioner6_out;
  reg [1-1:0] M_conditioner6_in;
  button_conditioner_2 conditioner6 (
    .clk(clk),
    .in(M_conditioner6_in),
    .out(M_conditioner6_out)
  );
  wire [7-1:0] M_seg_seg;
  wire [4-1:0] M_seg_sel;
  reg [16-1:0] M_seg_values;
  multi_seven_seg_9 seg (
    .clk(clk),
    .rst(rst),
    .values(M_seg_values),
    .seg(M_seg_seg),
    .sel(M_seg_sel)
  );
  wire [1-1:0] M_slowclk_value;
  counter_10 slowclk (
    .clk(clk),
    .rst(rst),
    .value(M_slowclk_value)
  );
  wire [1-1:0] M_beta_game_allon;
  wire [16-1:0] M_beta_game_boardout;
  wire [16-1:0] M_beta_game_levelout;
  reg [7-1:0] M_beta_game_button_press;
  reg [1-1:0] M_beta_game_board_sel;
  reg [1-1:0] M_beta_game_board_en;
  reg [1-1:0] M_beta_game_level_en;
  reg [1-1:0] M_beta_game_asel;
  reg [2-1:0] M_beta_game_bsel;
  reg [6-1:0] M_beta_game_alufn;
  beta_11 beta_game (
    .clk(clk),
    .rst(rst),
    .button_press(M_beta_game_button_press),
    .board_sel(M_beta_game_board_sel),
    .board_en(M_beta_game_board_en),
    .level_en(M_beta_game_level_en),
    .asel(M_beta_game_asel),
    .bsel(M_beta_game_bsel),
    .alufn(M_beta_game_alufn),
    .allon(M_beta_game_allon),
    .boardout(M_beta_game_boardout),
    .levelout(M_beta_game_levelout)
  );
  wire [1-1:0] M_display_out;
  reg [18-1:0] M_display_data;
  reg [6-1:0] M_display_mask;
  reg [12-1:0] M_display_init;
  display_12 display (
    .clk(clk),
    .rst(rst),
    .data(M_display_data),
    .mask(M_display_mask),
    .init(M_display_init),
    .out(M_display_out)
  );
  wire [1-1:0] M_display_1_out;
  reg [18-1:0] M_display_1_data;
  reg [6-1:0] M_display_1_mask;
  reg [12-1:0] M_display_1_init;
  display_12 display_1 (
    .clk(clk),
    .rst(rst),
    .data(M_display_1_data),
    .mask(M_display_1_mask),
    .init(M_display_1_init),
    .out(M_display_1_out)
  );
  wire [4-1:0] M_blink_value;
  counter_14 blink (
    .clk(clk),
    .rst(rst),
    .value(M_blink_value)
  );
  
  wire [1-1:0] M_edge_detector0_out;
  reg [1-1:0] M_edge_detector0_in;
  edge_detector_15 edge_detector0 (
    .clk(M_slowclk_value),
    .in(M_edge_detector0_in),
    .out(M_edge_detector0_out)
  );
  wire [1-1:0] M_edge_detector1_out;
  reg [1-1:0] M_edge_detector1_in;
  edge_detector_15 edge_detector1 (
    .clk(M_slowclk_value),
    .in(M_edge_detector1_in),
    .out(M_edge_detector1_out)
  );
  wire [1-1:0] M_edge_detector2_out;
  reg [1-1:0] M_edge_detector2_in;
  edge_detector_15 edge_detector2 (
    .clk(M_slowclk_value),
    .in(M_edge_detector2_in),
    .out(M_edge_detector2_out)
  );
  wire [1-1:0] M_edge_detector3_out;
  reg [1-1:0] M_edge_detector3_in;
  edge_detector_15 edge_detector3 (
    .clk(M_slowclk_value),
    .in(M_edge_detector3_in),
    .out(M_edge_detector3_out)
  );
  wire [1-1:0] M_edge_detector4_out;
  reg [1-1:0] M_edge_detector4_in;
  edge_detector_15 edge_detector4 (
    .clk(M_slowclk_value),
    .in(M_edge_detector4_in),
    .out(M_edge_detector4_out)
  );
  wire [1-1:0] M_edge_detector5_out;
  reg [1-1:0] M_edge_detector5_in;
  edge_detector_15 edge_detector5 (
    .clk(M_slowclk_value),
    .in(M_edge_detector5_in),
    .out(M_edge_detector5_out)
  );
  wire [1-1:0] M_edge_detector6_out;
  reg [1-1:0] M_edge_detector6_in;
  edge_detector_15 edge_detector6 (
    .clk(M_slowclk_value),
    .in(M_edge_detector6_in),
    .out(M_edge_detector6_out)
  );
  localparam BEGIN_game_state = 3'd0;
  localparam XOR_game_state = 3'd1;
  localparam CMPEQC_game_state = 3'd2;
  localparam ADDC_game_state = 3'd3;
  localparam BLINK_game_state = 3'd4;
  
  reg [2:0] M_game_state_d, M_game_state_q = BEGIN_game_state;
  
  always @* begin
    M_game_state_d = M_game_state_q;
    
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = {3'h0, io_button};
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    io_seg = ~M_seg_seg;
    io_sel = ~M_seg_sel;
    io_led[0+23-:24] = 24'h000000;
    M_seg_values[4+11-:12] = 12'h000;
    M_seg_values[0+3-:4] = M_beta_game_levelout[3+3-:4];
    M_conditioner0_in = io_dip[16+0+0-:1];
    M_edge_detector0_in = M_conditioner0_out;
    M_conditioner1_in = io_dip[16+1+0-:1];
    M_edge_detector1_in = M_conditioner1_out;
    M_conditioner2_in = io_dip[16+2+0-:1];
    M_edge_detector2_in = M_conditioner2_out;
    M_conditioner3_in = io_dip[16+3+0-:1];
    M_edge_detector3_in = M_conditioner3_out;
    M_conditioner4_in = io_dip[16+4+0-:1];
    M_edge_detector4_in = M_conditioner4_out;
    M_conditioner5_in = io_dip[16+5+0-:1];
    M_edge_detector5_in = M_conditioner5_out;
    M_conditioner6_in = io_dip[16+6+0-:1];
    M_edge_detector6_in = M_conditioner6_out;
    M_edge_detector0_in = io_dip[16+0+0-:1];
    M_edge_detector1_in = io_dip[16+1+0-:1];
    M_edge_detector2_in = io_dip[16+2+0-:1];
    M_edge_detector3_in = io_dip[16+3+0-:1];
    M_edge_detector4_in = io_dip[16+4+0-:1];
    M_edge_detector5_in = io_dip[16+5+0-:1];
    M_edge_detector6_in = io_dip[16+6+0-:1];
    io_led[0+0+0-:1] = M_beta_game_boardout[0+0-:1];
    io_led[0+1+0-:1] = M_beta_game_boardout[1+0-:1];
    io_led[0+2+0-:1] = M_beta_game_boardout[2+0-:1];
    io_led[0+3+0-:1] = M_beta_game_boardout[3+0-:1];
    io_led[0+4+0-:1] = M_beta_game_boardout[4+0-:1];
    io_led[0+5+0-:1] = M_beta_game_boardout[5+0-:1];
    io_led[8+0+0-:1] = M_beta_game_boardout[6+0-:1];
    io_led[8+1+0-:1] = M_beta_game_boardout[7+0-:1];
    io_led[8+2+0-:1] = M_beta_game_boardout[8+0-:1];
    io_led[8+3+0-:1] = M_beta_game_boardout[9+0-:1];
    io_led[8+4+0-:1] = M_beta_game_boardout[10+0-:1];
    io_led[8+5+0-:1] = M_beta_game_boardout[11+0-:1];
    M_display_init[0+0+1-:2] = 1'h0;
    M_display_init[0+2+1-:2] = 1'h0;
    M_display_init[0+4+1-:2] = 1'h0;
    M_display_init[0+6+1-:2] = 1'h0;
    M_display_init[0+8+1-:2] = 1'h0;
    M_display_init[0+10+1-:2] = 1'h0;
    M_display_mask[0+0+0-:1] = 1'h0;
    M_display_mask[0+1+0-:1] = 1'h0;
    M_display_mask[0+2+0-:1] = 1'h0;
    M_display_mask[0+3+0-:1] = 1'h0;
    M_display_mask[0+4+0-:1] = 1'h0;
    M_display_mask[0+5+0-:1] = 1'h0;
    M_display_1_init[0+0+1-:2] = 1'h0;
    M_display_1_init[0+2+1-:2] = 1'h0;
    M_display_1_init[0+4+1-:2] = 1'h0;
    M_display_1_init[0+6+1-:2] = 1'h0;
    M_display_1_init[0+8+1-:2] = 1'h0;
    M_display_1_init[0+10+1-:2] = 1'h0;
    M_display_1_mask[0+0+0-:1] = 1'h0;
    M_display_1_mask[0+1+0-:1] = 1'h0;
    M_display_1_mask[0+2+0-:1] = 1'h0;
    M_display_1_mask[0+3+0-:1] = 1'h0;
    M_display_1_mask[0+4+0-:1] = 1'h0;
    M_display_1_mask[0+5+0-:1] = 1'h0;
    led_strip = M_display_out;
    led_strip_1 = M_display_1_out;
    if (M_beta_game_boardout[0+0-:1] == 1'h0) begin
      M_display_data[0+0+2-:3] = M_beta_game_boardout[0+0-:1];
    end else begin
      M_display_data[0+0+2-:3] = M_beta_game_boardout[0+0-:1] + M_beta_game_levelout[3+2-:3];
    end
    if (M_beta_game_boardout[1+0-:1] == 1'h0) begin
      M_display_data[0+3+2-:3] = M_beta_game_boardout[1+0-:1];
    end else begin
      M_display_data[0+3+2-:3] = M_beta_game_boardout[1+0-:1] + M_beta_game_levelout[3+2-:3];
    end
    if (M_beta_game_boardout[2+0-:1] == 1'h0) begin
      M_display_data[0+6+2-:3] = M_beta_game_boardout[2+0-:1];
    end else begin
      M_display_data[0+6+2-:3] = M_beta_game_boardout[2+0-:1] + M_beta_game_levelout[3+2-:3];
    end
    if (M_beta_game_boardout[3+0-:1] == 1'h0) begin
      M_display_data[0+9+2-:3] = M_beta_game_boardout[3+0-:1];
    end else begin
      M_display_data[0+9+2-:3] = M_beta_game_boardout[3+0-:1] + M_beta_game_levelout[3+2-:3];
    end
    if (M_beta_game_boardout[4+0-:1] == 1'h0) begin
      M_display_data[0+12+2-:3] = M_beta_game_boardout[4+0-:1];
    end else begin
      M_display_data[0+12+2-:3] = M_beta_game_boardout[4+0-:1] + M_beta_game_levelout[3+2-:3];
    end
    if (M_beta_game_boardout[5+0-:1] == 1'h0) begin
      M_display_data[0+15+2-:3] = M_beta_game_boardout[5+0-:1];
    end else begin
      M_display_data[0+15+2-:3] = M_beta_game_boardout[5+0-:1] + M_beta_game_levelout[3+2-:3];
    end
    if (M_beta_game_boardout[6+0-:1] == 1'h0) begin
      M_display_1_data[0+0+2-:3] = M_beta_game_boardout[6+0-:1];
    end else begin
      M_display_1_data[0+0+2-:3] = M_beta_game_boardout[6+0-:1] + M_beta_game_levelout[3+2-:3];
    end
    if (M_beta_game_boardout[7+0-:1] == 1'h0) begin
      M_display_1_data[0+3+2-:3] = M_beta_game_boardout[7+0-:1];
    end else begin
      M_display_1_data[0+3+2-:3] = M_beta_game_boardout[7+0-:1] + M_beta_game_levelout[3+2-:3];
    end
    if (M_beta_game_boardout[8+0-:1] == 1'h0) begin
      M_display_1_data[0+6+2-:3] = M_beta_game_boardout[8+0-:1];
    end else begin
      M_display_1_data[0+6+2-:3] = M_beta_game_boardout[8+0-:1] + M_beta_game_levelout[3+2-:3];
    end
    if (M_beta_game_boardout[9+0-:1] == 1'h0) begin
      M_display_1_data[0+9+2-:3] = M_beta_game_boardout[9+0-:1];
    end else begin
      M_display_1_data[0+9+2-:3] = M_beta_game_boardout[9+0-:1] + M_beta_game_levelout[3+2-:3];
    end
    if (M_beta_game_boardout[10+0-:1] == 1'h0) begin
      M_display_1_data[0+12+2-:3] = M_beta_game_boardout[10+0-:1];
    end else begin
      M_display_1_data[0+12+2-:3] = M_beta_game_boardout[10+0-:1] + M_beta_game_levelout[3+2-:3];
    end
    if (M_beta_game_boardout[11+0-:1] == 1'h0) begin
      M_display_1_data[0+15+2-:3] = M_beta_game_boardout[11+0-:1];
    end else begin
      M_display_1_data[0+15+2-:3] = M_beta_game_boardout[11+0-:1] + M_beta_game_levelout[3+2-:3];
    end
    M_beta_game_board_en = 1'h0;
    M_beta_game_board_sel = 1'h0;
    M_beta_game_level_en = 1'h0;
    M_beta_game_asel = 1'h0;
    M_beta_game_bsel = 1'h0;
    M_beta_game_alufn = 1'h0;
    M_beta_game_button_press = {M_edge_detector6_out, M_edge_detector5_out, M_edge_detector4_out, M_edge_detector3_out, M_edge_detector2_out, M_edge_detector1_out, M_edge_detector0_out};
    io_led[16+7-:8] = M_beta_game_levelout;
    
    case (M_game_state_q)
      BEGIN_game_state: begin
        M_beta_game_board_sel = 1'h1;
        M_beta_game_board_en = 1'h1;
        M_beta_game_level_en = 1'h0;
        M_game_state_d = XOR_game_state;
      end
      XOR_game_state: begin
        M_beta_game_board_sel = 1'h0;
        M_beta_game_board_en = 1'h1;
        M_beta_game_level_en = 1'h0;
        M_beta_game_alufn = 6'h16;
        M_beta_game_asel = 1'h0;
        M_beta_game_bsel = 1'h0;
        M_beta_game_button_press = {M_edge_detector6_out, M_edge_detector5_out, M_edge_detector4_out, M_edge_detector3_out, M_edge_detector2_out, M_edge_detector1_out, M_edge_detector0_out};
        if (M_edge_detector0_out | M_edge_detector1_out | M_edge_detector2_out | M_edge_detector3_out | M_edge_detector4_out | M_edge_detector5_out | M_edge_detector6_out) begin
          M_game_state_d = CMPEQC_game_state;
        end
      end
      CMPEQC_game_state: begin
        M_beta_game_board_en = 1'h0;
        M_beta_game_level_en = 1'h0;
        M_beta_game_alufn = 6'h33;
        M_beta_game_asel = 1'h0;
        M_beta_game_bsel = 1'h1;
        if (M_beta_game_allon == 1'h1) begin
          M_game_state_d = ADDC_game_state;
        end else begin
          if (M_beta_game_allon == 1'h0) begin
            M_game_state_d = XOR_game_state;
          end
        end
      end
      ADDC_game_state: begin
        M_beta_game_board_sel = 1'h1;
        M_beta_game_board_en = 1'h0;
        M_beta_game_level_en = 1'h1;
        M_beta_game_alufn = 6'h00;
        M_beta_game_bsel = 2'h2;
        M_beta_game_asel = 1'h1;
        M_game_state_d = BLINK_game_state;
      end
      BLINK_game_state: begin
        M_display_init[0+0+1-:2] = 1'h0;
        M_display_init[0+2+1-:2] = 1'h0;
        M_display_init[0+4+1-:2] = 1'h0;
        M_display_init[0+6+1-:2] = 1'h0;
        M_display_init[0+8+1-:2] = 1'h0;
        M_display_init[0+10+1-:2] = 1'h0;
        M_display_mask[0+0+0-:1] = 1'h0;
        M_display_mask[0+1+0-:1] = 1'h0;
        M_display_mask[0+2+0-:1] = 1'h0;
        M_display_mask[0+3+0-:1] = 1'h0;
        M_display_mask[0+4+0-:1] = 1'h0;
        M_display_mask[0+5+0-:1] = 1'h0;
        M_display_1_init[0+0+1-:2] = 1'h0;
        M_display_1_init[0+2+1-:2] = 1'h0;
        M_display_1_init[0+4+1-:2] = 1'h0;
        M_display_1_init[0+6+1-:2] = 1'h0;
        M_display_1_init[0+8+1-:2] = 1'h0;
        M_display_1_init[0+10+1-:2] = 1'h0;
        M_display_1_mask[0+0+0-:1] = 1'h0;
        M_display_1_mask[0+1+0-:1] = 1'h0;
        M_display_1_mask[0+2+0-:1] = 1'h0;
        M_display_1_mask[0+3+0-:1] = 1'h0;
        M_display_1_mask[0+4+0-:1] = 1'h0;
        M_display_1_mask[0+5+0-:1] = 1'h0;
        led_strip = M_display_out;
        led_strip_1 = M_display_1_out;
        if (M_blink_value[0+0-:1] == 1'h1) begin
          M_display_data[0+0+2-:3] = 1'h1;
          M_display_data[0+3+2-:3] = 1'h1;
          M_display_data[0+6+2-:3] = 1'h1;
          M_display_data[0+9+2-:3] = 1'h1;
          M_display_data[0+12+2-:3] = 1'h1;
          M_display_data[0+15+2-:3] = 1'h1;
          M_display_1_data[0+0+2-:3] = 1'h1;
          M_display_1_data[0+3+2-:3] = 1'h1;
          M_display_1_data[0+6+2-:3] = 1'h1;
          M_display_1_data[0+9+2-:3] = 1'h1;
          M_display_1_data[0+12+2-:3] = 1'h1;
          M_display_1_data[0+15+2-:3] = 1'h1;
        end else begin
          M_display_data[0+0+2-:3] = 1'h0;
          M_display_data[0+3+2-:3] = 1'h0;
          M_display_data[0+6+2-:3] = 1'h0;
          M_display_data[0+9+2-:3] = 1'h0;
          M_display_data[0+12+2-:3] = 1'h0;
          M_display_data[0+15+2-:3] = 1'h0;
          M_display_1_data[0+0+2-:3] = 1'h0;
          M_display_1_data[0+3+2-:3] = 1'h0;
          M_display_1_data[0+6+2-:3] = 1'h0;
          M_display_1_data[0+9+2-:3] = 1'h0;
          M_display_1_data[0+12+2-:3] = 1'h0;
          M_display_1_data[0+15+2-:3] = 1'h0;
        end
        if (M_blink_value == 4'hf) begin
          M_game_state_d = BEGIN_game_state;
        end
      end
    endcase
  end
  
  always @(posedge M_slowclk_value) begin
    if (rst == 1'b1) begin
      M_game_state_q <= 1'h0;
    end else begin
      M_game_state_q <= M_game_state_d;
    end
  end
  
endmodule
