`include "anticipador.v"
`include "fullAdder.v"
module ByteAdderAnt(A, B, c, O, o);
integer  i;
    input  [7:0]  A, B;
    input c;
    output  [7:0] O;
    output o;
    wire reg [7:0] P, G, p, E;
    assign E[0]= c;

    assign P[0]=A[0]^B[0];
    assign G[0]=A[0]&B[0];
    assign O[0]=P[0]^E[0];
    assign p[0]=P[0]&E[0];
    assign E[1]=p[0]|G[0];

    assign P[1]=A[1]^B[1];
    assign G[1]=A[1]&B[1];
    assign O[1]=P[1]^E[1];
    assign p[1]=P[1]&E[1];
    assign E[2]=p[1]|G[1];


    assign P[2]=A[2]^B[2];
    assign G[2]=A[2]&B[2];
    assign O[2]=P[2]^E[2];
    assign p[2]=P[2]&E[2];
    assign E[3]=p[2]|G[2];

    assign P[3]=A[3]^B[3];
    assign G[3]=A[3]&B[3];
    assign O[3]=P[3]^E[3];
    assign p[3]=P[3]&E[3];
    assign E[4]=p[3]|G[3];

    assign P[4]=A[4]^B[4];
    assign G[4]=A[4]&B[4];
    assign O[4]=P[4]^E[4];
    assign p[4]=P[4]&E[4];
    assign E[5]=p[4]|G[4];

    assign P[5]=A[5]^B[5];
    assign G[5]=A[5]&B[5];
    assign O[5]=P[5]^E[5];
    assign p[5]=P[5]&E[5];
    assign E[6]=p[5]|G[5];

    assign P[6]=A[6]^B[6];
    assign G[6]=A[6]&B[6];
    assign O[6]=P[6]^E[6];
    assign p[6]=P[6]&E[6];
    assign E[7]=p[6]|G[6];

    assign P[7]=A[7]^B[7];
    assign G[7]=A[7]&B[7];
    assign O[7]=P[7]^E[7];
    assign p[7]=P[7]&E[7];
    assign o=p[7]|G[7];
    
    
endmodule