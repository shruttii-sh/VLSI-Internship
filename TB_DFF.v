`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 13:00:51
// Design Name: 
// Module Name: TB_DFF
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


module TB_DFF();
reg clk,D;
wire Q;
D_FF k1(D,Q,clk);
initial
begin
clk=0;
forever #5 clk=~clk;
end

initial 
begin
D=0;#5;
D=1;#7;
D=1;#10;
D=0;#10;
D=1;#5;
D=0;#2;
$finish;
end
endmodule
