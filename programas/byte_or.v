module byte_or(B_in1, B_in2, B_out1, B_out2);
    input [7:0]B_in1, B_in2;
    output [7:0]B_out1, B_out2;
    assign B_out1[0]=B_in1[0] || B_in2[0];
    assign B_out1[1]=B_in1[1] || B_in2[1];
    assign B_out1[2]=B_in1[2] || B_in2[2];
    assign B_out1[3]=B_in1[3] || B_in2[3];
    assign B_out1[4]=B_in1[4] || B_in2[4];
    assign B_out1[5]=B_in1[5] || B_in2[5];
    assign B_out1[6]=B_in1[6] || B_in2[6];
    assign B_out1[7]=B_in1[7] || B_in2[7];
    assign B_out2=B_in1|B_in2;
endmodule