`include "restadorCompleto.v"
module byteSub(A, B, c, O, o);
    input [7:0] A;
    input [7:0] B;
    input c;
    output [7:0]O;
    output o;
    wire[7:0]E;
    restadorCompleto U0(.a(A[0]), .b(B[0]), .inBorr(c), .d(O[0]), .outBorr(E[0]));
    restadorCompleto U1(.a(A[1]), .b(B[1]), .inBorr(E[0]), .d(O[1]), .outBorr(E[1]));
    restadorCompleto U2(.a(A[2]), .b(B[2]), .inBorr(E[1]), .d(O[2]), .outBorr(E[2]));
    restadorCompleto U3(.a(A[3]), .b(B[3]), .inBorr(E[2]), .d(O[3]), .outBorr(E[3]));
    restadorCompleto U4(.a(A[4]), .b(B[4]), .inBorr(E[3]), .d(O[4]), .outBorr(E[4]));
    restadorCompleto U5(.a(A[5]), .b(B[5]), .inBorr(E[4]), .d(O[5]), .outBorr(E[5]));
    restadorCompleto U6(.a(A[6]), .b(B[6]), .inBorr(E[5]), .d(O[6]), .outBorr(E[6]));
    restadorCompleto U7(.a(A[7]), .b(B[7]), .inBorr(E[6]), .d(O[7]), .outBorr(E[7]));
    assign o=E[7];
endmodule