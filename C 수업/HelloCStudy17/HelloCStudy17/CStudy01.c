#include<stdio.h>
//1. 2D ���� ĳ���� ��ǥ �����ϴ� ����ü �����
//1���� ������ 1�� �̻��� ���� ����
struct Game2DPos
{
	int x;
	int y;
};
int main()
{
	//����ü : struct ��Ʈ��Ʈ
	//����ڰ� ���� ���� �ڷ���
	//ũ�⵵ �پ���
	//�迭�� �ٸ�
	//1���� ������ ���� ������ �Ӽ��� ����
	 
	//int, char, doubleó��
	//�տ� �� �� ���̰� �ʹ�.
	//�̰� struct �ٿ���... �� �ȴ�.
	struct Game2DPos p1 = { 10,20 };
	printf("%d\n", sizeof(p1));
	//������ : 8
	//����: 4byte�� �� ������ �� �� ����
	struct Game2DPos p2 = { .x=10,.y=20 };
	struct Game2DPos p3;
	p3.x = 10;
	p3.y = 20;
	struct Game2DPos p4;
	scanf_s("%d %d", &p4.x, &p4.y);
	printf("���ݹ����� ��ġ %d %d\n", p4.x, p4.y);
	return 0;
}