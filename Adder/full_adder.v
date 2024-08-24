`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2021 02:32:51 AM
// Design Name: 
// Module Name: full_adder
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


module full_adder(X, Y, Z, S, C);
    input X; input Y; input Z;
    output S; output C;
    
    wire h1_s, h1_c, h2_s, h2_c;
    
    half_adder h1(.X(X), .Y(Y), .S(h1_s), .C(h1_c));
    half_adder h2(.X(h1_s), .Y(Z), .S(h2_s), .C(h2_c));
    
    assign S = h2_s;
    assign C = h1_c | h2_c;
    
endmodule
