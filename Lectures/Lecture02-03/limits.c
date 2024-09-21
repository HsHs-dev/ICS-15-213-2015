#include <stdio.h>
#include <limits.h>

int main() {

    unsigned long UlongMax = ULONG_MAX;
    long max = LONG_MAX;
    long min = LONG_MIN;

    printf("unsigned long max = %lu\n", UlongMax);
    printf("long max = %ld\n", max);
    printf("long min = %ld\n", min);

    printf("%ld", LONG_MIN * -1);


    return 0;
}
