# c_transcoder/FIND_N_TH_ELEMENT_FROM_STERNS_DIATOMIC_SERIES

- Source: `FIND_N_TH_ELEMENT_FROM_STERNS_DIATOMIC_SERIES_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %6, 1`
  - comparisons: `%16 = icmp sle i32 %14, %15`
  - control flow: `br label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%8 = zext i32 %7 to i64`
  - calls/intrinsics: `%9 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - bitwise/shift: `%16 = and i64 %15, 1`
  - comparisons: `%6 = icmp slt i32 %0, 2`
  - control flow: `br i1 %6, label %10, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - bitwise/shift: `%13 = and i64 %12, 1`
  - comparisons: `%6 = icmp slt i32 %0, 2`
  - control flow: `br i1 %6, label %7, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
