#define _POSIX_C_SOURCE 200809L

#include <errno.h>
#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

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

#if defined(__clang__) || defined(__GNUC__)
#define NOINLINE __attribute__((noinline))
#define COMPILER_BARRIER() __asm__ volatile("" ::: "memory")
#else
#define NOINLINE
#define COMPILER_BARRIER() ((void)0)
#endif

static int parse_positive(const char *text, size_t maximum, size_t *value) {
    char *end = NULL;
    unsigned long long parsed;

    errno = 0;
    parsed = strtoull(text, &end, 10);
    if (errno != 0 || end == text || *end != '\0' || parsed == 0 || parsed > maximum) {
        return 0;
    }
    *value = (size_t)parsed;
    return 1;
}

static void initialize(int *a, int *b, size_t n) {
    for (size_t i = 0; i < n; ++i) {
        a[i] = (int)(i % 97U);
        b[i] = (int)(i % 31U);
    }
}

static int adjust_value(int value) {
    return value > THRESHOLD ? value - 3 : value;
}

static NOINLINE void transform(const int *RESTRICT a,
                               const int *RESTRICT b,
                               int *RESTRICT c,
                               size_t n) {
#ifdef _OPENMP
#pragma omp parallel for schedule(static)
#endif
    for (size_t i = 0; i < n; ++i) {
        c[i] = adjust_value(a[i] * SCALE + b[i]);
    }
}

static int64_t expected_checksum(const int *a, const int *b, size_t n) {
    int64_t sum = 0;
    for (size_t i = 0; i < n; ++i) {
        sum += adjust_value(a[i] * SCALE + b[i]);
    }
    return sum;
}

static int64_t actual_checksum(const int *c, size_t n) {
    int64_t sum = 0;
    for (size_t i = 0; i < n; ++i) {
        sum += c[i];
    }
    return sum;
}

static uint64_t elapsed_ns(struct timespec start, struct timespec end) {
    uint64_t seconds = (uint64_t)(end.tv_sec - start.tv_sec);
    int64_t nanoseconds = (int64_t)end.tv_nsec - (int64_t)start.tv_nsec;
    if (nanoseconds < 0) {
        --seconds;
        nanoseconds += 1000000000LL;
    }
    return seconds * 1000000000ULL + (uint64_t)nanoseconds;
}

int main(int argc, char **argv) {
    const size_t maximum_n = 20000000U;
    const size_t maximum_repeats = 10000U;
    size_t n = 1000000U;
    size_t repeats = 20U;

    if (argc > 1 && !parse_positive(argv[1], maximum_n, &n)) {
        return 2;
    }
    if (argc > 2 && !parse_positive(argv[2], maximum_repeats, &repeats)) {
        return 2;
    }
    if (argc > 3) {
        return 2;
    }

    int *a = malloc(sizeof(*a) * n);
    int *b = malloc(sizeof(*b) * n);
    int *c = malloc(sizeof(*c) * n);
    if (a == NULL || b == NULL || c == NULL) {
        free(a);
        free(b);
        free(c);
        return 3;
    }

    initialize(a, b, n);
    int64_t reference = expected_checksum(a, b, n);

    transform(a, b, c, n);
    struct timespec start;
    struct timespec end;
    if (clock_gettime(CLOCK_MONOTONIC, &start) != 0) {
        free(a);
        free(b);
        free(c);
        return 5;
    }
    for (size_t repeat = 0; repeat < repeats; ++repeat) {
        transform(a, b, c, n);
        COMPILER_BARRIER();
    }
    if (clock_gettime(CLOCK_MONOTONIC, &end) != 0) {
        free(a);
        free(b);
        free(c);
        return 5;
    }

    int64_t checksum = actual_checksum(c, n);
    int verified = checksum == reference;
    uint64_t total_ns = elapsed_ns(start, end);
    double ns_per_element = (double)total_ns / ((double)n * (double)repeats);

    printf("mode=independent n=%zu repeats=%zu checksum=%" PRId64
           " reference=%" PRId64 " verified=%d elapsed_ns=%" PRIu64
           " ns_per_element=%.6f\n",
           n, repeats, checksum, reference, verified, total_ns, ns_per_element);

    free(a);
    free(b);
    free(c);
    return verified ? 0 : 4;
}
