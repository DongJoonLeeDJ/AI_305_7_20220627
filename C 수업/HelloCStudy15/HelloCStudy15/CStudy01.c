//1. �¾ ��(month)�� �Է¹ް�
//1. ������ ����ϴ� �ڵ� main�� �ۼ�
//12, 1, 2 - �ܿ�
//3, 4, 5 - ��
//6, 7, 8 - ����
//9, 10, 11 - ����
//�� �� - �߸���

#include<stdio.h>
int main()
{
	int month;
	printf("q1 �¾ ���� �Է��ϼ���.");
	scanf_s("%d", &month);
	switch (month)
	{
		case 12:
			month = 6; //case 2���� �� �� break�ϰ� ��
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
	return 0;
}