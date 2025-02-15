//포트 리스트의 모든 포트는 모듈 안에서 선언되어야 함.
//input, output, inout 이 있다
//fulladd4
module fulladd4(sum,c_out,a,b,c_in);
//포트 선언 시작 부분
output[3:0] sum;
output c_out;
input[3:0] a,b;
input c_in;

endmodule
