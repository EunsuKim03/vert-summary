# c_transcoder/COUNT_NUMBER_BINARY_STRINGS_WITHOUT_CONSECUTIVE_1S

- Source: `COUNT_NUMBER_BINARY_STRINGS_WITHOUT_CONSECUTIVE_1S_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%22 = sub nsw i32 %21, 1`
  - comparisons: `%19 = icmp slt i32 %17, %18`
  - control flow: `br label %16`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%8 = zext i32 %7 to i64`
  - calls/intrinsics: `%9 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%11 = add nsw i32 %0, -1`
  - comparisons: `%5 = icmp sgt i32 %0, 1`
  - control flow: `br i1 %5, label %6, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, i64 %2, align 16`
  - casts/conversions: `%2 = zext i32 %0 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%7 = add nsw i64 %2, -1`
  - bitwise/shift: `%9 = and i64 %7, 3`
  - comparisons: `%5 = icmp sgt i32 %0, 1`
  - control flow: `br i1 %5, label %6, label %29`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, i64 %2, align 16`
  - casts/conversions: `%2 = zext i32 %0 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
