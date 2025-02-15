//$monitor 테스크로 신호의 값이 변할 때마다 그 신호를 출력할 수 있음
// $monitor(p1,p2,...)
//시간과 클럭 그리고 리셋 신호의 값을 모니터링
//클럭은 매 5단위 시간마다 바뀌고 리셋은 10 단위 시간에 0이 된다.
initial
begin
    $monitor($time,"value of signals clock =%b reset =%b",clock,reset);
end
//0 value of signals clock=0 reset =1
