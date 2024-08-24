`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 01:51:14 AM
// Design Name: 
// Module Name: Figure_4_50
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


module Figure_4_50(CLK, Reset, X, Z);
    input [2:1]X;
    output Z;
    input CLK;
    input Reset;
    
    reg [1:0]Q_now;
    reg [1:0]Q_next;
    reg Z;
    
    always @(posedge CLK or posedge Reset) //CLK의 posedge와 Reset의 posedge에서 실행
        begin
            if(Reset == 1)
                Q_now <= 2'b00; //A state
            else
                Q_now <= Q_next;
        end
    
    always @(X or Q_now)
        begin
            case(Q_now)
            2'b00:begin
            if(X == 2'b00 | X == 2'b11)
                    Q_next <= 2'b00; //Next State : A
                else
                    Q_next <= 2'b01; //Next State : B
            end
            2'b01:begin
                if(X == 2'b00 | X == 2'b01)
                    Q_next <= 2'b00; //Next State : A
                else
                    Q_next <= 2'b11; //Next State : D
            end
            2'b10:begin
                if(X == 2'b10 | X == 2'b11)
                    Q_next <= 2'b10; //Next State : C
                else
                    Q_next <= 2'b00; //Next State : A
            end 
            2'b11:begin
                if(X == 2'b00 | X == 2'b11)
                    Q_next <= 2'b10; //Next State: C
                else
                    Q_next <= 2'b01; //Next State : B
            end
            endcase
        end
        
    always @(posedge CLK)
        begin
            if(Q_now == 2'b00) //A state
                begin
                if(X == 2'b00 | X == 2'b01 | X == 2'b11)
                    Z <= 0;
                else
                    Z <= 1;
                end
                    
            else if(Q_now == 2'b01) //B state
                begin
                if(X == 2'b00 | X == 2'b01)
                    Z <= 0;
                else
                    Z <= 1;
                end
                    
            else if(Q_now == 2'b10) //C state
                begin
                if(X == 2'b00 | X == 2'b10)
                    Z <= 1;
                else
                    Z <= 0;
                end
                    
            else if(Q_now == 2'b11) //D state
                begin
                if(X == 2'b00 | X == 2'b01 | X == 2'b11)
                    Z <= 1;
                else
                    Z <= 0;
                end
        end
endmodule
