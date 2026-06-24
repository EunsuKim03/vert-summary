# c_transcoder/CIRCLE_LATTICE_POINTS

- Source: `CIRCLE_LATTICE_POINTS_processed.c`
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
  - integer arithmetic: `%19 = mul nsw i32 %17, %18`
  - comparisons: `%9 = icmp sle i32 %8, 0`
  - control flow: `br i1 %9, label %10, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%25 = sitofp i32 %24 to double`
  - calls/intrinsics: `%26 = call double @sqrt(double noundef %25) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%6 = mul nsw i32 %0, %0`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %21, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%12 = sitofp i32 %11 to double`
  - calls/intrinsics: `%13 = call double @sqrt(double noundef %12) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%6 = mul nsw i32 %0, %0`
  - bitwise/shift: `%8 = and i32 %7, 1`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %53, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%18 = sitofp i32 %17 to double`
  - calls/intrinsics: `%19 = tail call double @sqrt(double noundef %18) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`
