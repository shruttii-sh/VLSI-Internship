module ram(
input clk,
input we,
input [1:0] addr,
input [3:0] data_in,
output reg [3:0] data_out

reg [3:0] memory [3:0];

always @(posedge clk) begin
if (we)
memory[addr] <= data_in;
else
data_out <= memory[addr];

end

endmodule



  -------------------testbench-------------------
  `timescale 1ns/1ps

module ram_tb;

reg clk;
reg we;
reg [1:0] addr;
reg [3:0] data_in;
wire [3:0] data_out;

ram uut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    we = 0;
    addr = 0;
    data_in = 0;

    #10;
    we = 1;
    addr = 2'b00;
    data_in = 4'b0101;

    #10;
    addr = 2'b01;
    data_in = 4'b1010;

    #10;
    addr = 2'b10;
    data_in = 4'b0011;

    #10;
    addr = 2'b11;
    data_in = 4'b1111;

    #10;
    we = 0;

    addr = 2'b00;
    #10;

    addr = 2'b01;
    #10;

    addr = 2'b10;
    #10;

    addr = 2'b11;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t | CLK=%b | WE=%b | ADDR=%b | DATA_IN=%h | DATA_OUT=%h",
             $time, clk, we, addr, data_in, data_out);
end

endmodule
