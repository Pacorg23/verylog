`timescale 1ns/1ns
`include "cargarDato.v"
module cargarDato_tb;
reg clk;
reg enable;
reg [13:0] data;
wire [7:0] registro;
cargarDato U0(clk, enable, data, registro);
initial begin
    $dumpfile("caragarDato.vcd");
    $dumpvars(0, cargarDato_tb);
    clk=0;
    data=14'b00000101001010;
     clk =1;
     #10;
    clk=0;
    enable =1; #10;
     clk =1;
    data=14'b00000101001111;#10;
    clk=0;
    #10;
end 
endmodule
