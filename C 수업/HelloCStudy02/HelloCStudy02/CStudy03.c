#include<stdio.h>
int main()
{
	//���� �Է� 2���� ����� ����.

	char c;
	printf("�� ����� ���� +? -? 0?\n");
	scanf_s("%c", &c, 1);
	printf("���� �� ����� %c�Դϴ�.\n", c);
	rewind(stdin); //���� ���� û��
	scanf_s("%c", &c, 1);
	printf("c = %c\n", c);
	rewind(stdin);
	printf("�� �̸��� ù���ڴ�?");
	c = getchar(); //1���ڸ� �Է¹޴� ��
	printf("%c\n", c);
	printf("�� �̸��� �����ڴ�?");
	rewind(stdin);
	c = getchar();
	printf("%c\n", c);


	//�迭�� �� �������...
	char name[100]; //name������ 100byte ���尡��
	//���ڿ� �Է¹��� �� �˳��ϰ� ���� �����ϸ� ��
	//���� �� �°� �����ϰ� �ʹٸ�
	//�Է��ϰ��� �ϴ� byte+1 ��ŭ ��������� ��
	//ex. �ѱ� 3���� �Է��� ��쿣 [7]
	//���� 10���� �Է��� ��쿣 [11]
	//java, c#, c++���� string�̶�� �ڷ�����
	//������ c�� �׷� �� ����.
	//�̰� ����� �����Ϸ��� �ϸ� �迭,�����͸�
	//��� ����� ��... �ϴ� �츰 �����ϰ�
	//�Է� �� ����ϴ� ���� �����.

	printf("�̸���?");
	scanf_s("%s", name, sizeof(name));
	printf("�� �̸��� %s�Դϴ�.\n", name);
	rewind(stdin); //���ڿ��� ����������
	//������ �� �Է¹��� �� rewind����� ��
	char mbti[100];
	printf("mbti?");
	gets(mbti); //��������� ���� ����
	//scanf_s���� space bar�� ©��
	printf("�� mbti�� %s�Դϴ�.\n", mbti);
	

	printf("������?\n");
	char bType[2];
	gets(bType);
	printf("%s", bType); //�ִ� 2���ڴϱ� [3]�� �´�.

	

	return 0;
}