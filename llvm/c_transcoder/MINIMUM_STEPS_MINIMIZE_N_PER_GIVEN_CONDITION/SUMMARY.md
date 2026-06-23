# c_transcoder/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION

- Source: `MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%8 = add nsw i32 %7, 1`
  - comparisons: `%15 = icmp sle i32 %13, %14`
  - control flow: `br label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%9 = zext i32 %8 to i64`
  - calls/intrinsics: `%10 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - bitwise/shift: `%25 = and i64 %24, 1`
  - comparisons: `%5 = icmp slt i32 %0, 0`
  - control flow: `br i1 %5, label %9, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - calls/intrinsics: `%36 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %30, i32 noundef %35) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - bitwise/shift: `%9 = and i64 %3, 4294967288`
  - comparisons: `%5 = icmp slt i32 %0, 0`
  - control flow: `br i1 %5, label %72, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - calls/intrinsics: `%88 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %83, i32 noundef %87) #2`
  - vector/SIMD: `%10 = insertelement <4 x i32> poison, i32 %0, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`
