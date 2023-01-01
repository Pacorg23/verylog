
module MultiplicadorByte(A, B, O);
    input [7:0] A, B;
    output [15:0] O;
    wire [7:0] E0,E1,E2, E3, E4, E5, E6, E7, S0, S1, S2, S3, S4, S5, S6, S7;
    wire C0, C1, C2, C3, C4, C5, C6, C7;
    reg [7:0] aux0, aux1, aux2, aux3, aux4, aux5, axu6, aux7;

    assign O[0]=E0[0];


    
    assign E0[0]=B[0]&A[0];
    assign E0[1]=B[0]&A[1];
    assign E0[2]=B[0]&A[2];
    assign E0[3]=B[0]&A[3];
    assign E0[4]=B[0]&A[4];
    assign E0[5]=B[0]&A[5];
    assign E0[6]=B[0]&A[6];
    assign E0[7]=B[0]&A[7];

    assign E1[0]=B[1]&A[0];
    assign E1[1]=B[1]&A[1];
    assign E1[2]=B[1]&A[2];
    assign E1[3]=B[1]&A[3];
    assign E1[4]=B[1]&A[4];
    assign E1[5]=B[1]&A[5];
    assign E1[6]=B[1]&A[6];
    assign E1[7]=B[1]&A[7];

    byteAdder Adder0(E1, {1'b0,E0[7:1]},1'b0,S0,C0);
    
     assign O[1]=S0[0];
     
    assign E2[0]=B[2]&A[0];
    assign E2[1]=B[2]&A[1];
    assign E2[2]=B[2]&A[2];
    assign E2[3]=B[2]&A[3];
    assign E2[4]=B[2]&A[4];
    assign E2[5]=B[2]&A[5];
    assign E2[6]=B[2]&A[6];
    assign E2[7]=B[2]&A[7];

    byteAdder Adder1(E2, {C0, S0[7:1]}, 1'b0, S1, C1);
    assign O[2]=S1[0];    

    assign E3[0]=B[3]&A[0];
    assign E3[1]=B[3]&A[1];
    assign E3[2]=B[3]&A[2];
    assign E3[3]=B[3]&A[3];
    assign E3[4]=B[3]&A[4];
    assign E3[5]=B[3]&A[5];
    assign E3[6]=B[3]&A[6];
    assign E3[7]=B[3]&A[7];
    
    byteAdder Adder2(E3, {C1, S1[7:1]}, 1'b0, S2, C2);
    assign O[3]=S2[0];     

    assign E4[0]=B[4]&A[0];
    assign E4[1]=B[4]&A[1];
    assign E4[2]=B[4]&A[2];
    assign E4[3]=B[4]&A[3];
    assign E4[4]=B[4]&A[4];
    assign E4[5]=B[4]&A[5];
    assign E4[6]=B[4]&A[6];
    assign E4[7]=B[4]&A[7];
    
    byteAdder Adder3(E4, {C2, S2[7:1]}, 1'b0, S3, C3);
    assign O[4]=S3[0];     

    assign E5[0]=B[5]&A[0];
    assign E5[1]=B[5]&A[1];
    assign E5[2]=B[5]&A[2];
    assign E5[3]=B[5]&A[3];
    assign E5[4]=B[5]&A[4];
    assign E5[5]=B[5]&A[5];
    assign E5[6]=B[5]&A[6];
    assign E5[7]=B[5]&A[7];
    
    byteAdder Adder4(E5, {C3, S3[7:1]}, 1'b0, S4, C4);
    assign O[5]=S4[0];     

    assign E6[0]=B[6]&A[0];
    assign E6[1]=B[6]&A[1];
    assign E6[2]=B[6]&A[2];
    assign E6[3]=B[6]&A[3];
    assign E6[4]=B[6]&A[4];
    assign E6[5]=B[6]&A[5];
    assign E6[6]=B[6]&A[6];
    assign E6[7]=B[6]&A[7];
    
    byteAdder Adder5(E6, {C4, S4[7:1]}, 1'b0, S5, C5);
    assign O[6]=S5[0];    

    assign E7[0]=B[7]&A[0];
    assign E7[1]=B[7]&A[1];
    assign E7[2]=B[7]&A[2];
    assign E7[3]=B[7]&A[3];
    assign E7[4]=B[7]&A[4];
    assign E7[5]=B[7]&A[5];
    assign E7[6]=B[7]&A[6];
    assign E7[7]=B[7]&A[7];
    
    byteAdder Adder6(E7, {C5, S5[7:1]}, 1'b0, O[14:7], O[15]);
    


endmodule