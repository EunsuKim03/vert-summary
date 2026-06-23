# cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE

- Source: `LENGTH_LONGEST_BALANCED_SUBSEQUENCE_processed.cpp`
- Source note: processed source

## O0

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_processed.cpp:12:3: error: use of undeclared identifier 'memset'; did you mean 'wme`
  - `  memset ( dp, 0, sizeof ( dp ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_processed.cpp:12:12: error: cannot initialize a parameter of type 'wchar_t *' with `

## O1

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_processed.cpp:12:3: error: use of undeclared identifier 'memset'; did you mean 'wme`
  - `  memset ( dp, 0, sizeof ( dp ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_processed.cpp:12:12: error: cannot initialize a parameter of type 'wchar_t *' with `

## O2

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_processed.cpp:12:3: error: use of undeclared identifier 'memset'; did you mean 'wme`
  - `  memset ( dp, 0, sizeof ( dp ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_processed.cpp:12:12: error: cannot initialize a parameter of type 'wchar_t *' with `
