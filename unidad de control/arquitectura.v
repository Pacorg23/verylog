`include "3bitsDec.v"
`include "Alu.v"
`include "registroV2.v"
`include "mux.v"
`include "switch.v"
module arquitectura (
    input [7:0] instruccion, input wire [7:0] datos, output reg [15:0] salida, output reg clck, output  flag
);
    wire intDatos, iDorComp, cond, r0orID, aluOp, r3orAluOp, wflag;
    wire [7:0] dec0, dec1, alContador, allP, aluA, aluB, aluOpCod, condInp, wReg0, wReg3, trsh0, trsh1;
    wire [15:0] aluOut;
    reg [7:0] allPR0;
    reg trsh3;
    initial begin
    allPR0=8'bzzzzzzzz;
    trsh3=0;
    end
    always @(*) begin
        if (instruccion[7:3]==5'b10110) begin
            allPR0=datos;
        end
        else begin
            allPR0[7:0]=8'bzzzzzzzz;
        end
    end
    assign allP=allPR0;
    assign intDatos=!instruccion[7]&!instruccion[6];
    assign iDorComp=intDatos|instruccion[6];
    assign cond=instruccion[7]&instruccion[6];
    decodificador DEC0(instruccion[2:0], dec0, iDorComp);
    decodificador DEC1(instruccion[5:3], dec1, intDatos);
    assign r0orID = dec0[0]|intDatos;
    assign aluOp=!cond & instruccion[6];
    assign r3orAluOp=aluOp|dec0[3];
    mux M0(allP, {2'b00, instruccion[5:0]}, intDatos, wReg0);
    registro R0(dec1[0], r0orID, wReg0, allP, alContador);
    switch SW0({5'b00000, instruccion[2:0]}, aluOp, aluOpCod);
    //switch SW0();
    switch SW2(aluOut[7:0], aluOp, condInp);
    switch SW3(allP, !aluOp, wReg3);
    registro R1(dec1[1], dec0[1], allP, allP, aluA);
    registro R2(dec1[2], dec0[2], allP, allP, aluB);
    registro R3(dec1[3], r3orAluOp, wReg3, allP, condInp);
    registro R4(dec1[4], dec0[4], allP, allP, trsh0);
    registro R5(dec1[5], dec0[5], allP, allP, trsh1);
    ALU A0(aluA, aluB, trsh3 , aluOut, aluOpCod[2:0], flag);
    //assign flag=wflag;

endmodule