#include<stdio.h>
struct Student
{
	int num;
	int score;
	char name[10];
}typedef Student;
Student test()
{
	Student s;
	s.num = 50;
	s.score = 500;
	strcpy(s.name, "���¿�");
	return s;
}
int main()
{
	Student s1 = { 1,50 };
	Student s2 = { .num=2,60 };
	Student s3;
	s3.num = 3;
	s3.score = 70;

	printf("%d %d %s\n", test().num, test().score, test().name);

	//����ü �ϱ� ���� ����

	//�л����� ���α׷��� ���� ��
	//�л� 1��� �ش� �л��� ��ȣ, �׸��� ������
	//�ִٰ� �غ���.

	//�׷� �л��� 3���� �ִٸ� ��� �����ؾ��ұ�?
	//����ü�� �𸥴ٸ� �̷��� ������ ���̴�.

	//1. ������ �׸�ŭ �����.
	int stu1 = 1;
	int stu2 = 2;
	int stu3 = 3;
	int stu1_score = 50;
	int stu2_score = 60;
	int stu3_score = 70;

	//�̷��� �ϸ� ����
	//1. �л��� ���� ���� �� ���� ���α׷� �����ؾ� ��
	//2. �Ǽ��� ��ȣ�� �ְų� ������ ���� �� �ִ�.
	//3. �׸��� ���� �߰��Ǹ� ���� �� ������ ��
	// 
	//2. �迭�� �������� �����.(��ȣ �迭, ���� �迭)
	int stu[3];
	int stu_score[3];
	stu[0] = 1;
	stu[1] = 2;
	stu[2] = 3;
	stu_score[0] = 50;
	stu_score[1] = 60;
	stu_score[2] = 70;

	//1. �л��� ���λ���� �� �迭���� ĭ�� �÷��� ��
	//realloc ��� ��
	//2. ���������� ���� ������ �� �ִ�.(��ȣ�� �ְų� ������ �ֱ�)
	//3. �׸��� ���� �߰��Ǹ� ���� �� ������ ��

}