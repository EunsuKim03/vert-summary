/* Auto-generated for LLVM emit: selected non-function raw definitions and standard headers needed by processed source. */
#include <assert.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

/* raw non-function definition for FNV_OFFSET */
#define FNV_OFFSET 14695981039346656037UL

/* raw non-function definition for FNV_PRIME */
#define FNV_PRIME 1099511628211UL

#include <assert.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>


uint64_t hash_key(const char* key) {
    uint64_t hash = FNV_OFFSET;
    for (const char* p = key; *p; p++) {
        hash ^= (uint64_t)(unsigned char)(*p);
        hash *= FNV_PRIME;
    }
    return hash;
}
