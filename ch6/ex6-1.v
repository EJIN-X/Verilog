//연속 할당문 out, i1,i2 는 net임
//& 는 And 연산
assign out =i1&i2;
//벡터 넷 연속 할당문 addr 는 16-비트 벡너 넷임
//addr1과 addr2는 16-비트 벡터 레지스터
//^ 는 XOR 연산
assign addr[15:0] = addr1_bits[15:0] ^ addr2_bits[15:0];

//결합 왼쪽은 스칼라 넷과 벡터 넷의 결합
assign {c_out,sum[3:0]} = a[3:0] +b[3:0] + c_in;

---------------------------------------------
//일반적인 연속 할당문
wire out;
assign out =in1&in2;
//위처럼 wire로 먼저 선언 한 다음에 assign을 통해 값을 할당해줌
//한 줄로 표현하려면 아래와 같음
wire out = in1&in2;