//3. �Ű������� ���ؼ� ���� ����ϴ� �Լ�
#include<stdio.h>
void printseason(int month)
{
	switch (month)
	{
		case 12:
		case 1:
		case 2:
			printf("Winter is coming\n");
			break;
		case 3:
		case 4:
		case 5:
			printf("Spring\n");
			break;
		case 6:
		case 7:
		case 8:
			printf("Daegu is coming\n");
			break;
		case 9:
		case 10:
		case 11:
			printf("����. �����佺�� ����\n");
			break;

		default:
			printf("����!\n");
			break;
	}
}
int main()
{
	int m;
	printf("q3 �¾ ���� �Է��ϼ���.");
	scanf_s("%d", &m);
	printseason(m);
	return 0;
}