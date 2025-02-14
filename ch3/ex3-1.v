reg reset; //변수 reset 정의
initial begin
    reset=1'b1 //reset을 1로 초기화
    #100 reset =1'b0 //100 단위 시간 뒤 reset값 바꾸기
end