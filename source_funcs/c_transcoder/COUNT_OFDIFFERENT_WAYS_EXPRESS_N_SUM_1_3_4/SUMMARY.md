# c_transcoder/COUNT_OFDIFFERENT_WAYS_EXPRESS_N_SUM_1_3_4

- Source: `COUNT_OFDIFFERENT_WAYS_EXPRESS_N_SUM_1_3_4_processed.c`
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
  - integer arithmetic: `%7 = add nsw i32 %6, 1`
  - comparisons: `%18 = icmp sle i32 %16, %17`
  - control flow: `br label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%8 = zext i32 %7 to i64`
  - calls/intrinsics: `%9 = call i8* @llvm.stacksave()`
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
  - comparisons: `%8 = icmp slt i32 %0, 4`
  - control flow: `br i1 %8, label %14, label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
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
  - bitwise/shift: `%8 = and i64 %3, 1`
  - comparisons: `%6 = icmp slt i32 %0, 4`
  - control flow: `br i1 %6, label %25, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - vector/SIMD: `%5 = bitcast i32* %4 to <4 x i32>*`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
