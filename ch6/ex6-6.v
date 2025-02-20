//ex6-5 보다 쉽게
module multiplexer4_to_1 (out,i0,i1,i2,i3,s1,s0);

//I/O 다이어그램으로부터 포트 선언
output out;
input i0,i1,i2,i3;
input s1,s0;

//조건 연산 사용
//<조건식? 참 조건식 수식: 거짓 조건시 수식>
assign out =s1?(s0?i3:i2):(s0?i1:i0);
endmodule
/*s1이 0일 때:

s0이 0이면 → i0 선택
s0이 1이면 → i1 선택


s1이 1일 때:

s0이 0이면 → i2 선택
s0이 1이면 → i3 선택
*/