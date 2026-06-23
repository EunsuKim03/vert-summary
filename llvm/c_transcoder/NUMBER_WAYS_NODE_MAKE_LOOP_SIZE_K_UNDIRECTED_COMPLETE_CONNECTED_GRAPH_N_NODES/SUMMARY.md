# c_transcoder/NUMBER_WAYS_NODE_MAKE_LOOP_SIZE_K_UNDIRECTED_COMPLETE_CONNECTED_GRAPH_N_NODES

- Source: `NUMBER_WAYS_NODE_MAKE_LOOP_SIZE_K_UNDIRECTED_COMPLETE_CONNECTED_GRAPH_N_NODES_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, floating-point arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%7 = srem i32 %6, 2`
  - floating-point arithmetic: `%22 = fadd double %16, %21`
  - comparisons: `%8 = icmp ne i32 %7, 0`
  - control flow: `br i1 %8, label %9, label %10`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%13 = sitofp i32 %12 to double`
  - calls/intrinsics: `%16 = call double @pow(double noundef %13, double noundef %15) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, floating-point arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%5 = add nsw i32 %0, -1`
  - bitwise/shift: `%3 = and i32 %1, 1`
  - floating-point arithmetic: `%12 = fadd double %8, %11`
  - comparisons: `%4 = icmp eq i32 %3, 0`
  - control flow: `%10 = select i1 %4, i32 %5, i32 %9`
  - casts/conversions: `%6 = sitofp i32 %5 to double`
  - calls/intrinsics: `%8 = call double @pow(double noundef %6, double noundef %7) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, floating-point arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%5 = add nsw i32 %0, -1`
  - bitwise/shift: `%3 = and i32 %1, 1`
  - floating-point arithmetic: `%12 = fadd double %8, %11`
  - comparisons: `%4 = icmp eq i32 %3, 0`
  - control flow: `%10 = select i1 %4, i32 %5, i32 %9`
  - casts/conversions: `%6 = sitofp i32 %5 to double`
  - calls/intrinsics: `%8 = tail call double @pow(double noundef %6, double noundef %7) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`
