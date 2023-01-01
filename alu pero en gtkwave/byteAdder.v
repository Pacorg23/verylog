`include "fullAdder.v"
module byteAdder(A, B, c, O, o);
    input [7:0] A;
    input [7:0] B;
    input c;
    output [7:0]O;
    output wire  o;
    wire[7:0]E;
    fullAdder U0(.a(A[0]), .b(B[0]), .c(c), .d(O[0]), .e(E[0]));
    fullAdder U1(.a(A[1]), .b(B[1]), .c(E[0]), .d(O[1]), .e(E[1]));
    fullAdder U2(.a(A[2]), .b(B[2]), .c(E[1]), .d(O[2]), .e(E[2]));
    fullAdder U3(.a(A[3]), .b(B[3]), .c(E[2]), .d(O[3]), .e(E[3]));
    fullAdder U4(.a(A[4]), .b(B[4]), .c(E[3]), .d(O[4]), .e(E[4]));
    fullAdder U5(.a(A[5]), .b(B[5]), .c(E[4]), .d(O[5]), .e(E[5]));
    fullAdder U6(.a(A[6]), .b(B[6]), .c(E[5]), .d(O[6]), .e(E[6]));
    fullAdder U7(.a(A[7]), .b(B[7]), .c(E[6]), .d(O[7]), .e(o));
endmodule