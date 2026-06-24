# c_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER

- Source: `FIND_SUM_EVEN_FACTORS_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%10 = srem i32 %9, 2`
  - comparisons: `%11 = icmp ne i32 %10, 0`
  - control flow: `br i1 %11, label %12, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%16 = sitofp i32 %15 to double`
  - calls/intrinsics: `%19 = call double @sqrt(double noundef %18) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%12 = srem i32 %11, %9`
  - bitwise/shift: `%2 = and i32 %0, 1`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `br i1 %3, label %4, label %46`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%5 = sitofp i32 %0 to double`
  - calls/intrinsics: `%6 = call double @sqrt(double noundef %5) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%12 = srem i32 %11, %9`
  - bitwise/shift: `%2 = and i32 %0, 1`
  - comparisons: `%3 = icmp eq i32 %2, 0`
  - control flow: `br i1 %3, label %4, label %46`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%5 = sitofp i32 %0 to double`
  - calls/intrinsics: `%6 = tail call double @sqrt(double noundef %5) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`
