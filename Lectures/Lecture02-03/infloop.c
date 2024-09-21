#include <stdio.h>

int main() {

    // i is unsigned, so it can't be a negative number
    // so when you reach 0 and decrease it, it will go back up to
    // unsinged max number which is a positive number
    int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    for (unsigned i = sizeof(arr) / sizeof(arr[0]) - 1; i >= 0; i--)
        printf("arr[%d] = %d\n", i, arr[i]);

}
