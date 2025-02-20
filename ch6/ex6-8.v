//리플 카운터
module counter(Q,clock,clear);
//I/O 포트
output[3:0]Q;
input clock,clear;
//T-FlipFlop
T_FF tff0(Q[0],clock,clear);
T_FF tff1(Q[1],Q[0],clear);
T_FF tff2(Q[2],Q[1],clear);
T_FF tff3(Q[3],Q[2],clear);
endmodule
