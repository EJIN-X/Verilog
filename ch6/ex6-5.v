//데이터 플로우를 이용한 4:1 멀티플렉서
module mux4_to_1 (out,i0,i1,i2,i3,s1,s0);
//I/O 다이어그램에서 포트 선언
output out;
input i0,i1,i2,i3;
input s1,s0;

//출력을 위한 논리식
assign out =(~s1&~s0&i0)|(~s1&s0&i1)|(s1&~s0&i2)|(s1&s0&i3);
endmodule