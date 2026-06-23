# cpp_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING

- Source: `COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_processed.cpp`
- Source note: processed source

## O0

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_processed.cpp:13:3: error: use of undeclared identifier 'memset'; did`
  - `  memset ( cps, 0, sizeof ( cps ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_processed.cpp:13:12: error: cannot initialize a parameter of type 'wc`

## O1

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_processed.cpp:13:3: error: use of undeclared identifier 'memset'; did`
  - `  memset ( cps, 0, sizeof ( cps ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_processed.cpp:13:12: error: cannot initialize a parameter of type 'wc`

## O2

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_processed.cpp:13:3: error: use of undeclared identifier 'memset'; did`
  - `  memset ( cps, 0, sizeof ( cps ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_processed.cpp:13:12: error: cannot initialize a parameter of type 'wc`
