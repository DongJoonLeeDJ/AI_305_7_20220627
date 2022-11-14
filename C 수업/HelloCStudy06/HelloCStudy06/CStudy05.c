#include<stdio.h>
int main()
{
	char c = 'A';
	char* ptr_c = &c; //ptr_c는 글자A를 저장하는
	//변수 c의 위치를 저장
	char* name = "김보규";
	//"김보규"라는 글자(=7byte)를 저장하는
	//메모리의 위치를 가리킴
	//쌍따옴표(") 안에 문장 적으면
	//NULL(\0)까지 포함한 용량이 할당됨


	//ptr_c에서 이상한 값이 나오는 이유
	//ptr_c는 글자A를 저장하는 c를 가리키지만
	//컴퓨터 메모리에 c 다음에 NULL이 올지
	//안올지 모름
	//그래서 %s는 NULL값 올 때까지 다 출력해버림

	//name은 "김보규"를 가리키고
	//이 "김보규"에는 \0(NULL)이 들어 있어서
	//김보규만 출력함
	//%s로 출력할 때 끝에 NULL이 값이 있어야
	//그 문장의 끝을 알 수 있다.
	printf("%c %s %s", c, ptr_c, name);

	char myname[100] = "노민영";
	//myname은 99byte 문자를 저장할 수 있는 데
	//"노민영" 이렇게 적으면
	//노민영+\0가 자동으로 저장된 거임
	printf("%s", myname);
	return 0;
}