//시뮬레이션 중 중단하기 위해서는 $stop 사용함
//시뮬레이션 끝내기 위해서는 $finish
//단위 시간 100에 시뮬레이션을 중단하고 결과를 조사
//단위 시간 1000에 시뮬레이션 끝냄
initial
begin
    clock=0;
    reset=1;
    #100 $stop;
    #900$finish;
end