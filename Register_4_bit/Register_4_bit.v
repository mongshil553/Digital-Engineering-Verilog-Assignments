`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2021 12:40:51 AM
// Design Name: 
// Module Name: D_FlipFlop
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


module Register_4_bit(CLK, CLEAR, D, Q);
    input [3:0]D;
    output [3:0]Q;
    input CLK;
    input CLEAR;
    

    D_FlipFlop FF0(.CLK(CLK), .D(D[0]), .Q(Q[0]), .RESET(~CLEAR));
    D_FlipFlop FF1(.CLK(CLK), .D(D[1]), .Q(Q[1]), .RESET(~CLEAR));
    D_FlipFlop FF2(.CLK(CLK), .D(D[2]), .Q(Q[2]), .RESET(~CLEAR));
    D_FlipFlop FF3(.CLK(CLK), .D(D[3]), .Q(Q[3]), .RESET(~CLEAR));
 

endmodule
