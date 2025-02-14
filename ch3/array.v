integer count[0:7];
//8 count 배열.. integer 하나당 32비트이니 8*32 총 256비트 필요
reg bool[31:0];
//32 1비트 boolean 레지스터 변수의 배열 32*1 총 32비트 필요
time chk_point[1:100];
reg [4:0] port_id[0:7];
//port_id란 배열에 8개의 요소가 있는데 각 요소마다 5비트씩 존재
