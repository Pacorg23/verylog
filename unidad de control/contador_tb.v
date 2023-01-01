`include "contador.v"
`timescale 1ps/1ps
module contador_tb;
    reg clk, rstn;
    reg [7:0] counterReg;
    wire [7:0]out;

    contador A0(clk, rstn, out, counterReg);
    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, contador_tb);
        counterReg=8'b0001010;
        rstn=1;
        clk=1;
        #10;
        clk=0;
        #10;
        rstn=0;
        clk=1;
        #10;
        clk=0;
        #10;
        clk=1;
        #10;
        clk=0;
        #10;
        clk=1;
        #10;
        clk=0;
        #10;
        rstn=1;
        clk=1;
        #10;
        rstn=0;
        clk=0;
        #10;
        clk=1;
        #10;
        clk=0;
        #10;
        clk=1;
        #10;

    end
endmodule
