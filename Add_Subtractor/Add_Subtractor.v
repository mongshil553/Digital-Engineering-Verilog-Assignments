`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2021 04:09:46 AM
// Design Name: 
// Module Name: Add_Subtractor
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


module Add_Subtractor(A, B, S, S_ctrl, C4);
    input [3:0] A; input [3:0] B; input S_ctrl;
    output [3:0] S; output C4;
    
    wire S_xor_B [3:0];
    wire C0, C1, C2, C3;
    
    assign C0 = S_ctrl;
    assign S_xor_B[0] = S_ctrl^B[0];
    assign S_xor_B[1] = S_ctrl^B[1];
    assign S_xor_B[2] = S_ctrl^B[2];
    assign S_xor_B[3] = S_ctrl^B[3];
    
    full_adder FA1(.X(A[0]), .Y(S_xor_B[0]), .Z(C0), .S(S[0]), .C(C1));
    full_adder FA2(.X(A[1]), .Y(S_xor_B[1]), .Z(C1), .S(S[1]), .C(C2));
    full_adder FA3(.X(A[2]), .Y(S_xor_B[2]), .Z(C2), .S(S[2]), .C(C3));
    full_adder FA4(.X(A[3]), .Y(S_xor_B[3]), .Z(C3), .S(S[3]), .C(C4));
endmodule
