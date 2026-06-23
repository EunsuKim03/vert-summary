# c_transcoder/COUNT_WAYS_BUILD_STREET_GIVEN_CONSTRAINTS

- Source: `COUNT_WAYS_BUILD_STREET_GIVEN_CONSTRAINTS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %6, 1`
  - comparisons: `%21 = icmp sle i32 %19, %20`
  - control flow: `br label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%8 = zext i32 %7 to i64`
  - calls/intrinsics: `%9 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - bitwise/shift: `%4 = shl nuw nsw i64 %3, 1`
  - comparisons: `%9 = icmp slt i32 %0, 2`
  - control flow: `br i1 %9, label %17, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i64, i64 %4, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - bitwise/shift: `%4 = shl nuw nsw i64 %3, 1`
  - comparisons: `%9 = icmp slt i32 %0, 2`
  - control flow: `br i1 %9, label %33, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i64, i64 %4, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - UB-related: `define dso_local i64 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
