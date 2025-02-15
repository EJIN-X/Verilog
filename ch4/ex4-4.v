//verilog에서 모든 포트 선언은 wire로 선언된다.
//default로 그렇게 된다는 말으로... output wire Q,Qbar; 이나 output Q,Qbar; 이나 같다는 말

module DFF(q,d,clk,reset); // 모듈의 포트 목록 나열
output q;
reg q;//출력 포트 q는 값을 유지.. 그러므로 reg로 선언
//input과 inout의 포트는 변환 값을 그대로 전달만 하면 되기 때문에 reg로 선언하면 안 됨
input d,clk,reset;
endmodule