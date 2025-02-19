//지연 명세의 형태
//모든 변화에 대한 지연
and #(delay_time) a1(out , i1,i2);

//상승과 하강 지연 명세
and #(rise_val,fall_val) a2(out,i1,i2);

//지연 명세 예시
//턴오프 연은은 하이 임피던스 값으로 게이트 출력이 변화하는 것과 관계가 있음
and #(5) a1(out, i1,i2); //모든 변화에 대한 5 단위 시간 지연
and #(4,6) a2(out, i1,i2); // 상승 =4, 하강 =6 (턴오프=4... 4,6 중 작은거)
bufif0 #(3,4,5) b1 (out, in ,control); //상승=3 , 하강 =4, 턴오프=5