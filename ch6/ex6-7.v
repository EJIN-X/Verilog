module fulladd4(sum,c_out,a,b,c_in);

//I/O 포트 정의
output [3:0] sum;
output c_out;
input[3:0] a,b;
input c_in;

//전가산기의 기능 기술
assign {c_out ,sum} = a+b+c_in;
//a + b + c_in 의 결과가 c_out, sum에 나눠서 저장됨
endmodule