#include<stdio.h>
//������ ����
//��������(�۷ι� ����)
//��������(�߰�ȣ �ȿ� �ִ� ����, �Ű�����)
//��������
//����� ���������� ���������� �ְ� ���������� �ִ�.
//���������� �Լ� �ٱ��� �����Ѵ�.
int g=0;
static int s1 = 0; //static Ű���尡 ����(���� ����)

void upNum(int a, int b)//a,b �Ű�����
{						//�Ű����� = ��������
						//�� �Լ� ������ �����
	static int s2 = 0;  //�׷� static�� ���� �� ���?
	a++;
	b++;
	s2++;
	g++;
	printf("%d %d %d %d\n", a, b, g, s2);
}
int main()
{
	//���������� �Լ��� �߰�ȣ �ȿ� ������
	int num=10;
	if (num > 0)
	{
		int n = 100;          //���� n�� num�� ������߸� ������
		upNum(num, n);
		upNum(num, n);
		upNum(num, n);
		printf("n=%d, num=%d\n", n, num);
	}
	g++;                      //���������� �Լ� ��𿡼����� �� �� �ִ�.
	printf("g=%d\n", g);
	//upNum(num, n); //���� n�� if�� �ȿ����� ��
	//printf("n=%d, num=%d\n", n, num);
	return 0;
}