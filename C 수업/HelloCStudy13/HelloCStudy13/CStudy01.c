#include<stdio.h>
struct Student
{
	char name[100]; //�л� �̸�
	int number; //�л� ��ȣ
}typedef Student;
int main()
{
	Student s1 = { .number = 1, .name = "������" };
	printf("%s %d\n", s1.name, s1.number);
	Student ss[3];
	ss[0] = (Student){.number = 2, .name = "������"};
	printf("%s %d\n", ss[0].name, ss[0].number);
	printf("�л��� �̸���?");
	gets(ss[1].name);
	printf("�л��� ��ȣ��?");
	scanf_s("%d", &ss[1].number);
	ss[2].number = 10;
	strcpy(ss[2].name, "��ȣ��");
	printf("%s %d\n", ss[1].name, ss[1].number);
	printf("%s %d\n", ss[2].name, ss[2].number);
}