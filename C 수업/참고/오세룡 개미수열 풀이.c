#include <stdio.h>

int main() {

	char arr1[2048] = { NULL };

	char arr2[2048] = { NULL };

	int idx = 0;

	int cnt = 1;

	arr1[0] = '1';

	printf("1번째 : %c \n", arr1[0]);

	for (int i = 0; i < 19; i++) {

		for (int j = 0; arr1[j] != NULL; j++) {

			if (arr1[j] == arr1[j + 1]) {

				cnt++;

			}

			else {

				arr2[idx] = arr1[j];

				arr2[idx + 1] = cnt + '0';

				cnt = 1;

				idx += 2;

			}

		}
		printf("%d번째 : ", i + 2);
		for (int j = 0; j < idx; j++) {

			arr1[j] = arr2[j];

			printf("%c ", arr1[j]);

		}

		idx = 0;

		printf("\n");

	}



	return 0;

}