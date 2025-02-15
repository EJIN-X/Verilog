//$display는 변수의 값 또는 문자열 또는 수식을 출력하기 위한 주요 시스템 테스크
//$display(p1,p2,...)
$display("Hello Verilog World");
//Hello Verilog World
$display($time);
//230..현재 시뮬레이션 시간
//41비트 virtual address 값, 시간 출력하려면
reg virtual_addr[40:0]
$display("%d, %h",$time,virtual_addr);
//port_id 값 5를 2진수로 출력
reg [4:0] port_id;
$display("%b",port_id);
