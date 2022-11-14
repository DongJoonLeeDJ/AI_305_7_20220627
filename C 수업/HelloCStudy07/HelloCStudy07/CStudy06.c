#include<stdio.h>
int main()
{
	/*문자열 2개를 입력받고,
	이 2개가 같은지 다른지 여부를 출력해주세요.*/
	char sentense1[1024]; 
	char sentense2[1024];
	printf("문자열1 입력해주세요.");
	gets(sentense1);
	printf("문자열2 입력해주세요.");
	gets(sentense2);
	//for(초기변수세팅 ; 실행조건 ; 증감연산)
	//초기변수 세팅 : int i = 0;
	//실행조건 : i <10;
	//증감연산 : i++이나 i--를 넣는다.
	int i = 0; //for 바깥으로 뺌
	for (i = 0; sentense1[i] != '\0' && sentense2[i] != '\0'; i++)
	{
		if (sentense1[i] != sentense2[i])
		{
			i = -1;
			printf("이 문장은 다릅니다.\n");
			break;
		}
	}
	if (i != -1)
	{
		if (sentense1[i] == sentense2[i])
			printf("둘은 똑같다. %s %s\n", sentense1, sentense2);
		else
			printf("둘은 길이가 다릅니다.");
	}

	return 0;
}