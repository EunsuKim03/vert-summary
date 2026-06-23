# c_transcoder/PRIMALITY_TEST_SET_1_INTRODUCTION_AND_SCHOOL_METHOD_1

- Source: `PRIMALITY_TEST_SET_1_INTRODUCTION_AND_SCHOOL_METHOD_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%14 = srem i32 %13, 2`
  - comparisons: `%6 = icmp sle i32 %5, 1`
  - control flow: `br i1 %6, label %7, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%8 = srem i32 %0, 3`
  - bitwise/shift: `%6 = and i32 %0, 1`
  - comparisons: `%2 = icmp slt i32 %0, 2`
  - control flow: `br i1 %2, label %25, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%8 = urem i32 %0, 3`
  - bitwise/shift: `%6 = and i32 %0, 1`
  - comparisons: `%2 = icmp slt i32 %0, 2`
  - control flow: `br i1 %2, label %25, label %3`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
