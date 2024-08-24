`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 01:09:44 AM
// Design Name: 
// Module Name: multiplexer
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


module multiplexer(s, I, Y);
    
    input [1:0]s;
    input [3:0]I;
    output Y;
    reg Y;
    
    always @(s or I)
        begin
            if(s == 2'b00) Y <= I[0];
            else if(s == 2'b01) Y <= I[1];
            else if(s == 2'b10) Y <= I[2];
            else if(s == 2'b11) Y <= I[3];
        end
endmodule
