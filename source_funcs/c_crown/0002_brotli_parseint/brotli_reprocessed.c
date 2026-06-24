/* Auto-generated for LLVM emit: selected non-function raw definitions and standard headers needed by processed source. */

/* raw non-function definition for BROTLI_BOOL */
typedef int BROTLI_BOOL;

/* raw non-function definition for BROTLI_FALSE */
#define BROTLI_FALSE 0

/* raw non-function definition for BROTLI_TRUE */
#define BROTLI_TRUE 1



BROTLI_BOOL ParseInt(const char* s, int low, int high, int* result) {
  int value = 0;
  int i;
  for (i = 0; i < 5; ++i) {
    char c = s[i];
    if (c == 0) break;
    if (s[i] < '0' || s[i] > '9') return BROTLI_FALSE;
    value = (10 * value) + (c - '0');
  }
  if (i == 0) return BROTLI_FALSE;
  if (i > 1 && s[0] == '0') return BROTLI_FALSE;
  if (s[i] != 0) return BROTLI_FALSE;
  if (value < low || value > high) return BROTLI_FALSE;
  return BROTLI_TRUE;
}
