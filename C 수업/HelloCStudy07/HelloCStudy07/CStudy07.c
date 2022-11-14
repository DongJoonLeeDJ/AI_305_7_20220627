#include<stdio.h>
int main()
{
	//1. 입력한 문자열 중 영어는 
	//대문자로 바꿀 것
	printf("첫 번째 문장 입력해요.");
	char s1[1024];
	char s2[1024];
	gets(s1);
	int diff = 'a' - 'A';//대소문자간의 차이 구해놓기
	for (int i = 0; s1[i] != NULL; i++)
	{
		//a~z까지의 값인 경우
		if (s1[i] >= 'a' && s1[i] <= 'z')
		{
			s1[i] -= diff;
		}
	}
	printf("1. %s\n", s1);



	for (int i = 0; s1[i] != NULL; i++)
	{
		//A~Z까지의 값인 경우
		if (s1[i] >= 'A' && s1[i] <= 'Z')
		{
			s1[i] += diff;
		}
	}
	printf("2. %s\n", s1);



	////////////////////////////////



	printf("문장 다시 입력해보세요.");
	gets(s2);
	for (int i = 0; s2[i] != '\0'; i++)
	{
		if (s2[i] >= 'A' && s2[i] <= 'Z')
			s2[i] += diff; //소문자로 변환
		else if (s2[i] >= 'a' && s2[i] <= 'z')
			s2[i] -= diff;//대문자로 변환
	}
	printf("%s\n", s2);








	char r[1024]; //뒤집힌 거 저장하기
	int index = 0;
	int count = 0;
	while (s2[index] != NULL)
		index++;
	//index가 s2의 문장 끝(=NULL)을 가리키면 끝남

	//index-1 : NULL 바로 앞. 즉 문장의 끝
	//abc 입력하면 abc'\0' 이렇게 되는 데...
	//index-1이면 c를 가리킴.

	//i-- 하면서 첫번째 글자까지 읽어들임
	//count는 r배열의 인덱스
	//s2에 있는 글자를 뒷부분부터 가져와야 하는 데
	//r배열의 앞부분부터 채워야 함
	for (int i = index - 1; i >= 0; i--, count++)
	{
		printf(" %c ", s2[i]);//거꾸로된거출력
		r[count] = s2[i];//거꾸로 된 거 쌓기
	}
	r[count] = NULL;//최종적으로 마지막에 NULL
	printf("\n%s\n", r);

	return 0;
}