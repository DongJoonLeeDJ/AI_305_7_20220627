#include<stdio.h>
int main()
{
	//input에 NULL값으로 모두 채움
	char input[1024] = { NULL, };
	//그렇다고 char input[1024] = { 1, };
	//이렇게 적었을 때 모두 1이 들어가지 않음.//첫번째칸만 1들어감
	printf("문자열을 입력해주세요");
	gets(input);
	int charAlpha[26] = { 0 }; //전부 0으로 채운다.
	//안 적으면 쓰레기값 들어가있음
	//각 스펠링의 개수는 의미. [0]에 10있으면 a가 10개
	//[3]에 5가 있으면 d가 5개 있는 것
	for (int i = 0; input[i] != NULL; i++)
	{
		//소문자로 전부 통일 작업
		if (input[i] >= 'A' && input[i] <= 'Z')
		{
			input[i] += ('a' - 'A');
		}
		//소문자 a보다 작거나 소문자 z보다 큰 경우
		//a~z 사이의 범위 벗어남(대문자는 이미 변환 작업 함)
		if(input[i] <'a' || input[i] >'z')
		{
			if (input[i] == ' ')
				continue; //continue만 적고 다른 거 지우면
						  //프로그램은 종료 안 되고
						  //a~z까지만 숫자를 센다.

			printf("종료\n");
			return 0; //프로그램을 종료시켜버림
			//break를 해도 상관은 없다.
			//그럴 경우엔 또 다른 변수를 만든다.
		}
		else //a~z인 경우 //그 다음에 개수를 센다.
		{
			charAlpha[input[i] - 'a']++;
		}
	}

	for (int i = 0; i < 26; i++)
	{
		if (charAlpha[i] != 0)
			printf(" '%c'는 %d글자입니다.\n", 
				'a' + i, charAlpha[i]);
		//i = 0
		//'a'+0 = 'a'
		//i=1
		//'a'+1 = 'b'
	}
	
	
	return 0;
}