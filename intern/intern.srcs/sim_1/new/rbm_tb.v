`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2019 03:16:24 PM
// Design Name: 
// Module Name: rbm_tb
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


module rbm_tb;
reg [3:0]a;
reg [3:0]wi0;
reg clk;
reg rst;
wire [3:0]out;
rbm uut(a,wi0,clk,rst,out);
initial
begin
a[0]<=1'b1;
wi0<=4'b1011;
clk<=0;
rst<=1'b1;
#100 rst=1'b0;
end
always #10 clk=~clk;


endmodule
