#include<stdio.h>
int main()
{
	//벌집안의 숫자   벌집 번호
	//1                1
	//2~7              2
	//8~19             3
	//20~37            4
	//36~61            5
	//1 7 19 37 61
	//max = max+(6*count)
	int input;
	scanf_s("%d", &input);
	int max = 1; //벌집번호
	int count = 0;//그룹번호
	while (1)
	{
		//그룹이 늘어나면서 최댓값 변경
		max = max + (6 * count);
		if (max < input)
		{
			count++;
			continue;
		}
		else
			printf("%d은/는 %d번 그룹\n",
				input, count+1);
		break;
	}


	return 0;
}