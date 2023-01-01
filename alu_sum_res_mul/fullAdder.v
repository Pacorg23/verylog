module fullAdder(a,b,c,d,e);
    input a,b,c;
    output d,e;
    wire reg1,reg2,reg3;
    assign reg1=a^b;
    assign reg2=a&b;
    assign reg3=reg1&c;
    assign d=reg1^c;
    assign e=reg2|reg3;
endmodule