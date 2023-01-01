module restadorCompleto(a, b, inBorr, d, outBorr );
    input a, b, inBorr;
    output d, outBorr;
    wire wire1, wire2, wire3;
    assign wire1=a^b;
    assign wire2=~(a)&b;
    assign wire3=~(wire1)&inBorr;
    assign d=wire1^inBorr;
    assign outBorr=wire2|wire3;
endmodule