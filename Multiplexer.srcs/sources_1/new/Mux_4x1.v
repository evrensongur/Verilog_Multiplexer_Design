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
wire muxout1,muxout2;
Mux_2x1 Mux1(
.i0_i(i0_i),
.i1_i(i1_i),
.sel_i(sel0_i),
.out_o(muxout1)
);
Mux_2x1 Mux2(
.i0_i(i2_i),
.i1_i(i3_i),
.sel_i(sel0_i),
.out_o(muxout2)
);
Mux_2x1 Mux3(
.i0_i(muxout1),
.i1_i(muxout2),
.sel_i(sel1_i),
.out_o(out_o)
);
endmodule
