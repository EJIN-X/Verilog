//지연을 감안한 모듈 D
//D라는 간단한 조합회로 모듈 정의
module D(out,a,b,c);
//I/O 포트 선언
output out;
input a,b,c;

//내부 넷
wire e;

//회로를 설계하기 위한 프리미티브 게이트의 파생
and #(5) a1(e,a,b);//Delay of 5 on gate a1
or #(4) o1(out,e,c);//Delay of 4 on gate o1
endmodule

fasdfljasdkfsa