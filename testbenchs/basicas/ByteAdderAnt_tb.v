`timescale 1ns / 1ns 
`include "ByteAdderAnt.v"
module ByteAdderAnt_tb;
reg [7:0]A;
reg [7:0]B;
reg c;
wire [7:0]O;
wire o;
ByteAdderAnt U0(A,B,c,O,o);
initial begin
   $dumpfile("ByteAdderAnt.vcd");   
   $dumpvars(0, ByteAdderAnt_tb);
   c=0;
   B=8'b00000001; 
   A=8'b00000001; #1;
   
   A=8'b00000011; #1;

   A=8'b00000111; #1;
   
   A=8'b00001111; #1;

   A=8'b10101011; #1;
   
   A=8'b10101010; #1;
   
   A=8'b11111111; #1;
   
   
end
endmodule