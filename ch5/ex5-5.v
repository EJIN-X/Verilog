//4:1 멀티플렉서 모듈, 포트 리스트는 I/O 다이어그램에서 직관적으로 알 수 있음
module mux4_to_1(out,i0,i1,i2,i3,s1,so);

//I/O 다이어그램으로부터 포트 선언
output out;
input i0,i1,i2,i3;
input s1,s0;

//내부 wire 선언
wire s1n, s0n;
wire y0,y1,y2,y3;

//게이트 파생.s1n,s0n;
not (s1n,s1);
not (s0n,s0);

//3-input AND 게이트 파생
and (y0,i0,s1n,s0n);
and (y1,i1,s1n,s0);
and (y2,i2,s1,s0n);
and (y3,i3,s1,s0);

//4개의 입력을 갖는 OR 게이트 파생
or (out,y0,y1,y2,y3);

endmodule