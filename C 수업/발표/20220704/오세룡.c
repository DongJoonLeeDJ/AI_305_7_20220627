#include <stdio.h>
int main() {
		// 1
		int n;
		printf("입력 : ");
		scanf_s("%d", &n);
		printf("%d!=%d", n, n);
		while (n > 1) {
			n--;
			printf("X%d", n);
		}
		printf("\n");

		// 2
		int m;
		int sum = 0;
		printf("입력(n m) : ");
		scanf_s("%d %d", &n, &m);
		if (n > m) {
			int temp = m;
			m = n;
			n = temp;
		}
		for (int i = n; i <= m; i++) {
			sum += i;
		}
		printf("합 : %d\n", sum);

		// 3
		printf("입력(n m) : ");
		scanf_s("%d %d", &n, &m);
		if (n > m) {
			int temp = m;
			m = n;
			n = temp;
		}
		sum = 0;
		for (int i = n; i <= m; i++) {
			if (i % 2 != 0) {
				continue;
			}
			sum += i;
		}
		printf("n부터 m까지 짝수의 합 : %d\n", sum);

		// 4
		while (1) {
			printf("숫자 입력 : ");
			scanf_s("%d", &n);
			if (n == 0) {
				printf("종료\n");
				break;
			}
			printf("%d의 제곱 = %d\n", n, n * n);
		}
	
	// 5
	printf("입력 : ");
	scanf_s("%d", &n);

	if (n == 1) {
		printf("*\n");
	}
	else if (n > 0) {
		for (int i = 0; i < n * 2; i++) {
			for (int j = 0; j < n; j++) {
				if (j % 2 == 0) {
					if (i % 2 == 0) {
						printf("*");
					}
					else {
						printf(" ");
					}
				}
				else {
					if (i % 2 == 0) {
						printf(" ");
					}
					else {
						printf("*");
					}
				}
			}
			printf("\n");
		}
	}
	else {
		printf("0보다 작은 수\n");
	}


	return 0;
}