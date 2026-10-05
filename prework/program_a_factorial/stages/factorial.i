# 1 "/home/roy/compiler-lab/prework/program_a_factorial/src/factorial.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 360 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/roy/compiler-lab/prework/program_a_factorial/src/factorial.c" 2
int getint(void);
void putint(int value);

int factorial(int n) {
    int i;
    int result;
    if (n < 0 || n > 12) return -1;
    i = 2;
    result = 1;
    while (i <= n) {
        result = result * i;
        i = i + 1;
    }
    return result;
}

int main() {
    int n;
    int answer;
    n = getint();
    answer = factorial(n);
    putint(answer);
    return 0;
}
