# c_transcoder/HEIGHT_COMPLETE_BINARY_TREE_HEAP_N_NODES

- Source: `HEIGHT_COMPLETE_BINARY_TREE_HEAP_N_NODES_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %3, 1`
  - floating-point arithmetic: `%8 = fsub double %7, 1.000000e+00`
  - control flow: `ret i32 %9`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%5 = sitofp i32 %4 to double`
  - calls/intrinsics: `%6 = call double @log2(double noundef %5) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @log2(double noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - floating-point arithmetic: `%6 = fadd double %5, -1.000000e+00`
  - control flow: `ret i32 %7`
  - casts/conversions: `%3 = sitofp i32 %2 to double`
  - calls/intrinsics: `%4 = call double @log2(double noundef %3) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @log2(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - floating-point arithmetic: `%6 = fadd double %5, -1.000000e+00`
  - control flow: `ret i32 %7`
  - casts/conversions: `%3 = sitofp i32 %2 to double`
  - calls/intrinsics: `%4 = tail call double @log2(double noundef %3) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @log2(double noundef) local_unnamed_addr #1`
