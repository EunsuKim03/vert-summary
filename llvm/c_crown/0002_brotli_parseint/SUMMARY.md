# c_crown/0002_brotli_parseint

- Source: `brotli_processed.c`
- Source note: processed source

## O0

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/c_crown/0002_brotli_parseint/brotli_processed.c:3:8: error: unknown type name 'BROTLI_BOOL'`
  - `static BROTLI_BOOL ParseInt(const char* s, int low, int high, int* result) {`
  - `       ^`
  - `benchmark/c_crown/0002_brotli_parseint/brotli_processed.c:9:42: error: use of undeclared identifier 'BROTLI_FALSE'`
  - `    if (s[i] < '0' || s[i] > '9') return BROTLI_FALSE;`
  - `                                         ^`
  - `benchmark/c_crown/0002_brotli_parseint/brotli_processed.c:12:22: error: use of undeclared identifier 'BROTLI_FALSE'`
  - `  if (i == 0) return BROTLI_FALSE;`

## O1

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/c_crown/0002_brotli_parseint/brotli_processed.c:3:8: error: unknown type name 'BROTLI_BOOL'`
  - `static BROTLI_BOOL ParseInt(const char* s, int low, int high, int* result) {`
  - `       ^`
  - `benchmark/c_crown/0002_brotli_parseint/brotli_processed.c:9:42: error: use of undeclared identifier 'BROTLI_FALSE'`
  - `    if (s[i] < '0' || s[i] > '9') return BROTLI_FALSE;`
  - `                                         ^`
  - `benchmark/c_crown/0002_brotli_parseint/brotli_processed.c:12:22: error: use of undeclared identifier 'BROTLI_FALSE'`
  - `  if (i == 0) return BROTLI_FALSE;`

## O2

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/c_crown/0002_brotli_parseint/brotli_processed.c:3:8: error: unknown type name 'BROTLI_BOOL'`
  - `static BROTLI_BOOL ParseInt(const char* s, int low, int high, int* result) {`
  - `       ^`
  - `benchmark/c_crown/0002_brotli_parseint/brotli_processed.c:9:42: error: use of undeclared identifier 'BROTLI_FALSE'`
  - `    if (s[i] < '0' || s[i] > '9') return BROTLI_FALSE;`
  - `                                         ^`
  - `benchmark/c_crown/0002_brotli_parseint/brotli_processed.c:12:22: error: use of undeclared identifier 'BROTLI_FALSE'`
  - `  if (i == 0) return BROTLI_FALSE;`
