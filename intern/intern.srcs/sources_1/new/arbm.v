`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2019 05:27:04 PM
// Design Name: 
// Module Name: arbm
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


module arbm(
input a,
input [3:0]wi,
input clk,
input rst,
output reg [3:0]b
    );
    reg [3:0]w1;
    reg [3:0]w2;
    reg [3:0]w9;
    reg [3:0]r;
    reg [3:0]q;
    always@(posedge clk)
    begin
    if(rst)
    begin
     q<=4'b0000;
     w9<=wi;
     end
     else
     begin
     w9<=4'b0000;
     end
     r<=w9;
     w1<=r;
     w2<=(w1*a);
     b=w2+q;
     q=b;
     end
endmodule
