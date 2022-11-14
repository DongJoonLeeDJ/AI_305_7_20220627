#include<stdio.h>
int main()
{
	int sugar;
	printf("º≥≈¡ ∏Ó kg?");
	scanf_s("%d", &sugar);
	int pocket = 0;
	while (1)
	{
		if (sugar % 5 == 0)
		{
			pocket += sugar / 5;
			printf("%dπ≠¿Ω\n", pocket);
			break;
		}
		sugar -= 3;
		pocket++;
		if (sugar < 0)
		{
			printf("-1\n");
			break;
		}

	}

		return 0;
}