# c_transcoder/SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS_1

- Source: `SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%11 = add nsw i32 %10, 1`
  - comparisons: `%23 = icmp slt i32 %20, %22`
  - control flow: `br label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%12 = zext i32 %11 to i64`
  - calls/intrinsics: `%16 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %0, 1`
  - bitwise/shift: `%23 = lshr i64 %17, 1`
  - comparisons: `%9 = icmp slt i32 %0, 0`
  - control flow: `br i1 %9, label %36, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%8 = alloca i32, i64 %7, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%3 = add i32 %0, 1`
  - bitwise/shift: `%14 = and i64 %6, 1`
  - comparisons: `%9 = icmp slt i32 %0, 0`
  - control flow: `br i1 %9, label %34, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%8 = alloca i32, i64 %7, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
