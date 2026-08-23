module FSM(clk,rst,state);
input clk,rst;
output reg [1:0]state;
reg [1:0]ns;
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;

always@(posedge clk)begin
if(rst)
state<=s0;
else
state<=ns;
end

always@(*)
begin
case(state)
s0:ns=s1;
s1:ns=s2;
s2:ns=s0;
default:ns<=s0;
endcase
end
endmodule


--------------Testbench------------------
module TB_FSM();
reg clk,rst;
wire [1:0]state;
FSM k1 (clk,rst,state);
initial
begin
clk=0;
forever #5 clk=~clk;
end

initial
begin
rst=1;#10;
rst=0;
#50;
$finish;
end
endmodule
