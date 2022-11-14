#include<stdio.h>
//반환형(리턴값)도 없고
//매개변수(파라메터)도 없는 형태
void greenChar()
{
	system("color 0a");
}
void changeColor(char a, char b)
{
	//color[1024] 이렇게 써도 됨...
	char color[9] = "color ";
	//[0] = 'c', [1] = 'o', [2] = 'l'
	//[3] = 'o', [4] = 'r', [5] = ' '
	//[6]번째와 [7]번째에 글자를 넣고
	//끝에 NULL을 넣으면 됨
	//끝에 NULL 넣어주지 않으면 문자열로서
	//인식이 안 된다.
	color[6] = a;
	color[7] = b;
	color[8] = NULL;//'\0';
	system(color);
}
int main()
{
	//system("color 0a");
	greenChar();
	printf("첫번째 문자 입력");
	char a;// = getchar();
	scanf_s("%c", &a, 1);
	rewind(stdin);
	printf("두번째 문자 입력");
	char b;//; = getchar();
	scanf_s("%c", &b, 1);
	changeColor(a, b);
	return 0;
}