int aabb = 100; //�ٸ� ���Ͽ��� �� ���� �� �� ����(extern Ű���� ����)
static int bbaa = 200;//static�� �ٸ� ���Ͽ��� �� ������

//static ���� ������ �� ����(statictest.c)������ 
//�۷ι� Ȥ�� ���÷ν� ����� ������
int myin()
{
	bbaa++;
	printf("\n\n%d\n\n", bbaa);
}