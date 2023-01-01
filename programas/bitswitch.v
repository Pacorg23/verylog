module bitSwitch (A, enable, O);
    input A, enable;
    output O;
    always @(enable) begin
        if(enable==1)
           assign O=A;
        
    end
endmodule