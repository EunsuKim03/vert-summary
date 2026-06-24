# c_transcoder/NUMBER_N_DIGITS_NON_DECREASING_INTEGERS

- Source: `NUMBER_N_DIGITS_NON_DECREASING_INTEGERS_processed.c`
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
  - integer arithmetic: `%10 = add nsw i32 %9, 1`
  - comparisons: `%16 = icmp sle i32 %15, 9`
  - control flow: `br label %14`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%11 = zext i32 %10 to i64`
  - calls/intrinsics: `%12 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - comparisons: `%6 = icmp slt i32 %0, 1`
  - control flow: `br label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca [10 x i32], i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - vector/SIMD
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - bitwise/shift: `%14 = and i64 %12, 3`
  - comparisons: `%10 = icmp slt i32 %0, 1`
  - control flow: `br i1 %10, label %75, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca [10 x i32], i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - vector/SIMD: `%5 = bitcast [10 x i32]* %4 to <4 x i32>*`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
