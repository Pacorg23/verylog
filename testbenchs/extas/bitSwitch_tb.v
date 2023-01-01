`timescale 1ps/1ps
`include "bitSwitch.v"
module bitSwitch_tb;

    reg A, enable;
    wire O;
    
    bitSwitch U0(A, enable, O);

initial begin
    $dumpfile("bitSwitch.vcd");
    $dumpvars(0, bitSwitch_tb);
    A=0;
    #20;
    enable=1; #20;
    enable=0; #20;
end
endmodule
