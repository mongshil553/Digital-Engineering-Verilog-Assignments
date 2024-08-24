`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2021 02:45:12 AM
// Design Name: 
// Module Name: full_adder_4_bit
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


module full_adder_4_bit(A, B, S, C0, C4);
    input [3:0] A; input [3:0] B; input C0;
    output [3:0] S; output C4;
    
    wire C1, C2, C3;
    
    full_adder FA1(.X(A[0]), .Y(B[0]), .Z(C0), .S(S[0]), .C(C1));
    full_adder FA2(.X(A[1]), .Y(B[1]), .Z(C1), .S(S[1]), .C(C2));
    full_adder FA3(.X(A[2]), .Y(B[2]), .Z(C2), .S(S[2]), .C(C3));
    full_adder FA4(.X(A[3]), .Y(B[3]), .Z(C3), .S(S[3]), .C(C4));
endmodule
