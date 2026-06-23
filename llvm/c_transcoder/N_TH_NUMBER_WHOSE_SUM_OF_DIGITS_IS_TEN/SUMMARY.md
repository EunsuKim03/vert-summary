# c_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN

- Source: `N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%15 = srem i32 %14, 10`
  - comparisons: `%11 = icmp sgt i32 %10, 0`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%9 = add nuw nsw i32 %4, %8`
  - comparisons: `%7 = icmp eq i32 %17, 10`
  - control flow: `br label %2`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%8 = zext i1 %7 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%8 = add nuw nsw i32 %3, %7`
  - comparisons: `%6 = icmp eq i32 %15, 10`
  - control flow: `br label %2`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%7 = zext i1 %6 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
