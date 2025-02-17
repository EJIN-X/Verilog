//1비트 전가산기 정의
module fulladd(sum,c_out,a,b,c_in);
//I/O 포트 선언
output sum,c_out;
input a,b,c_in;
//내부 넷
wire s1,c1,c2;
//프리미티브 논리 게이트의 파생
xor (s1,a,b);
and (c1,a,b);

xor(sum,s1,c_in);
and(c2,s1,c_in);

xor(c_out,c2,c1);
endmodule