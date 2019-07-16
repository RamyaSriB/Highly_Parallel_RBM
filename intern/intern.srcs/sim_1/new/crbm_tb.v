`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2019 06:22:26 PM
// Design Name: 
// Module Name: crbm_tb
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


module crbm_tb;
reg [3:0]w4;
reg [3:0]w5;
reg clk;
reg rst;
wire [3:0]w8;
crbm uut(w4,w5,clk,rst,w8);
initial
begin
w4<=4'b0010;
w5<=4'b0100;
clk<=0;
rst<=1'b1;
#100 rst=1'b0;
end
always #10 clk=~clk;
endmodule
