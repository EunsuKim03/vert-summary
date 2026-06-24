# c_transcoder/CHECK_INTEGER_OVERFLOW_MULTIPLICATION

- Source: `CHECK_INTEGER_OVERFLOW_MULTIPLICATION_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%16 = mul nsw i64 %14, %15`
  - comparisons: `%8 = icmp eq i64 %7, 0`
  - control flow: `br i1 %8, label %12, label %9`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) #0 {`

## O1

- Status: ok
- Features:
  - control flow
  - UB-related
- Evidence:
  - control flow: `ret i32 0`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - control flow
  - UB-related
- Evidence:
  - control flow: `ret i32 0`
  - UB-related: `define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {`
