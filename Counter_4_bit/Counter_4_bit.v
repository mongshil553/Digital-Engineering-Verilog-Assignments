`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2021 11:21:39 PM
// Design Name: 
// Module Name: Counter_4_bit
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


module Counter_4_bit(EN, CLK, Q, CO, RESET);
    
    input EN;
    input CLK;
    input [3:0]Q;
    output CO;
    input RESET;
    
    wire [3:0]D;
    
    assign D[0] = EN ^ Q[0];
    assign D[1] = (EN & Q[0]) ^ Q[1];
    assign D[2] = (EN & Q[0] & Q[1]) ^ Q[2];
    assign D[3] = (EN & Q[0] & Q[1] & Q[2]) ^ Q[3];
    
    assign CO = EN & Q[0] & Q[1] & Q[2] & Q[3];
    
    D_FlipFlop FF0(.CLK(CLK), .D(D[0]), .Q(Q[0]), .RESET(RESET));
    D_FlipFlop FF1(.CLK(CLK), .D(D[1]), .Q(Q[1]), .RESET(RESET));
    D_FlipFlop FF2(.CLK(CLK), .D(D[2]), .Q(Q[2]), .RESET(RESET));
    D_FlipFlop FF3(.CLK(CLK), .D(D[3]), .Q(Q[3]), .RESET(RESET));
    

endmodule
