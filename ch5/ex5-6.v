//멀티플렉서 스티뮬러스
//스티뮬러스 모듈을 정의
module stimulus;
//입력으로 연결되는 변수들을 정의
reg IN0,IN1,IN2,IN3;
reg S1,S0;

//출력 wire의 선언 ... tb 입장에서는 설계 모듈의 출력은 입력이어서 wire 선언
wire OUTPUT;

//멀티플렉서의 파생
mux4_to_1 mymux(OUPUT,IN0,IN1,IN2,IN3,S1,So);

//입력 스티뮬러스 생성. 스티뮬러스 모듈 정의
initial begin
    //입력 라인을 셋
    IN0=1; IN1=0; IN2=1; IN3=0;
    #1 $display("IN0=%b,IN1=%b,IN2=%b,IN3=%b\n",IN0,IN1,IN2,IN3);
    //IN0를 선택
    S1=0; S0=0;
    #1 $display("S1=%b,s0=%b,OUTPUT=%b\n",S1,S0,OUTPUT);
    //IN1를 선택
    S1=0; S0=0;
    #1 $display("S1=%b,s0=%b,OUTPUT=%b\n",S1,S0,OUTPUT);
    //IN2를 선택
    S1=1;S0=0;
    #1 $display("S1=%b,s0=%b,OUTPUT=%b\n",S1,S0,OUTPUT);
    //IN3를 선택
    S1=1;S0=0;
    #1 $display("S1=%b,s0=%b,OUTPUT=%b\n",S1,S0,OUTPUT);
end
endmodule
//포트의 연결 순서로 대응되는 것.