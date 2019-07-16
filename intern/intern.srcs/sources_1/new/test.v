`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2019 06:33:18 PM
// Design Name: 
// Module Name: test
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


module test(
input a,
input [3:0]wi,
input clk,
input rst,
output reg [3:0]b
);
wire [3:0]x1;
wire [3:0]x2;
wire [3:0]x3;
wire [3:0]x4;
arbm a1(a,wi,clk,rst,x1);
brbm b1(x1,clk,x2,x3);
crbm c1(x2,x3,clk,rst,x4);
always@(*)
begin
b=x4;
end
endmodule
