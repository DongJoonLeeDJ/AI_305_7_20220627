#include<stdio.h>
int main()
{
	int Sugar;
	printf("���� �� kg?");
	scanf_s("%d", &Sugar);
	int pack = 0; 
	while (1)
	{
		if (Sugar % 5 == 0)
		{
			pack += Sugar / 5;
			printf("%d����\n", pack);
			break;
		}
		Sugar -= 3;
		pack++; 
		if (Sugar < 0)
		{
			printf("-1\n");
			break;
		}
	}
	return 0;	
}