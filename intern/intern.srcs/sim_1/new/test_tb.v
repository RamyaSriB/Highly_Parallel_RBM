`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2019 06:39:57 PM
// Design Name: 
// Module Name: test_tb
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


module test_tb;
reg a;
reg [3:0]wi;
reg clk;
reg rst;
wire [3:0]b;
test uut(a,wi,clk,rst,b);
initial
begin
a<=1'b1;
wi<=4'b1011;
clk<=0;
rst<=1'b1;
#200 rst=1'b0;
end
always #10 clk=~clk;
endmodule
