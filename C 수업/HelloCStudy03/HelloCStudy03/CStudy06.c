#include<stdio.h>
int main()
{
	//switch case �� - java, c#, js �� �Ȱ���

	//if-else if-else if-else if.... else
	//�̷��� ����� ���� ��~~~�� ���� ��
	//�װŸ� �� �� ����ϰ� ǥ���ϱ� ���ؼ�
	//������� ��
	
	//��... ��뿡 ������ �����ϴ�.
	//������ ���Ѵ븦 ǥ���� �� ����.
	//�Ǽ��� �Ǽ� ���̿� ������ ������ �� ����.
	//3.1~3.2 ���̵� ���ڰ� ���Ѱ��� �ִ� ��
	//switch case�� ����� ������ 
	//���� ���� �� �����ؾ� �ϴ� ���̹Ƿ�...
	//�Ǽ� ���� �������� ����� �Ұ�����.

	//���� ���� ��(=����� �� 3��)
	//���� 0 - ����
	//���� 1 - ����
	//���� 2 - ��

	int rcp = 0;//����

	if (rcp == 0)
		printf("����");
	else if (rcp == 1)
		printf("����");
	else if (rcp == 2)
		printf("��");
	else
		printf("��Ÿ");

	int rcp2 = 1;//����

	//���� ����������
	//rcp = 300%3;
	//rcp2 = 100%3;
	switch (rcp)
	{
	case 0:
		printf("\n����");
		switch (rcp2)
		{
		case 0:
			printf("\n���\n");
			break;
		case 1:
			printf("\n�̱�\n");
			break;
		case 2:
			printf("\n��\n");
			break;
		default:
			break;
		}
		break; //break ������ �ؿ��� üũ���� �ʰ� switch�� ����
	case 1:
		printf("\n����");
		break;
	case 2:
		printf("\n��");
		break;
	default:
		printf("\n��Ÿ");
		break;
	}

	//break;�� ������ swtich���� ����
	//break�� ������ ������ switch���� �� ������ ���� ����� ����
	//��� ����.

	int dice = 5;

	//2,4,6 - ¦����
	//1,3,5 - Ȧ����
	dice = 2;
	switch (dice)
	{
	case 1:
	case 3:
	case 5:
		printf("Ȧ����!!!"); //1,3,5�� ��쿣 �Ȱ��� �� ���
		break;
	case 2:
	case 4:
	case 6:
		printf("¦����!!");
	default:
		printf("2,4,6�� �ϳ� �Է½� �� �κе� ���� �����");
		break;
	}


	return 0;
}