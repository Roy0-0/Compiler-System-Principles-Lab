#include <stdio.h>

float getfloat(void) {
    float value = 0.0f;
    if (scanf("%f", &value) != 1) {
        return 0.0f;
    }
    return value;
}

void putfloat(float value) {
    printf("%.6f", (double)value);
}

void putch(int value) {
    putchar(value);
}
