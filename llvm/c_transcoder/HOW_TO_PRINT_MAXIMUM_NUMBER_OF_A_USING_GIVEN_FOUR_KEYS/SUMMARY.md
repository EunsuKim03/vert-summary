# c_transcoder/HOW_TO_PRINT_MAXIMUM_NUMBER_OF_A_USING_GIVEN_FOUR_KEYS

- Source: `HOW_TO_PRINT_MAXIMUM_NUMBER_OF_A_USING_GIVEN_FOUR_KEYS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%23 = sub nsw i32 %22, 1`
  - comparisons: `%9 = icmp sle i32 %8, 6`
  - control flow: `br i1 %9, label %10, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%14 = zext i32 %13 to i64`
  - calls/intrinsics: `%15 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = add i32 %0, 1`
  - bitwise/shift: `%24 = shl nsw i32 %23, 1`
  - comparisons: `%2 = icmp slt i32 %0, 7`
  - control flow: `br i1 %2, label %44, label %3`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = call i8* @llvm.stacksave()`
  - casts/conversions: `%4 = zext i32 %0 to i64`
  - calls/intrinsics: `%5 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = add nuw i32 %0, 1`
  - bitwise/shift: `%19 = shl nsw i32 %18, 1`
  - comparisons: `%2 = icmp slt i32 %0, 7`
  - control flow: `br i1 %2, label %37, label %3`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = tail call i8* @llvm.stacksave()`
  - casts/conversions: `%4 = zext i32 %0 to i64`
  - calls/intrinsics: `%5 = tail call i8* @llvm.stacksave()`
  - vector/SIMD: `%7 = bitcast i32* %6 to <4 x i32>*`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`
