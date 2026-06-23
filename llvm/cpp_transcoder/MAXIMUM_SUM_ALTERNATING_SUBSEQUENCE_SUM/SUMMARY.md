# cpp_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM

- Source: `MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_processed.cpp`
- Source note: processed source

## O0

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_processed.cpp:13:3: error: use of undeclared identifier 'memset'; did you m`
  - `  memset ( dec, 0, sizeof ( dec ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_processed.cpp:13:12: error: cannot initialize a parameter of type 'wchar_t `

## O1

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_processed.cpp:13:3: error: use of undeclared identifier 'memset'; did you m`
  - `  memset ( dec, 0, sizeof ( dec ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_processed.cpp:13:12: error: cannot initialize a parameter of type 'wchar_t `

## O2

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_processed.cpp:13:3: error: use of undeclared identifier 'memset'; did you m`
  - `  memset ( dec, 0, sizeof ( dec ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_processed.cpp:13:12: error: cannot initialize a parameter of type 'wchar_t `
