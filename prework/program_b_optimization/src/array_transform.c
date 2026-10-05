#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#ifndef SCALE
#define SCALE 2
#endif
#ifndef THRESHOLD
#define THRESHOLD 100
#endif
#ifdef USE_RESTRICT
#define RESTRICT restrict
#else
#define RESTRICT
#endif
#ifdef DISABLE_INLINE
#define INLINE_CONTROL __attribute__((noinline))
#else
#define INLINE_CONTROL
#endif
INLINE_CONTROL static int adjust_value(int value) {
    if (value > THRESHOLD) return value - 3;
    return value;
}
static void initialize(int *a, int *b, int n) {
    for (int i = 0; i < n; ++i) { a[i] = i % 97; b[i] = i % 31; }
}
static void transform(const int *RESTRICT a, const int *RESTRICT b, int *RESTRICT c, int n) {
#ifdef USE_DEPENDENT_LOOP
    c[0] = adjust_value(a[0] * SCALE + b[0]);
    for (int i = 1; i < n; ++i) c[i] = c[i - 1] + adjust_value(a[i] * SCALE + b[i]);
#else
    for (int i = 0; i < n; ++i) c[i] = adjust_value(a[i] * SCALE + b[i]);
#endif
}
static int64_t checksum(const int *c, int n) {
    int64_t sum = 0;
    for (int i = 0; i < n; ++i) sum += c[i];
    return sum;
}
int main(int argc, char **argv) {
    int n = 1000000;
    if (argc > 1) n = atoi(argv[1]);
    if (n <= 0) return 2;
    int *a = malloc(sizeof(int) * (size_t)n);
    int *b = malloc(sizeof(int) * (size_t)n);
    int *c = malloc(sizeof(int) * (size_t)n);
    if (a == NULL || b == NULL || c == NULL) { free(a); free(b); free(c); return 3; }
    initialize(a, b, n);
    transform(a, b, c, n);
    printf("%lld\n", (long long)checksum(c, n));
    free(a); free(b); free(c);
    return 0;
}
