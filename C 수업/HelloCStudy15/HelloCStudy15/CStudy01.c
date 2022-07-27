//1. 태어난 월(month)를 입력받고
//1. 계절을 출력하는 코드 main에 작성
//12, 1, 2 - 겨울
//3, 4, 5 - 봄
//6, 7, 8 - 여름
//9, 10, 11 - 가을
//그 외 - 잘못됨

#include<stdio.h>
int main()
{
	int month;
	printf("q1 태어난 월을 입력하세요.");
	scanf_s("%d", &month);
	switch (month)
	{
		case 12:
			month = 6; //case 2까지 간 뒤 break하고 끝
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
	return 0;
}