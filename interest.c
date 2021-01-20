#include <stdio.h>

float interest(float x, float y);

int main(void) {

	float rate, P, init_amount, final_amount;
	int month, period;

	printf("your money now: ");
	scanf("%f", &init_amount);

	printf("months you gonna save in total: ");
	scanf("%i", &month);

	printf("interest rate of the bank: ");
	scanf("%f", &rate);
	rate /= 100.00;

	printf("enter the period: ");
	scanf("%i", &period);

	final_amount = init_amount;
	
	int i = 0;

	do {
		P = interest(final_amount, rate);
		printf("your interest rate is: %f.\n", P);

		for (int j = 0; j < period; j++) {
			final_amount += P;
			printf("your money in %i month: %.2f.\n", i + 1, final_amount);
			i++;

			if ( j + 1 == period)
				printf("you take your money out!\n");
		}
	} while (i < month);

	printf("initial amount: %.2f & final amount: %.2f\n", init_amount, final_amount);
	printf("net worth: %.2f\n", final_amount - init_amount);
	
	return 0;
}

float interest(float x, float y) {
	return (x * y / 365.00) * 30.00;
}
