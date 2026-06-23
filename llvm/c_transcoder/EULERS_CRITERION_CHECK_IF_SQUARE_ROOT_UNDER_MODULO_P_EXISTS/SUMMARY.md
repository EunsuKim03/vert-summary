# c_transcoder/EULERS_CRITERION_CHECK_IF_SQUARE_ROOT_UNDER_MODULO_P_EXISTS

- Source: `EULERS_CRITERION_CHECK_IF_SQUARE_ROOT_UNDER_MODULO_P_EXISTS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%9 = srem i32 %7, %8`
  - comparisons: `%13 = icmp slt i32 %11, %12`
  - control flow: `br label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%3 = srem i32 %0, %1`
  - comparisons: `%4 = icmp sgt i32 %1, 2`
  - control flow: `br i1 %4, label %5, label %18`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%20 = zext i1 %19 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, UB-related
- Evidence:
  - integer arithmetic: `%3 = srem i32 %0, %1`
  - comparisons: `%4 = icmp sgt i32 %1, 2`
  - control flow: `br i1 %4, label %5, label %19`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%18 = zext i1 %17 to i32`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
