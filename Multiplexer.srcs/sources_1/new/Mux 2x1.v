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
output out_o;
wire not0,and0,and1;
not G1(not0,sel_i);
and G2(and0,not0,i0_i);
and G3(and1,sel_i,i1_i);
or  G4(out_o,and1,and0);

endmodule
