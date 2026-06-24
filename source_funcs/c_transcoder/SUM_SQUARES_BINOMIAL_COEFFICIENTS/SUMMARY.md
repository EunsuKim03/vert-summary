# c_transcoder/SUM_SQUARES_BINOMIAL_COEFFICIENTS

- Source: `SUM_SQUARES_BINOMIAL_COEFFICIENTS_processed.c`
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
  - integer arithmetic: `%11 = add nsw i32 %10, 1`
  - comparisons: `%22 = icmp sle i32 %20, %21`
  - control flow: `br label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%12 = zext i32 %11 to i64`
  - calls/intrinsics: `%16 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - bitwise/shift: `%32 = or i1 %30, %31`
  - comparisons: `%6 = icmp slt i32 %0, 0`
  - control flow: `br i1 %6, label %21, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i32, i64 %4, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - calls/intrinsics: `%12 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %11, i32 noundef %0) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`

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
  - calls/intrinsics
  - vector/SIMD
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - bitwise/shift: `%25 = and i64 %3, 4294967288`
  - comparisons: `%6 = icmp slt i32 %0, 0`
  - control flow: `br i1 %6, label %111, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i32, i64 %4, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - calls/intrinsics: `%10 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %9, i32 noundef %0) #3`
  - vector/SIMD: `%35 = phi <4 x i32> [ zeroinitializer, %31 ], [ %57, %33 ]`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`
