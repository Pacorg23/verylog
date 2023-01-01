`timescale 1ns / 1ns 
`include "instruccion.v"
module instruccion_tb;
input wire  op;
reg clk;
output wire [7:0]dato, salida;
instruccion U0(op, dato, salida, clk);
initial begin 
    clk = 0;
    forever begin
    #10 clk = ~clk;
 end end

initial begin
    
   $dumpfile("instruccion.vcd");   
     op=1; #10;
    dato<=8'b10001010; #10;
     op<=0; #10;
end
endmodule