`include "registroV2.v" 
`timescale 1ps/1ps
module registro_tb();
    reg load0, load1, save0, save1;
    reg [7:0] saveValue0, saveValue1;
    wire reg [7:0] prueba;
    wire [7:0] salida0, salida1, salidaSiempre0, salidaSiempre1;
    registro A0(load0, save0, saveValue0, salida0, salidaSiempre0);
    registro A1(load1, save1,saveValue1, salida1, salidaSiempre1);
    assign prueba[0]=salida0[0];
    assign prueba[0]=salida1[0];
    assign prueba[1]=salida0[1];
    assign prueba[1]=salida1[1];
    assign prueba[2]=salida0[2];
    assign prueba[2]=salida1[2];
    assign prueba[3]=salida0[3];
    assign prueba[3]=salida1[3];
    assign prueba[4]=salida0[4];
    assign prueba[4]=salida1[4];
    assign prueba[5]=salida0[5];
    assign prueba[5]=salida1[5];
    assign prueba[6]=salida0[6];
    assign prueba[6]=salida1[6];
    assign prueba[7]=salida0[7];
    assign prueba[7]=salida1[7];
    //prueba<=salida1;
    initial begin
        $dumpfile("registroV2.vcd");
        $dumpvars(0, registro_tb);
        load0=0;
        save0=0;
        load1=0;
        save1=0;
        saveValue0=8'b00000000;
        saveValue1=8'b00000000;
        #10;
        saveValue0=8'b10010100;
        saveValue1=8'b00010100;
        #5;
        save0=1;
        save1=1;
        #10;
        save0=0;
        load0=1;
        saveValue0=8'b10010110;
        #5;
        save1=0;
        load1=1;
        saveValue1=8'b00010110;
        #10;
        load0=0;
        load1=0;
        #5;

    end
endmodule