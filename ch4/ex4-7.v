//이름에 의한 포트 연결
module Top;
//연결 변수 선언
reg[3:0] A,B;
reg C_IN;
wire[3:0] SUM;
wire C_OUT;

    fulladd4 fa_ordered(SUM,C_OUT,A,B,C,C_IN);
    //스티뮬러스
endmodule

module fulladd4(sum,c_out,a,b,c_in);
output [3:0] sum;
output c_out;
input [3:0] a,b;
input c_in;
//모듈 내용
endmodule