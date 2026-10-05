#include <stdio.h>
int getint(void) { int value = 0; return scanf("%d", &value) == 1 ? value : 0; }
void putint(int value) { printf("%d\n", value); }
