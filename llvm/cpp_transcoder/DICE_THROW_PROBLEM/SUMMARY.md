# cpp_transcoder/DICE_THROW_PROBLEM

- Source: `DICE_THROW_PROBLEM_processed.cpp`
- Source note: processed source

## O0

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/DICE_THROW_PROBLEM/DICE_THROW_PROBLEM_processed.cpp:12:3: error: use of undeclared identifier 'memset'; did you mean 'wmemset'?`
  - `  memset ( table, 0, sizeof ( table ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/DICE_THROW_PROBLEM/DICE_THROW_PROBLEM_processed.cpp:12:12: error: cannot initialize a parameter of type 'wchar_t *' with an lvalue of type 'int[n + 1][x + `

## O1

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/DICE_THROW_PROBLEM/DICE_THROW_PROBLEM_processed.cpp:12:3: error: use of undeclared identifier 'memset'; did you mean 'wmemset'?`
  - `  memset ( table, 0, sizeof ( table ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/DICE_THROW_PROBLEM/DICE_THROW_PROBLEM_processed.cpp:12:12: error: cannot initialize a parameter of type 'wchar_t *' with an lvalue of type 'int[n + 1][x + `

## O2

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/DICE_THROW_PROBLEM/DICE_THROW_PROBLEM_processed.cpp:12:3: error: use of undeclared identifier 'memset'; did you mean 'wmemset'?`
  - `  memset ( table, 0, sizeof ( table ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/DICE_THROW_PROBLEM/DICE_THROW_PROBLEM_processed.cpp:12:12: error: cannot initialize a parameter of type 'wchar_t *' with an lvalue of type 'int[n + 1][x + `
