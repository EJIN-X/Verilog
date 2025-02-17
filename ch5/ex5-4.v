//반복된 인스턴스가 요구될 때가 있음
wire [7:0] OUT, IN1 , IN2;

//기본 게이트 파생
nand n_gate[7:0](OUT,IN1,IN2);

//위의 것은 아래의 8개를 파생하는 것과 같음
//8개의 개별적인 nand 게이트를 생성, 각 게이트는 1비트의 OUT,IN1,IN2를 가짐
nand n_gate[0](OUT[0],IN1[0],IN2[0]);
nand n_gate[1](OUT[1],IN1[1],IN2[1]);
nand n_gate[2](OUT[2],IN1[2],IN2[2]);
nand n_gate[3](OUT[3],IN1[3],IN2[3]);
nand n_gate[4](OUT[4],IN1[4],IN2[4]);
nand n_gate[5](OUT[5],IN1[5],IN2[5]);
nand n_gate[6](OUT[6],IN1[6],IN2[6]);
nand n_gate[7](OUT[7],IN1[7],IN2[7]);
