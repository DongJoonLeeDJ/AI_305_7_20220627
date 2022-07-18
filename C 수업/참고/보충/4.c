#include<stdio.h>
int main()
{
	//3으로 나눴을 때 나머지가 0,1,2인 경우...
	//경우의수가 3개... 3으로 나눴을 때 나머지가 혹시
	//0,1,2 중 하나가 아닌 경우엔 default라는 경우로 둔다.

	int n;
	scanf_s("%d", &n);
	switch (n%3)
	{
	case 0:
		printf("가위");
		break;
	case 1:
		printf("바위");
		break;
	case 2:
		printf("보");
		break;
	default:
		printf("모르겠다.");
		break;
	}
	return 0;
}