#include <stdio.h>

float interest(float x, float y);

int main(void) {

	float rate, P, init_amount, final_amount, target_amount, net_worth;
	int month, period;

	printf("your money now: ");
	scanf("%f", &init_amount);

	//printf("months you gonna save in total: ");
	//scanf("%i", &month);
	//
	printf("target amount: ");
	scanf("%f", &target_amount);

	printf("interest rate of the bank: ");
	scanf("%f", &rate);
	rate /= 100.00;

	printf("enter the period: ");
	scanf("%i", &period);

	final_amount = init_amount;
	
	int i = 0;
	month = 0;

	do {
		P = interest(final_amount, rate);
		printf("your interest rate is: %f.\n", P);

		for (int j = 0; j < period; j++) {
			final_amount += P;
			printf("your money in %i month: %.2f.\n", i + 1, final_amount);
			month++;

			if ( j + 1 == period)
				printf("you take your money out!\n");
		}

		net_worth = final_amount -  init_amount;
	} while (net_worth < target_amount);

	printf("It will take you this %i months(%.2f) to reach your target amount\n", month, month / 12.00);
	printf("initial amount: %.2f & final amount: %.2f\n", init_amount, final_amount);
	printf("net worth: %.2f\n", net_worth);
	
	return 0;
}

float interest(float x, float y) {
	return (x * y / 365.00) * 30.00;
}
