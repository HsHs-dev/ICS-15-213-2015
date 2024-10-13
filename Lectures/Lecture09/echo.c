#include <stdio.h>


void echo();
void call_echo();


int main (int argc, char *argv[]) {

    call_echo();

}


void echo()
{
    char buf[4];
    gets(buf);
    puts(buf);
}

void call_echo() { echo(); }
