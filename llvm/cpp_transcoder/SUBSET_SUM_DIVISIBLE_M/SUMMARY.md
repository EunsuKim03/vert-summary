# cpp_transcoder/SUBSET_SUM_DIVISIBLE_M

- Source: `SUBSET_SUM_DIVISIBLE_M_processed.cpp`
- Source note: processed source

## O0

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_processed.cpp:13:3: error: use of undeclared identifier 'memset'; did you mean 'wmemset'?`
  - `  memset ( DP, 0, m );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_processed.cpp:13:12: error: cannot initialize a parameter of type 'wchar_t *' with an lvalue of type 'bool[m]`

## O1

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_processed.cpp:13:3: error: use of undeclared identifier 'memset'; did you mean 'wmemset'?`
  - `  memset ( DP, 0, m );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_processed.cpp:13:12: error: cannot initialize a parameter of type 'wchar_t *' with an lvalue of type 'bool[m]`

## O2

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_processed.cpp:13:3: error: use of undeclared identifier 'memset'; did you mean 'wmemset'?`
  - `  memset ( DP, 0, m );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_processed.cpp:13:12: error: cannot initialize a parameter of type 'wchar_t *' with an lvalue of type 'bool[m]`
