#include <stdio.h>

/*
 * The course RISC-V runtime was compiled against Newlib. Its single object
 * reads stdout and stderr from _impure_ptr at byte offsets 16 and 24. The
 * remaining imported stdio functions use the normal RV64 C calling
 * convention. This bridge supplies those two slots with Linux libc FILE
 * pointers so the unmodified course archive can run under qemu-riscv64.
 *
 * This is an execution compatibility bridge, not a claim that glibc and
 * Newlib FILE layouts are generally interchangeable. Only the two pointer
 * loads observed in the archived object are covered and verified.
 */
struct sysy_newlib_reent_bridge {
    unsigned char reserved[16];
    FILE *stdout_file;
    FILE *stderr_file;
};

static struct sysy_newlib_reent_bridge bridge;
void *_impure_ptr = &bridge;

__attribute__((constructor)) static void initialize_newlib_bridge(void) {
    bridge.stdout_file = stdout;
    bridge.stderr_file = stderr;
}
