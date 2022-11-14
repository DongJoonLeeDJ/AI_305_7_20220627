#include<stdio.h>
#define MAX 1024 //매크로 상수 선언
//이걸로 배열의 크기 정할 수 있다.
//단, 변수로는 크기 지정 안 됨
//하려면 malloc, calloc 이런 거 써야 함
int main()
{
	char input[MAX] = { NULL };
	printf("문장입력해요");
	gets(input);
	int charAlpha[26] = { 0 };
	for (int i = 0; input[i] != NULL; i++)
	{
		if (input[i] >= 'A' && input[i] <= 'Z')
			input[i] += ('a' - 'A');
		if (input[i] < 'a' || input[i]>'z')
			continue;//영문자만 센다 나머진 스킵
		else
		{
			if (charAlpha[input[i] - 'a'] == 0)//최초등장시
				charAlpha[input[i] - 'a'] = i + 1;
			//첫번째 등장시 0이 아닌 1 넣어야 하므로
			//항상 i+1을 넣는다.
		}

	}

	for (int i = 0; i < 26; i++)
	{
		if (charAlpha[i] != 0)
			printf("%c는 %d번째 최초 등장\n", 
				'a'+i, charAlpha[i]);
	}

	return 0;
}