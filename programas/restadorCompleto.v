module restadorCompleto(a, b, inBorr, d, outBorr );
    input a, b, inBorr;
    output d, outBorr;
    wire wire1, wire2, wire3;
    assign reg1=a^b;
    assign reg2=~(a)&b;
    assign reg3=~(reg1)&inBorr;
    assign d=reg1^inBorr;
    assign outBorr=reg2|reg3;
endmodule