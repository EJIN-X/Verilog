//리플 카운터에 대한 스티뮬러스 모듈
//스티뮬러스 모듈
module stimulus;
//시뮬레이션 입력 변수를 선언
reg CLOCK,CLEAR;
wire[3:0] Q;

initial begin
    $monitor($time,"Count Q =%b Clear =%b", Q[3:0],CLEAR);

end
//카운터 파생
counter c1(Q,CLOCK,CLEAR);
//Clear 신호로 시뮬
initial
begin
    CLEAR = 1'b1;#34 CLEAR =1'b0; #200 CLEAR =1'b1; #50 CLEAR=1'b0;
end

//10단위 시간마다 클록 변화
initial
begin
    CLOCK =1'b0; forever #10 CLOCK=~CLOCK;
end

//400단위 시간마다 시뮬레이션 종료
initial
begin
    #400 $finish;
end
endmodule