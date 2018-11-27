/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module buttons_mux_16 (
    input clk,
    input rst,
    input [6:0] buttons_sel,
    output reg [15:0] out
  );
  
  
  
  wire [16-1:0] M_register_out;
  reg [1-1:0] M_register_en;
  reg [16-1:0] M_register_data;
  register_17 register (
    .clk(clk),
    .rst(rst),
    .en(M_register_en),
    .data(M_register_data),
    .out(M_register_out)
  );
  
  always @* begin
    out = M_register_out;
    M_register_en = 1'h1;
    M_register_data = 16'h0000;
    
    case (buttons_sel)
      1'h1: begin
        M_register_data = 16'h0fc0;
      end
      2'h2: begin
        M_register_data = 16'h0061;
      end
      3'h4: begin
        M_register_data = 16'h0083;
      end
      4'h8: begin
        M_register_data = 16'h0106;
      end
      5'h10: begin
        M_register_data = 16'h020c;
      end
      6'h20: begin
        M_register_data = 16'h0418;
      end
      7'h40: begin
        M_register_data = 16'h0830;
      end
    endcase
  end
endmodule
