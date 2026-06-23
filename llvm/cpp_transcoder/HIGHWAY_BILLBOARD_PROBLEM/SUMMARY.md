# cpp_transcoder/HIGHWAY_BILLBOARD_PROBLEM

- Source: `HIGHWAY_BILLBOARD_PROBLEM_processed.cpp`
- Source note: processed source

## O0

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_processed.cpp:12:3: error: use of undeclared identifier 'memset'; did you mean 'wmemset'?`
  - `  memset ( maxRev, 0, sizeof ( maxRev ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_processed.cpp:12:12: error: cannot initialize a parameter of type 'wchar_t *' with an lvalue of type 'i`

## O1

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_processed.cpp:12:3: error: use of undeclared identifier 'memset'; did you mean 'wmemset'?`
  - `  memset ( maxRev, 0, sizeof ( maxRev ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_processed.cpp:12:12: error: cannot initialize a parameter of type 'wchar_t *' with an lvalue of type 'i`

## O2

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_processed.cpp:12:3: error: use of undeclared identifier 'memset'; did you mean 'wmemset'?`
  - `  memset ( maxRev, 0, sizeof ( maxRev ) );`
  - `  ^~~~~~`
  - `  wmemset`
  - `/usr/include/wchar.h:272:17: note: 'wmemset' declared here`
  - `extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __THROW;`
  - `                ^`
  - `benchmark/cpp_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_processed.cpp:12:12: error: cannot initialize a parameter of type 'wchar_t *' with an lvalue of type 'i`
