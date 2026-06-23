# cpp_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N

- Source: `NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_processed.cpp`
- Source note: processed source

## O0

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_processed.cpp:13:3: error: use of undeclared identifier 'memset'; did you mea`
  - `  memset ( dp, 0, sizeof ( dp ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_processed.cpp:13:12: error: cannot initialize a parameter of type 'wchar_t *'`

## O1

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_processed.cpp:13:3: error: use of undeclared identifier 'memset'; did you mea`
  - `  memset ( dp, 0, sizeof ( dp ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_processed.cpp:13:12: error: cannot initialize a parameter of type 'wchar_t *'`

## O2

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_processed.cpp:13:3: error: use of undeclared identifier 'memset'; did you mea`
  - `  memset ( dp, 0, sizeof ( dp ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_processed.cpp:13:12: error: cannot initialize a parameter of type 'wchar_t *'`
