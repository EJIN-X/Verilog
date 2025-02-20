module stimulus;

//변수 선언
reg A,B,C;
wire OUT;

//모듈 D 파생
D d1(OUT,A,B,C);

//입력값을 준다. 40 단위 시간에 시뮬레이션이 끝남
initial begin
    
    begin 
        a=1'b0; B=1'b0;C=1'b0;
        #10 A=1'b1; B=1'b1; C=1'b1;
        #10 A=1'b1; B=1'b0; C=1'b0;
        #20 $finish;
end
endmodule