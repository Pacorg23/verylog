`timescale 1ns/1ns
`include "byte_or.v"
module byte_or_tb;
reg[7:0] B_in1, B_in2;
wire[7:0] B_out1, B_out2;
byte_or U0(B_in1, B_in2, B_out1, B_out2);
initial begin
    $dumpfile("OrByte.vcd"); 
   $dumpvars(0, byte_or_tb);
   B_in2=0;
    B_in1=8'b01010100;
     #10;
    B_in2=8'b10101011;
     #10;
     B_in1=8'b10101011;
    #10;
end
endmodule
