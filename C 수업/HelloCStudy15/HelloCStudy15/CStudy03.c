//3. 매개변수를 통해서 계절 출력하는 함수
#include<stdio.h>
void printseason(int month)
{
	switch (month)
	{
		case 12:
		case 1:
		case 2:
			printf("Winter is coming\n");
			break;
		case 3:
		case 4:
		case 5:
			printf("Spring\n");
			break;
		case 6:
		case 7:
		case 8:
			printf("Daegu is coming\n");
			break;
		case 9:
		case 10:
		case 11:
			printf("가을. 프로토스의 계절\n");
			break;

		default:
			printf("오류!\n");
			break;
	}
}
int main()
{
	int m;
	printf("q3 태어난 월을 입력하세요.");
	scanf_s("%d", &m);
	printseason(m);
	return 0;
}