//모서리-구동 T FlipFlop
module T_FF(q,clk,clear);
//I/O 포트
output q;
input clk,clear;

//모서리-구동 DFF 파생
//q는 피드백 됨. qbar 필요하지 않으므로 연결하지 않음
edge_dff ff1(q,~q,clk,clear);
endmodule