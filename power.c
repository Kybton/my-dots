#include <stdio.h>

int main(void) {
	long int a;
	int x;

	for (int i = 2; i < 6; i++) {
		x = 2 ^ i;
		printf("x: %i\n", x);
	}
}
