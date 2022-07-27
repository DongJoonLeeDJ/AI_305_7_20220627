//2-1. 내가 태어난 연도를 입력 받고 
//간지를 출력하세요

#include<stdio.h>
int main()
{
	printf("몇년도에 태어났나요?");
	int year;
	scanf_s("%d", &year);
	int ganji = year % 10; //갑을병정무기경신임계
	//서기 0년
	
	int thee = year % 12;//자축인묘진사오미신유술해
	//서기 0년은 원숭이띠
	//신유술해 자축인묘 진사오미
	//경신임계갑을병정무기

	switch (ganji)
	{
	case 0:	printf("경");	break; //원래 이렇게 적으면 안 됨
	case 1:	printf("신");	break; //가독성 떨어짐
	case 2:	printf("임");	break;
	case 3:	printf("계");	break;
	case 4:	printf("갑");	break;
	case 5:	printf("을");	break;
	case 6:	printf("병");	break;
	case 7:	printf("정");	break;
	case 8:	printf("무");	break;
	case 9:	printf("기");	break;
	default:
		printf("오류!");
		break;
	}
	switch (thee)
	{
	case 0:	printf("신");	break; //원래 이렇게 적으면 안 됨
	case 1:	printf("유");	break; //가독성 떨어짐
	case 2:	printf("술");	break;
	case 3:	printf("해");	break;
	case 4:	printf("자");	break;
	case 5:	printf("축");	break;
	case 6:	printf("인");	break;
	case 7:	printf("묘");	break;
	case 8:	printf("진");	break;
	case 9:	printf("사");	break;
	case 10: printf("오");  break;
	case 11: printf("미");  break;
	default:
		printf("오류!");
		break;
	}
	
	return 0;
}