# cpp_transcoder/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M

- Source: `DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_processed.cpp`
- Source note: processed source

## O0

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_processed.cpp:12:3: error: use of undeclared identifi`
  - `  memset ( dp, 0, sizeof ( dp ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_processed.cpp:12:12: error: cannot initialize a param`

## O1

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_processed.cpp:12:3: error: use of undeclared identifi`
  - `  memset ( dp, 0, sizeof ( dp ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_processed.cpp:12:12: error: cannot initialize a param`

## O2

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_processed.cpp:12:3: error: use of undeclared identifi`
  - `  memset ( dp, 0, sizeof ( dp ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_processed.cpp:12:12: error: cannot initialize a param`
