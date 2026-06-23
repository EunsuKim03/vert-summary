# cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1

- Source: `MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_processed.cpp`
- Source note: processed source

## O0

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_proce`
  - `  if ( n <= 4 ) return * min_element ( ar, ar + n );`
  - `                         ^`
  - `benchmark/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_proce`
  - `  i ++ ) sum [ i ] = ar [ i ] + ( * min_element ( sum + i - 4, sum + i ) );`
  - `                                    ^`
  - `benchmark/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_proce`
  - `  return * min_element ( sum + n - 4, sum + n );`

## O1

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_proce`
  - `  if ( n <= 4 ) return * min_element ( ar, ar + n );`
  - `                         ^`
  - `benchmark/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_proce`
  - `  i ++ ) sum [ i ] = ar [ i ] + ( * min_element ( sum + i - 4, sum + i ) );`
  - `                                    ^`
  - `benchmark/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_proce`
  - `  return * min_element ( sum + n - 4, sum + n );`

## O2

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_proce`
  - `  if ( n <= 4 ) return * min_element ( ar, ar + n );`
  - `                         ^`
  - `benchmark/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_proce`
  - `  i ++ ) sum [ i ] = ar [ i ] + ( * min_element ( sum + i - 4, sum + i ) );`
  - `                                    ^`
  - `benchmark/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_proce`
  - `  return * min_element ( sum + n - 4, sum + n );`
