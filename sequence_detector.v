`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 20:37:13
// Design Name: 
// Module Name: sequence_detector
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


module sequence_detector(
input clk,
input reset,
input in,
output reg detected);

reg [2:0] state;

always @(posedge clk or posedge reset) begin
if (reset) begin
state <= 0;
detected <= 0;
end else begin
case(state)
0: state <= (in) ? 1 : 0;
1: state <= (in) ? 1 : 2;
2: state <= (in) ? 3 : 0;
3: begin
if (in) begin
detected <= 1;
state <= 1;
end else
state <= 2;

end
endcase

end

end

endmodule



------------------testbench---------------
`timescale 1ns/1ps

module TB_sequence_detector;

reg clk, reset, in;
wire detected;

sequence_detector uut (
    .clk(clk),
    .reset(reset),
    .in(in),
    .detected(detected)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1;
    in = 0;
    #10;
    reset = 0;

    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;
    #20;

    $finish;
end

initial begin
    $monitor("Time=%0t reset=%b in=%b detected=%b", $time, reset, in, detected);
end

endmodule
