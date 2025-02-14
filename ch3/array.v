integer count[0:7];
//8 count 배열.. integer 하나당 32비트이니 8*32 총 256비트 필요
reg bool[31:0];
//32 1비트 boolean 레지스터 변수의 배열 32*1 총 32비트 필요
time chk_point[1:100];
reg [4:0] port_id[0:7];
//port_id란 배열에 8개의 요소가 있는데 각 요소마다 5비트씩 존재
integer matrix[4:0][0:255];
//5개의 행 *256개의 열 * integer이니 32비트
reg[63:0] array_4d[15:0] [7:0] [7:0] [255:0];
//4차원 구조. 위 행렬과 다른 형식. 아파트처럼 16개의 동 > 각 동의 층 8개 ...
wire[7:0] w_array2[5:0];
//w_array2라는 이름의 wire 배열
//wire: 저장 능력 X reg: 저장 능력 O
wire w_array[7:0][5:0];

port_id[3]=0;
//port_id 3번째 요소 reset... port_id=0; 이렇게 하면 안됨
matrix[1][0]=0;
//matrix[1]=0; 안됨