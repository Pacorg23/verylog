`timescale 1ns/1ns
module ALU_tb;
    reg [7:0] A, B;
    reg c;
    reg [1:0] sel;
    wire [7:0] O;
    wire flag;

    ALU A0(A, B, c, O, sel, flag );
    initial begin

        c=0;
        B=8'b00000001; 
        A=8'b00000001;
        sel = 2'b00; #1;
        sel = 2'b01; #1;
        sel = 2'b10; #1;
        B=8'b11111111; 
        A=8'b11111111;
        #1;
        A=8'b01010101; #1;
        B=8'b10101010; #1;
        sel = 2'b00; #1;
        sel = 2'b01; #1;
        

    end
endmodule