#include<stdio.h>
struct Student
{
	int num;
	char name[100];
}typedef Student; //���۱��� �빮�� �ϱ�
void printStudent(Student s)
{
	printf("%d�� �л� %s\n", s.num, s.name);
}
int main()
{
	Student s = { .name = "������", .num = 1 };
	printStudent(s);

	Student students[3];
	

	for (int i = 0; i < 3; i++)
	{
		int temp;
		printf("�л��� ��ȣ?\n");
		scanf_s("%d", &temp);
		int duplicate = 0;

		for (int j = 0; j < i; j++)
		{
			if (students[j].num == temp)
			{
				printf("�ߺ���ȣ!\n");
				i--;
				duplicate = 1;
				break;
			}
		}
		if (duplicate == 0)
		{
			students[i].num = temp;
			printf("�̸���?\n");
			rewind(stdin);
			gets(students[i].name);
		}
	}

	for (int i = 0; i < 3; i++)
		printStudent(students[i]);

	return 0;
}