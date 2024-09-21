#include <stdio.h>

int main() {

    int x = -32768;
    unsigned int y = x;

    printf("y = %u\n", y);

    // -1 > 0U
    // because unsigned -1 is actually 2^wordSize // try 1 1 1 1 1
    printf("%d\n", (-1 > 0U));

    return 0;
}
