//문자열의 각 문자는 1바이트임. 
//만약 레지스터 폭 > 문자열 크기 ... 문자열의 왼쪽 비트들 0으로
//레지스터 폭 < 문자열 크기 ... 문자열의 왼쪽 비트 무시함 ... 그래서 약간 크게 하는게 안전
reg[8*18:1] string_value;
//18byte의 변수 폭을 갖게 설정
initial begin
    string_value = "Hello Verilog World";
end