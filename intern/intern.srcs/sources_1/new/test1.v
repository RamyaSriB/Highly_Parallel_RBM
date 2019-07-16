`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2019 10:17:55 AM
// Design Name: 
// Module Name: test1
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




module test1(
input [3:0]a,
input clk,
input rst,
input [3:0]wi0,
input [3:0]wi1,
input [3:0]wi2,
input [3:0]wi3,
output reg [3:0]out0,
output reg [3:0]out1,
output reg [3:0]out2,
output reg [3:0]out3
);
wire [3:0]x0;
wire [3:0]x1;
wire [3:0]x2;
wire [3:0]x3;
wire [3:0]y0;
wire [3:0]y1;
wire [3:0]y2;
wire [3:0]y3;
wire [3:0]z0;
wire [3:0]z1;
wire [3:0]z2;
wire [3:0]z3;
wire [3:0]k0;
wire [3:0]k1;
wire [3:0]k2;
wire [3:0]k3;
wire [3:0]m0;
wire [3:0]m1;
wire [3:0]m2;
wire [3:0]m3;
wire [3:0]n0;
wire [3:0]n1;
wire [3:0]n2;
wire [3:0]n3;

arbm a1(a[0],wi0,clk,rst,x0);
arbm a2(a[1],wi1,clk,rst,x1);
arbm a3(a[2],wi2,clk,rst,x2);
arbm a4(a[3],wi3,clk,rst,x3);
pipo p1(x0,x1,x2,x3,clk,y0,y1,y2,y3);
brbm b1(y0,clk,z0,k0);
brbm b2(y1,clk,z1,k1);
brbm b3(y2,clk,z2,k2);
brbm b4(y3,clk,z3,k3);
pipo p2(k0,k1,k2,k3,clk,m0,m1,m2,m3);
crbm c1(z0,m0,clk,rst,n0);
crbm c2(z1,m1,clk,rst,n1);
crbm c3(z2,m2,clk,rst,n2);
crbm c4(z3,m3,clk,rst,n3);
always@(*)
begin
out0=n0;
out1=n1;
out2=n2;
out3=n3;
end




endmodule
