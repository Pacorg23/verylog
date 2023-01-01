`timescale 1ns/1ns
`include "FF8bit.v"
module FF8bit_tb;
reg[7:0]Din;
reg clk, clear, enable;
wire [7:0] Q;
FF8bit U0(Din, clk,clear,enable,Q);
initial begin
    
   clk=0; #10;
   clear=1; #10;
   clear=0; #10;
   enable=1;#10;
   Din=25;#10;
end
endmodule