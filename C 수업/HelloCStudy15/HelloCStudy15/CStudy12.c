
#include<stdio.h>
/*
3. 매개변수로 태어난 월을 받고, 
그에 따른 계절을
문자열로 리턴하세요.
12 -> 겨울
-1 -> 지구아님
*/
char* season(int month)
{
	switch (month)
	{
		case 12: 	case 1: 	case 2: //원랜 이렇게 적으면 안 됨
			return "겨울";     //케이스 당 1줄씩 적는 게 좋음
		case 3:	case 4:	case 5:	
			return "봄";
		case 6:	case 7:	case 8:	
			return "여름";
		case 9:	case 10: case 11: 
			return "가을";
		default: 
			return "오류";
	}
}
//마지막 문제. 문자열 길이 구하기
int length(char* str)
{
	//문자열의 길이를 구하려면, 그 문자열이 끝날때까지 반복문을 돌림
	//영문, 숫자, 특수문자, 공백은 모두 1byte
	//근데 한글이나 한자 등은 1글자당 2byte
	//조건문 체크하기도 힘들고 예외처리가 쉽지 않다.
	//하고 싶은 사람은 한글에 대해서도 예외처리 해보세요~
	int len = 0;
	while (str[len] != '\0')
		len++;
	return len;
}

int main()
{
	printf("%s\n", season(4));
	printf("%s\n", season(-1));
	printf("%s\n", season(13));
	printf("%s\n", season(12));
	printf("%s\n", season(6));
	printf("%s\n", season(3));
	printf("%s\n", season(11));
	printf("%d\n", length("abcd1234")); //8  
	printf("%d\n", length("abcd 1234!")); //10
	return 0;
} 