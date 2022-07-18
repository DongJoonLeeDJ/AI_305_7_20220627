#include<stdio.h>
int main()
{
	char ch;
	double hakjeom;
	scanf_s("%lf", &hakjeom);
	if (hakjeom < 0)
		ch = '-';
	else if (hakjeom < 2.0)
		ch = 'C';
	else if (hakjeom < 4.0)
		ch = 'B';
	else if (hakjeom < 4.5)
		ch = 'A';
	else if (hakjeom == 4.5)
		ch = 'S';
	else
		ch = '+';

	printf("%c", ch);

	return 0;
}