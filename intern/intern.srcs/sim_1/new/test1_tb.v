`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2019 12:08:35 PM
// Design Name: 
// Module Name: test1_tb
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


module test1_tb;
reg [3:0]a;
reg clk;
reg rst;
reg [3:0]wi0;
reg [3:0]wi1;
reg [3:0]wi2;
reg [3:0]wi3;
wire [3:0]out0;
wire [3:0]out1;
wire [3:0]out2;
wire [3:0]out3;
test1 uut(a,clk,rst,wi0,wi1,wi2,wi3,out0,out1,out2,out3);
initial
begin
a<=4'b1111;
clk<=0;
rst<=1;
wi0<=4'b1001;
wi1<=4'b1011;
wi2<=4'b1111;
wi3<=4'b1101;
#200 rst<=0;
end
always #10 clk=~clk;
endmodule
