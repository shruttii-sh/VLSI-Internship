module rom(
input [1:0] addr,
  output reg [3:0] data_out);

always @(*) begin
case(addr)
2'b00: data_out = 4'b0001;
2'b01: data_out = 4'b0010;
2'b10: data_out = 4'b0100;
2'b11: data_out = 4'b1000;
endcase

end

endmodule


---------------testbench----------------
`timescale 1ns/1ps

module rom_tb;

reg [1:0] addr;
wire [3:0] data_out;

rom uut (
    .addr(addr),
    .data_out(data_out)
);

initial begin
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
    $monitor("Time=%0t | ADDR=%b | DATA_OUT=%b",
             $time, addr, data_out);
end

endmodule
