`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2021 11:27:02 PM
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


module D_FlipFlop(CLK, D, Q, RESET);
    input CLK; input D; output Q;
    input RESET;
    reg current_state;
    
    assign Q = current_state; //Q�� ���� state ����
    
    always @(posedge CLK or posedge RESET)
    begin
        if(RESET)
        begin
            current_state <= 0;
        end
        else
        begin
            current_state <= D; //CLK�� positive edge���� D�� ���� state�� ����
        end
    end

endmodule
