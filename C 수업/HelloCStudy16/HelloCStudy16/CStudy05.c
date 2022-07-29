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
	strcpy(s.name, "장태연");
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

	//구조체 하기 전에 고찰

	//학생관리 프로그램이 있을 때
	//학생 1명당 해당 학생의 번호, 그리고 점수가
	//있다고 해보자.

	//그런 학생이 3명이 있다면 어떻게 관리해야할까?
	//구조체를 모른다면 이렇게 관리할 것이다.

	//1. 변수를 그만큼 만든다.
	int stu1 = 1;
	int stu2 = 2;
	int stu3 = 3;
	int stu1_score = 50;
	int stu2_score = 60;
	int stu3_score = 70;

	//이렇게 하면 단점
	//1. 학생이 새로 생길 때 마다 프로그램 수정해야 함
	//2. 실수로 번호만 넣거나 점수만 넣을 수 있다.
	//3. 항목이 새로 추가되면 변수 또 만들어야 함
	// 
	//2. 배열을 종류별로 만든다.(번호 배열, 성적 배열)
	int stu[3];
	int stu_score[3];
	stu[0] = 1;
	stu[1] = 2;
	stu[2] = 3;
	stu_score[0] = 50;
	stu_score[1] = 60;
	stu_score[2] = 70;

	//1. 학생이 새로생기면 각 배열들의 칸을 늘려야 됨
	//realloc 써야 함
	//2. 마찬가지로 값이 누락될 수 있다.(번호만 넣거나 점수만 넣기)
	//3. 항목이 새로 추가되면 변수 또 만들어야 함

}