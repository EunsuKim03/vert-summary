# c_transcoder/COMPUTE_AVERAGE_TWO_NUMBERS_WITHOUT_OVERFLOW_1

- Source: `COMPUTE_AVERAGE_TWO_NUMBERS_WITHOUT_OVERFLOW_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, control flow, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%6 = sdiv i32 %5, 2`
  - control flow: `ret i32 %16`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, control flow, UB-related
- Evidence:
  - integer arithmetic: `%3 = sdiv i32 %0, 2`
  - control flow: `ret i32 %10`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, control flow, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%3 = sdiv i32 %0, 2`
  - control flow: `ret i32 %12`
  - casts/conversions: `%9 = trunc i32 %8 to i8`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
