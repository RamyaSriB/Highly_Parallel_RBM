`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2019 05:46:21 PM
// Design Name: 
// Module Name: rbm
// Pr
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2019 04:52:41 PM
// Design Name: 
// Module Name: abc
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

module rbm_0(
input a,
input [3:0]wi,
input clk,
input rst,
output reg [3:0]b
);
reg [3:0]w1;
reg [3:0]w2;
reg [3:0]w3;
reg [3:0]w4;
reg[3:0]w5;
reg [3:0]w6;
reg [3:0]w7;
reg [3:0]w8;
reg [3:0]w9;
reg [3:0]p;
reg [3:0]q;
reg [3:0]r;
always@(posedge clk)
begin
if(rst)
begin
 q<=4'b0000;
 p<=4'b0000;
 w9<=wi;
 end
 else
 begin
 w9<=4'b0000;
 end
 r<=w9;
 w1<=r;
 w2<=(w1*a);
 w3=w2+q;
 q=w3;
 
 /*if(w3<=-2)
 begin
 w4<=0;
 w5<=0;
 end
 */
 if(w3>4'b0010)
 begin
 w4<=1;
 w5<=1;
 end
 else
 begin
 w4=w3>>>2;
 if(w4>0)
 begin
 w5<=1;
 end
 else
 w5<=0;
 end
 w6=(w4*w5);
 w7=w6+p;
 p=w7;
w8=p; 
b<=w8;
 end
endmodule

module rbm(
input [3:0]a,
input [3:0]wi0,
/*input [3:0]wi1,
input [3:0]wi2,
input [3:0]wi3,
*/
input clk,
input rst, 
output reg [3:0]out
/*output [3:0]out1,
output [3:0]out2,
output [3:0]out3
*/
);
wire [3:0]l;
rbm_0 r1(a[0],wi0,clk,rst,l);
always@(*)
begin
out=l;
end




endmodule
