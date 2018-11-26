/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
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
    output reg led_strip
  );
  
  
  
  reg [0:0] allon;
  
  reg [0:0] board_sel;
  
  reg [0:0] board_en;
  
  reg [0:0] level_en;
  
  reg [0:0] asel;
  
  reg [1:0] bsel;
  
  reg [5:0] alufn;
  
  localparam LED_OFF = 2'h0;
  
  localparam LED_RED = 2'h1;
  
  localparam LED_GREEN = 2'h2;
  
  localparam LED_BLUE = 2'h3;
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_edge_detector_out;
  reg [1-1:0] M_edge_detector_in;
  edge_detector_2 edge_detector (
    .clk(clk),
    .in(M_edge_detector_in),
    .out(M_edge_detector_out)
  );
  wire [1-1:0] M_edge_detector0_out;
  reg [1-1:0] M_edge_detector0_in;
  edge_detector_3 edge_detector0 (
    .clk(clk),
    .in(M_edge_detector0_in),
    .out(M_edge_detector0_out)
  );
  wire [1-1:0] M_edge_detector1_out;
  reg [1-1:0] M_edge_detector1_in;
  edge_detector_3 edge_detector1 (
    .clk(clk),
    .in(M_edge_detector1_in),
    .out(M_edge_detector1_out)
  );
  wire [1-1:0] M_edge_detector2_out;
  reg [1-1:0] M_edge_detector2_in;
  edge_detector_3 edge_detector2 (
    .clk(clk),
    .in(M_edge_detector2_in),
    .out(M_edge_detector2_out)
  );
  wire [1-1:0] M_edge_detector3_out;
  reg [1-1:0] M_edge_detector3_in;
  edge_detector_3 edge_detector3 (
    .clk(clk),
    .in(M_edge_detector3_in),
    .out(M_edge_detector3_out)
  );
  wire [1-1:0] M_edge_detector4_out;
  reg [1-1:0] M_edge_detector4_in;
  edge_detector_3 edge_detector4 (
    .clk(clk),
    .in(M_edge_detector4_in),
    .out(M_edge_detector4_out)
  );
  wire [1-1:0] M_edge_detector5_out;
  reg [1-1:0] M_edge_detector5_in;
  edge_detector_3 edge_detector5 (
    .clk(clk),
    .in(M_edge_detector5_in),
    .out(M_edge_detector5_out)
  );
  wire [1-1:0] M_edge_detector6_out;
  reg [1-1:0] M_edge_detector6_in;
  edge_detector_3 edge_detector6 (
    .clk(clk),
    .in(M_edge_detector6_in),
    .out(M_edge_detector6_out)
  );
  wire [7-1:0] M_seg_seg;
  wire [4-1:0] M_seg_sel;
  reg [16-1:0] M_seg_values;
  multi_seven_seg_10 seg (
    .clk(clk),
    .rst(rst),
    .values(M_seg_values),
    .seg(M_seg_seg),
    .sel(M_seg_sel)
  );
  wire [16-1:0] M_dec_ctr_digits;
  reg [1-1:0] M_dec_ctr_inc;
  multi_dec_ctr_11 dec_ctr (
    .clk(clk),
    .rst(rst),
    .inc(M_dec_ctr_inc),
    .digits(M_dec_ctr_digits)
  );
  wire [1-1:0] M_ctr_value;
  counter_12 ctr (
    .clk(clk),
    .rst(rst),
    .value(M_ctr_value)
  );
  localparam BEGIN_game_state = 2'd0;
  localparam XOR_game_state = 2'd1;
  localparam CMPEQC_game_state = 2'd2;
  localparam ADDC_game_state = 2'd3;
  
  reg [1:0] M_game_state_d, M_game_state_q = BEGIN_game_state;
  wire [1-1:0] M_ws2812_man_out;
  reg [40-1:0] M_ws2812_man_data;
  ws2812_man_13 ws2812_man (
    .clk(clk),
    .rst(rst),
    .data(M_ws2812_man_data),
    .out(M_ws2812_man_out)
  );
  wire [1-1:0] M_beta_game_allon;
  wire [16-1:0] M_beta_game_boardout;
  reg [7-1:0] M_beta_game_button_press;
  reg [1-1:0] M_beta_game_board_sel;
  reg [1-1:0] M_beta_game_board_en;
  reg [1-1:0] M_beta_game_level_en;
  reg [1-1:0] M_beta_game_asel;
  reg [2-1:0] M_beta_game_bsel;
  reg [6-1:0] M_beta_game_alufn;
  beta_14 beta_game (
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
    .boardout(M_beta_game_boardout)
  );
  
  always @* begin
    M_game_state_d = M_game_state_q;
    
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = {3'h0, io_button};
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    M_edge_detector_in = M_ctr_value;
    M_dec_ctr_inc = M_edge_detector_out;
    M_seg_values = M_dec_ctr_digits;
    io_seg = ~M_seg_seg;
    io_sel = ~M_seg_sel;
    io_led = io_dip;
    M_ws2812_man_data[0+1-:2] = 2'h2;
    M_ws2812_man_data[2+1-:2] = 2'h1;
    M_ws2812_man_data[4+1-:2] = 2'h1;
    M_ws2812_man_data[6+1-:2] = 2'h2;
    led_strip = M_ws2812_man_out;
    board_sel = 1'h0;
    board_en = 1'h0;
    level_en = 1'h0;
    asel = 1'h0;
    bsel = 1'h0;
    alufn = 1'h0;
    M_edge_detector0_in = io_dip[0+0+0-:1];
    M_edge_detector1_in = io_dip[0+1+0-:1];
    M_edge_detector2_in = io_dip[0+2+0-:1];
    M_edge_detector3_in = io_dip[0+3+0-:1];
    M_edge_detector4_in = io_dip[0+4+0-:1];
    M_edge_detector5_in = io_dip[0+5+0-:1];
    M_edge_detector6_in = io_dip[0+6+0-:1];
    io_led[0+1+0-:1] = M_beta_game_boardout[0+0-:1];
    io_led[0+2+0-:1] = M_beta_game_boardout[1+0-:1];
    io_led[0+3+0-:1] = M_beta_game_boardout[2+0-:1];
    io_led[0+4+0-:1] = M_beta_game_boardout[3+0-:1];
    io_led[0+5+0-:1] = M_beta_game_boardout[4+0-:1];
    io_led[0+6+0-:1] = M_beta_game_boardout[5+0-:1];
    io_led[8+0+0-:1] = M_beta_game_boardout[6+0-:1];
    io_led[8+1+0-:1] = M_beta_game_boardout[7+0-:1];
    io_led[8+2+0-:1] = M_beta_game_boardout[8+0-:1];
    io_led[8+3+0-:1] = M_beta_game_boardout[9+0-:1];
    io_led[8+4+0-:1] = M_beta_game_boardout[10+0-:1];
    io_led[8+5+0-:1] = M_beta_game_boardout[11+0-:1];
    M_beta_game_board_en = board_en;
    M_beta_game_board_sel = board_sel;
    M_beta_game_level_en = level_en;
    M_beta_game_asel = asel;
    M_beta_game_bsel = bsel;
    M_beta_game_alufn = alufn;
    M_beta_game_button_press = {button0, button1, button2, button3, button4, button5, button6};
    M_beta_game_button_press = {M_edge_detector0_out, M_edge_detector1_out, M_edge_detector2_out, M_edge_detector3_out, M_edge_detector4_out, M_edge_detector5_out, M_edge_detector6_out};
    allon = M_beta_game_allon;
    
    case (M_game_state_q)
      BEGIN_game_state: begin
        board_sel = 1'h1;
        board_en = 1'h1;
        level_en = 1'h0;
        M_game_state_d = XOR_game_state;
      end
      XOR_game_state: begin
        board_sel = 1'h0;
        board_en = 1'h1;
        level_en = 1'h0;
        alufn = 6'h1a;
        asel = 1'h0;
        bsel = 1'h0;
        M_game_state_d = CMPEQC_game_state;
      end
      CMPEQC_game_state: begin
        board_en = 1'h0;
        level_en = 1'h0;
        alufn = 17'h1adbb;
        asel = 1'h0;
        bsel = 1'h1;
        if (allon == 1'h1) begin
          M_game_state_d = ADDC_game_state;
        end else begin
          M_game_state_d = XOR_game_state;
        end
      end
      ADDC_game_state: begin
        board_en = 1'h0;
        level_en = 1'h1;
        alufn = 1'h0;
        bsel = 2'h2;
        asel = 1'h1;
        M_game_state_d = BEGIN_game_state;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_game_state_q <= 1'h0;
    end else begin
      M_game_state_q <= M_game_state_d;
    end
  end
  
endmodule