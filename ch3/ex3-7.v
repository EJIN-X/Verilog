//컴파일러 지시어
//모든 컴파일러 지시어는 '<키워드>로 정의됨
//'define ... 텍스트 매크로를 정의하는데 사용됨

//기본 워드 크기를 텍스트 메크로로 정의
//코드 내에서 'WORD_SIZE' 사용
'define WORD_SIZE 32

//별명을 정의 'S가 나타날 때마다 $stop로 대치
'define S $stop;

//자주 사용되는 텍스트 문자열 정의
'define WORD_REG reg[31:0]
//'WORD_REG reg32;