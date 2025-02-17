`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2024 10:41:12
// Design Name: 
// Module Name: Mux 2x1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mux_2x1(i0_i,i1_i,sel_i,out_o);
input i0_i;
input i1_i;
input sel_i;
output  out_o;
reg out;
always @* begin 
       if (sel_i==1'b0) begin
         out= i0_i ;
       end
       else begin
          out=i1_i;
       end 
end 
   assign  out_o=out;
endmodule
