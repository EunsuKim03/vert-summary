# c_transcoder/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1

- Source: `DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1_processed.c`
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
  - comparisons: `%24 = icmp sle i32 %22, %23`
  - control flow: `br label %21`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%14 = zext i32 %13 to i64`
  - calls/intrinsics: `%18 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
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
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %0, 1`
  - comparisons: `%9 = icmp slt i32 %0, 1`
  - control flow: `br i1 %9, label %13, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%8 = alloca i32, i64 %7, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - calls/intrinsics: `%58 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %54, i32 noundef %57) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

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
  - integer arithmetic: `%3 = add i32 %0, 1`
  - bitwise/shift: `%13 = and i64 %11, 3`
  - comparisons: `%9 = icmp slt i32 %0, 1`
  - control flow: `br i1 %9, label %29, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%8 = alloca i32, i64 %7, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - calls/intrinsics: `%154 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %150, i32 noundef %153) #2`
  - vector/SIMD: `%47 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %43 ], [ %77, %45 ]`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`
