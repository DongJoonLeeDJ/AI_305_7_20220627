#include<stdio.h>
int main()
{
	int num[5];

	for (int i = 0; i < 5; i++)
	{
		int n;
		int isduplicate = 0;
		scanf_s("%d", &n);
		for (int j = 0; j < i; j++)
		{
			if (n == num[j])
			{
				printf("ม฿บน\n");
				i--;
				isduplicate = 1;
				break;
			}
		}
		if(isduplicate==0)
			num[i] = n;
	}

	return 0;
}