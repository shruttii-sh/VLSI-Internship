`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 13:24:28
// Design Name: 
// Module Name: TB_JK_FF
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


module TB_JK_FF();
reg j,k,clk,rst;
wire q;
JK_FF k1(clk,j,k,rst,q);
initial 
begin
clk=0;
forever #5 clk=~clk;
end

initial
begin
rst=1;j=0;k=0;#10;
rst=0;
j=1'b0;k=1'b0;#10;
j=1'b0;k=1'b1;#10;
j=1'b1;k=1'b0;#10;
j=1'b1;k=1'b1;#10;
j=1'b0;k=1'b0;#5;
$finish;
end
endmodule
