#include<stdio.h>
int main()
{
	printf("�� ���ΰ���?(1��)");
	int sec;
	scanf_s("%d", &sec);
	//123->2��3��
	//���� ���� �� ������(/),
	//�ʸ� ���� �� ������(%)

	printf("%d�� %d��\n", sec/60, sec%60);

	printf("2x+b�� �� ���ϱ�(2��)\n");
	printf("x��?");
	int x, b;//���� ���� x�� b ����
	scanf_s("%d", &x);
	printf("b��?");
	scanf_s("%d", &b);
	printf("2x+b=%d\n", (2 * x) + b);

	//3��
	//�������, mbti, ������, Ű, ���� �Է¹ް�
	//����ϱ�

	printf("�����?");
	rewind(stdin);//char �Է¹ޱ� ���̹Ƿ� rewind
	//char feel = getchar();
	char feel;
	scanf_s("%c", &feel, 1);
	printf("mbti?");
	rewind(stdin);
	char mbti[5];
	scanf_s("%s", mbti, sizeof(mbti));
	printf("������?");
	rewind(stdin);
	char bType[10];
	gets(bType);

	//double Ÿ�� ������ ����
	//���� �� lf�� �ϱ�
	//��µ�... lf�� �ϼ���(������)
	//����� f�� �ص� �Ǳ� �ѵ�...
	//double Ÿ���� long float�̹Ƿ�
	//lf�� �´�.
	//f�� �ϰ��ǰ� ���� �ʹٸ�
	//float�� �ϸ� �ȴ�.
	//�ٵ� ��������� �Ǽ��� double��
	double cm;
	printf("Ű��?");
	scanf_s("%lf", &cm);

	printf("���̴�?");
	int age;
	scanf_s("%d", &age);

	printf("���� ����� %c�Դϴ�. �� mbti�� %s�̰�, �������� %s�Դϴ�. �� Ű�� %.2lf�̸�, ���̴� %d���Դϴ�.\n",
		feel,mbti,bType,cm,age);


	return 0;
}