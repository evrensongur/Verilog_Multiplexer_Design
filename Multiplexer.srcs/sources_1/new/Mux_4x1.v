`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2024 10:50:59
// Design Name: 
// Module Name: Mux_4x1
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


module Mux_4x1(
input i0_i,
input i1_i,
input i2_i,
input i3_i,
input sel0_i,
input sel1_i,
output out_o
);

assign out_o=(sel0_i==1'b0) ?
             (sel1_i==1'b0) ?i0_i:i1_i:
             (sel1_i==1'b0) ?i2_i:i3_i; 

endmodule

module Mux_4x1_tb;
   reg i0_i;
reg i1_i;
reg  i2_i;
reg  i3_i;
reg  sel0_i;
reg  sel1_i;
wire out_o;
  Mux_4x1 Mux(
  .i0_i(i0_i),
  .i1_i(i1_i),
  .i2_i(i2_i),
  .i3_i(i3_i),
  .sel0_i(sel0_i),
  .sel1_i(sel1_i),
  .out_o(out_o)
  );
   initial begin 
   i0_i=1'b1;i1_i=1'b0;i2_i=1'b0;i3_i=1'b0;sel0_i=1'b0;sel1_i=1'b0;
   #10;
   i0_i=1'b0;i1_i=1'b0;i2_i=1'b0;i3_i=1'b0;sel0_i=1'b1;sel1_i=1'b1;
   #10;
   i0_i=1'b0;i1_i=1'b1;i2_i=1'b1;i3_i=1'b0;sel0_i=1'b1;sel1_i=1'b0;
   #10;
   i0_i=1'b1;i1_i=1'b1;i2_i=1'b1;i3_i=1'b0;sel0_i=1'b0;sel1_i=1'b1;
   #10;
   i0_i=1'b1;i1_i=1'b0;i2_i=1'b1;i3_i=1'b1;sel0_i=1'b1;sel1_i=1'b0;
   #10;
   i0_i=1'b0;i1_i=1'b1;i2_i=1'b0;i3_i=1'b1;sel0_i=1'b0;sel1_i=1'b1;
   #10;
   i0_i=1'b1;i1_i=1'b1;i2_i=1'b0;i3_i=1'b1;sel0_i=1'b0;sel1_i=1'b0;
   #10;
   $finish;
   end 
    
endmodule


