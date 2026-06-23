# c_transcoder/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE

- Source: `FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%8 = srem i32 %7, 2`
  - comparisons: `%9 = icmp eq i32 %8, 0`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%25 = sitofp i32 %24 to double`
  - calls/intrinsics: `%28 = call double @sqrt(double noundef %27) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%7 = add nuw nsw i32 %5, 1`
  - bitwise/shift: `%2 = and i32 %0, 1`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `br i1 %3, label %4, label %15`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%18 = sitofp i32 %16 to double`
  - calls/intrinsics: `%19 = call double @sqrt(double noundef %18) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%7 = add nuw nsw i32 %5, 1`
  - bitwise/shift: `%2 = and i32 %0, 1`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `br i1 %3, label %4, label %15`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%18 = sitofp i32 %16 to double`
  - calls/intrinsics: `%19 = tail call double @sqrt(double noundef %18) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`
