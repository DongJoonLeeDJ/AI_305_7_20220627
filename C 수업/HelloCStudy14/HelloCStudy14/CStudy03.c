#include<stdio.h>
void swap(int* a, int* b, int* c)
{
	int temp = *a;
	*a = *b;
	*b = *c;
	*c = temp;
}
int main()
{
	int aa, bb, cc;
	int aa2, bb2, cc2;
	scanf_s("%d %d %d", &aa, &bb, &cc);
	aa2 = aa;
	bb2 = bb;
	cc2 = cc;
	printf("%d %d %d\n", aa, bb, cc);
	swap(&aa, &bb, &cc);
	printf("%d %d %d\n", aa, bb, cc);

	//�������� �غ���
	swap(&aa, &bb, &cc); //������ �����غ���
	swap(&aa, &bb, &cc);
	printf("%d %d %d\n", aa, bb, cc);

	//do while�� �� �� ��쿣
	//�� �� �������� �����ϰ� ����
	//�� ������ �ݺ������� ���������� ���ƿ� ���θ�
	//üũ ����
	//do while�� �� ����
	//ó���� �翬�� aa,bb,cc�� aa2,bb2,cc2�� ����
	//�Ȱ���.
	//�׷��� �׳� while���� �ٷ� ����
	//������ do-while�� ���� while ������ ���
	//������ �� ���� ������
	//�׸��� �� �������� ���ǿ� ���� �ݺ����� ����.
	do
	{
		swap(&aa, &bb, &cc);
		printf("aa=%d bb=%d cc=%d\n", aa, bb, cc);
	} while (aa2 != aa);// && bb2!=bb && cc2!=cc);
	printf("%d %d %d\n", aa, bb, cc);


	return 0;
}