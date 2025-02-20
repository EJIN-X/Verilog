//모서리 구동 DFF
module edge_dff(q,qbar,d,clk,clear);
//입력, 출력
output q,qbar;
input d,clk,clear;

//내부 변수
wire s,sbar,r,rbar,cbar;

//데이터플로우 문
//clear 신호의 보수 생성
assign cbar =~clear;

//모서리 구동 FF은 3개의 sr래치로 구현됨
assign q = ~(s&qbar),qbar =~(q&r&cbar);
endmodule