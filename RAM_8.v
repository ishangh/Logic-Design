module Ram8(out, in, addr, read, write, en, Clk);

output [15:0] out;
input [15:0] in;
input [2:0] addr;
input read, write, en, Clk;

wire [7:0] a;

Decoder3to8 r1(a,addr,en);

Register_16Bit r2[7:0](out, in, read, write, a, Clk);

endmodule
