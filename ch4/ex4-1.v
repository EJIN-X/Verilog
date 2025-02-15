//한 파일에 여러 모듈 정의해도 됨
/*!
# SR Latch Circuit
![SR Latch Circuit](./img/SRlatch.png)
*/
//SR래치 모듈
module SR_latch(Q,Qbar,Sbar,Rbar);
//포트 선언
output Q,Qbar;
input Sbar,Rbar;

//출력을 먼저 적어야 함
nand n1(Q,Sbar,Qbar);
nand n2(Qbar,Rbar,Q);
end module
    
//스티뮬러스 모듈
module Top;
//wire,reg 선언
wire q,qbar;
//wire 출력과 연결
reg set,reset;
//SR래치에 invert 된 set 와 reset 신호를 공급
SR_latch m1(q,qbar,~set,~reset);

//행위적 블록, initial
initial
begin
    $monitor($time,"set = %b,reset=%b,q=%b\n",set,reset,q);
    set=0;reset=0;
    #5 reset =1;
    #5 reset=0;
    #5 set=1;
end
end module