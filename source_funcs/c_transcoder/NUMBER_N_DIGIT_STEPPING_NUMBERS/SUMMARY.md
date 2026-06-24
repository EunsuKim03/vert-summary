# c_transcoder/NUMBER_N_DIGIT_STEPPING_NUMBERS

- Source: `NUMBER_N_DIGIT_STEPPING_NUMBERS_processed.c`
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
  - integer arithmetic: `%13 = add nsw i32 %12, 1`
  - comparisons: `%18 = icmp eq i32 %17, 1`
  - control flow: `br i1 %18, label %19, label %20`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i64, align 8`
  - casts/conversions: `%14 = zext i32 %13 to i64`
  - calls/intrinsics: `%15 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0) #0 {`
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
  - comparisons: `%5 = icmp eq i32 %0, 1`
  - control flow: `br i1 %5, label %58, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca [10 x i32], i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - vector/SIMD
  - UB-related
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - comparisons: `%5 = icmp eq i32 %0, 1`
  - control flow: `br i1 %5, label %80, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca [10 x i32], i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - vector/SIMD: `%8 = bitcast i32* %7 to <4 x i32>*`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
