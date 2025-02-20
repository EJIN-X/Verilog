//수식의 예
a^Baddr1[20:17] + addr2[20:17]
in1 | in2
//피연산자... 상수 정수 실수 넷 레지스터 시간 특정비트 특정부분(벡터 넷이나 벡터 레지스터의 여러 비트) 메모리 함수호출 이어야 함
integer count , final_count;
final_count = count +1;//dount 는 정수 피연산자
real a,b,c;
c=a-b; // a와 b는 real형 피연산자
reg[15:0] reg1, reg2;
reg [3:0] reg_out;
reg_out=reg1[3:0]^reg2[3:0];//reg1 reg2는 부분 선택 레지스터 피연산자임

reg ret_value;
ret_value= calculate_parity(A,B);//calculate_parity 는 함수형 피연산자임
