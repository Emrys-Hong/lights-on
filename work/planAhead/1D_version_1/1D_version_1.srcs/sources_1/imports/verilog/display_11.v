/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     ROW = 1
     COL = 6
*/
module display_11 (
    input clk,
    input rst,
    input [17:0] data,
    input [5:0] mask,
    input [11:0] init,
    output reg [0:0] out
  );
  
  localparam ROW = 1'h1;
  localparam COL = 3'h6;
  
  
  localparam LED_0 = 1'h0;
  
  localparam LED_1 = 1'h1;
  
  localparam LED_2 = 2'h2;
  
  localparam LED_3 = 2'h3;
  
  localparam LED_4 = 3'h4;
  
  localparam LED_5 = 3'h5;
  
  localparam LED_6 = 3'h6;
  
  localparam LED_7 = 3'h7;
  
  localparam COLOR_BLACK = 24'h000000;
  
  localparam COLOR_1 = 24'haa42f4;
  
  localparam COLOR_2 = 24'h6542f4;
  
  localparam COLOR_3 = 24'h425ff4;
  
  localparam COLOR_4 = 24'h429ef4;
  
  localparam COLOR_5 = 24'h42f4f4;
  
  localparam COLOR_6 = 24'h42f492;
  
  localparam COLOR_7 = 24'h42f442;
  
  reg [17:0] M_board_d, M_board_q = 1'h0;
  
  reg [13:0] M_counter_d, M_counter_q = 1'h0;
  
  reg [10:0] foo;
  
  reg [2:0] led_state;
  
  reg [23:0] grb;
  
  integer r;
  integer c;
  
  always @* begin
    M_counter_d = M_counter_q;
    M_board_d = M_board_q;
    
    out = 8'h00;
    for (r = 1'h0; r < 1'h1; r = r + 1) begin
      for (c = 1'h0; c < 3'h6; c = c + 1) begin
        M_board_d[(r)*18+(c)*3+2-:3] = {mask[(r)*6+(c)*1+0+0-:1], data[(r)*18+(c)*3+2-:3]};
      end
    end
    for (r = 1'h0; r < 1'h1; r = r + 1) begin
      if (M_counter_q < 16'h3000) begin
        c = M_counter_q / 12'h600;
        led_state = M_board_q[(r)*18+(c)*3+2-:3];
        
        case (led_state)
          1'h0: begin
            grb = 24'h000000;
          end
          1'h1: begin
            grb = 24'haa42f4;
          end
          2'h2: begin
            grb = 24'h6542f4;
          end
          2'h3: begin
            grb = 24'h425ff4;
          end
          3'h4: begin
            grb = 24'h429ef4;
          end
          3'h5: begin
            grb = 24'h42f4f4;
          end
          3'h6: begin
            grb = 24'h42f492;
          end
          3'h7: begin
            grb = 24'h42f442;
          end
          default: begin
            grb = 24'h000000;
          end
        endcase
        if (init[(r)*12+(c)*2+1-:2] != 2'h0) begin
          if (led_state == 1'h0) begin
            grb = 24'h42f492;
          end else begin
            if (led_state == 1'h1) begin
              grb = 24'h42f442;
            end
          end
        end
        foo = M_counter_q - ((M_counter_q / 12'h600) * 12'h600);
        if (grb[(5'h17 - (foo >> 3'h6))*1+0-:1] == 1'h0) begin
          if (foo[0+5-:6] < 5'h14) begin
            out[(r)*1+0-:1] = 1'h1;
          end
        end else begin
          if (foo[0+5-:6] < 6'h28) begin
            out[(r)*1+0-:1] = 1'h1;
          end
        end
      end
      M_counter_d = M_counter_q + 1'h1;
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_board_q <= 1'h0;
    end else begin
      M_board_q <= M_board_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_counter_q <= 1'h0;
    end else begin
      M_counter_q <= M_counter_d;
    end
  end
  
endmodule
