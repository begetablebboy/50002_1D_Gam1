/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     H_SIZE = 15
     D_WIDTH = 640
     D_HEIGHT = 480
     V_SIZE = 15
*/
module singleunmovingsquare_59 (
    input [10:0] i_x,
    input [10:0] i_y,
    output reg [10:0] o_x1,
    output reg [10:0] o_x2,
    output reg [10:0] o_y1,
    output reg [10:0] o_y2
  );
  
  localparam H_SIZE = 4'hf;
  localparam D_WIDTH = 10'h280;
  localparam D_HEIGHT = 9'h1e0;
  localparam V_SIZE = 4'hf;
  
  
  reg [10:0] x;
  
  reg [10:0] y;
  
  always @* begin
    x = i_x;
    y = i_y;
    o_x1 = x - 4'hf;
    o_x2 = x + 4'hf;
    o_y1 = y - 4'hf;
    o_y2 = y + 4'hf;
  end
endmodule
