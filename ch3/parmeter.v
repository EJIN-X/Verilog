//parameter 키워드 사용하여 상수를 정의함
parameter port_id =5;
//상수 정의
parameter cache_line_width=256;
parameter signed[15:0] WIDTH;
//Width 파라미터에 대한 부호와 범위 고정
//localparam은 파라미터 값이 변하면 안 될때 사용하는 것
localparam state1= 4'b0001,
           state2= 4'b0002;