#include <stdio.h>
#include <string.h>

void kill_canary(char *str) {
    unsigned int val;
    char buf[16] = {0};

    printf("  [+] val=%x\n", val);
    memcpy(buf, str, 1000);
    printf("  [+] val=%x\n", val);
}

int main () {
        char buf[1000] = {0};
        kill_canary(buf);
        return 0;
}
