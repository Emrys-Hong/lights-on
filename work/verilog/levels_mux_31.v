/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module levels_mux_31 (
    input [2:0] levels_sel,
    output reg [15:0] out
  );
  
  
  
  always @* begin
    out = 16'h0000;
    
    case (levels_sel)
      1'h0: begin
        out = 16'h003f;
      end
      1'h1: begin
        out = 16'h0ae1;
      end
      2'h2: begin
        out = 16'h008f;
      end
      2'h3: begin
        out = 16'h072d;
      end
      3'h4: begin
        out = 16'h0c3a;
      end
      3'h5: begin
        out = 16'h0c8a;
      end
      3'h6: begin
        out = 16'h0458;
      end
    endcase
  end
endmodule