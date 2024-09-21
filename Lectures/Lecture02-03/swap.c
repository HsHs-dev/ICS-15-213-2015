#include <stdio.h>

void swap(int *x, int *y);

int main(void) {
  int x = 5;
  int y = 9;

  swap(&x, &y);

  printf("x = %d\ny = %d\n", x, y);

  return 0;
}

void swap(int *x, int *y) {
  *y = *x ^ *y; /* Step 1 */
  *x = *x ^ *y; /* Step 2 */
  *y = *x ^ *y; /* Step 3 */
}
