//1. ���� �¾ ������ �Ű������� �ް� ����������
//���ڿ��� �����ϼ���.
#include<stdio.h>
char* outputThee(int year)
{
	switch (year % 12)
	{
	case 0:
		return "������";
	case 1:
		return "��";
	case 2:
		return "��";
	case 3:
		return "����";
	case 4:
		return "��";
	case 5:
		return "��";
	case 6:
		return "ȣ����";
	case 7:
		return "�䳢";
	case 8:
		return "��";
	case 9:
		return "��";
	case 10:
		return "��";
	case 11:
		return "��";
	default:
		return "����";
	}
}
char* moreEasyThee(int year)
{
	year %= 12;
	//2�����迭����.
	char thees[12][10]
		= { "������","��","��","����",
	"��","��","ȣ����","�䳢",
	"��","��","��","��" };
	return thees[year];
}
int main()
{
	int year;
	printf("�����ΰ���");
	scanf_s("%d", &year);
	printf("%s\n", outputThee(year));
	printf("%s\n", moreEasyThee(year));
	return 0;
}