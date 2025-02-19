wire OUT,IN1,IN2;

//기본적인 게이트 파생
//a1과 같은 인스턴스
and a1(OUT,IN1,IN2);
nand na1(OUT,IN1,IN2);
or or1(OUT,IN1,IN2);
nor nor1(OUT,IN1,IN2);
xor x1(OUT,IN1,IN2);
xnor nx1(OUT,IN1,IN2);

//두 개 이상의 입력 : 3개의 이력을 가진 nand 게이트
nand na1_3inp(OUT,IN1,IN2,IN3);

//인스턴스 이름이 없는 게이트 파생
and (OUT, IN1,IN2);//합법적인 게이트 파생