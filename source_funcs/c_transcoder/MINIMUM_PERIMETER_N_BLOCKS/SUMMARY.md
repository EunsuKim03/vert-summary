# c_transcoder/MINIMUM_PERIMETER_N_BLOCKS

- Source: `MINIMUM_PERIMETER_N_BLOCKS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%14 = mul nsw i32 %12, %13`
  - comparisons: `%17 = icmp eq i32 %15, %16`
  - control flow: `br i1 %17, label %18, label %21`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%9 = sitofp i32 %8 to double`
  - calls/intrinsics: `%10 = call double @sqrt(double noundef %9) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%5 = mul nsw i32 %4, %4`
  - bitwise/shift: `%8 = shl nsw i32 %4, 2`
  - comparisons: `%6 = icmp eq i32 %5, %0`
  - control flow: `br i1 %6, label %7, label %9`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = call double @sqrt(double noundef %2) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%5 = mul nsw i32 %4, %4`
  - bitwise/shift: `%8 = shl nsw i32 %4, 2`
  - comparisons: `%6 = icmp eq i32 %5, %0`
  - control flow: `br i1 %6, label %7, label %9`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = tail call double @sqrt(double noundef %2) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`
