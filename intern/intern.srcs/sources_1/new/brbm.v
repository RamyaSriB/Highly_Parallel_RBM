`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2019 05:49:20 PM
// Design Name: 
// Module Name: brbm
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


module brbm(
input [3:0]a,
input clk,
output reg [3:0]w4,
output reg [3:0]w5
    );
    always@(posedge clk)
    begin
     if(a>4'b0010)
    begin
    w4<=1;
    w5<=1;
    end
    else
    begin
    w4=a>>>2;
    if(w4>0)
    begin
    w5<=1;
    end
    else
    begin
    w5<=0;
    end
    end
    end
endmodule
