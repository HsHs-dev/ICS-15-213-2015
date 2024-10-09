#include <stdlib.h>

#define ZLEN 5
typedef int zip_dig[ZLEN];

#define UCOUNT 3

int get_digit(zip_dig z, int digit);
void zincr(zip_dig z);

int main()
{

	zip_dig cmu = {1, 5, 2, 1, 3};
	zip_dig mit = {0, 2, 1, 3, 9};
	zip_dig ucb = {9, 4, 7, 2, 0};


	int *univ[UCOUNT] = {cmu, mit, ucb};

	return 0;

}


int get_digit(zip_dig z, int digit) { return z[digit]; }

void zincr(zip_dig z) {
    size_t i;
    for (i = 0; i < ZLEN; i++)
        z[i]++;
}
