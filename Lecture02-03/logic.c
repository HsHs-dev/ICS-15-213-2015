#include <stdio.h>

int main() {

    // anything but 0x00 is 'True'
    printf("%x\n", 0x41);
    printf("%x\n", !0x41); // 0x41 -> 0x00
    printf("%x\n", !!0x41); // 0x41 -> 0x00 -> 0x01

    return 0;
}
