#include<stdio.h>
int main()
{
	//1�� ���� 
	printf("\n���̴� ?\n");
	int age;
	scanf_s("%d", &age);

	if (age >= 0 && age <= 9)
		printf("��������");
	else if (age < 0)
		printf("����");
	else
	{
		if ( age<20 && age>=10 )
			printf("�޽ĸԴ� ģ����");
		else if (age>=20 && age<30)
			printf("û��");
		else if (age>=30 && age<40)
		    printf("���߷�");
		else if (age>=40 && age<50)
			printf("������");
		else
			printf("������");
	
	}


	
	// 2������
	// ������ �Է¹ް� �׿� ���� ��� ����ϱ�

	printf("\n���� ������?\n");
    double score;
	scanf_s("%f", &score);

	if (score < 1.0)
		printf("����");
	else if (score > 4.5)
		printf("����");
	
	



		



















	return 0;
}