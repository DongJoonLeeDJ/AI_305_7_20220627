#include <stdio.h>


void enterKey() {
	printf("\n");
}

int inputNum() {
	int n;
	printf("숫자 또는 승수를 입력\n");
	scanf_s("%d", &n);
	return n;
}


void printNumber(int n) {
	printf("%d\n", n);
}

int powerNum(int n, int p) {
	int sum = 1;
	if (p <= 0) {
		return 1;
	}
	else if (p == 1) {
		return n;
	}
	else {
		for (int i = 0; i < p; i++) {
			sum = n*sum;
			
		}
		return sum;
	}
	
}


int main() {
	
	int num = inputNum();

	printNumber(num);
	enterKey();
	
	printNumber(powerNum(num, inputNum()));

	enterKey();
	enterKey();

	printNumber(powerNum(inputNum(), inputNum()));

	return 0;

}