//스티뮬러스 블록의 정의(최상위 블록)
module stimulus;
//module fulladd4(sum,c_out,a,b,c_in);
//변수를 선언
reg[3:0]A,B;
reg C_IN;
wire[3:0] SUM;
wire C_OUT;

//FA_1이라는 4비트 전가산기를 파생
fulladd4 FA_1(SUM,C_OUT,A,B,C,C_IN);

//신호값을 출력
initial begin
    $monitor($time,"A=%b,B=%b,C_IN=%b,---C_OUT=%b,SUM=%b\n",A,B,C_IN,C_OUT,SUM);
end

//스티뮬러스 입력
initial begin
    A=4'd0;B=4'd0;C_IN=1'b0;
    #5 A=4'd3;B=4'd4;
    #5 A=4'd2;B=4'd5;
    #5 A=4'd9;B=4'd9;
    #5 A=4'd10;B=4'd15;
    #5 A=4'd10;B=4'd5;C_IN=1'b1;
end
endmodule