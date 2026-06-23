# c_transcoder/CHECK_GIVEN_CIRCLE_LIES_COMPLETELY_INSIDE_RING_FORMED_TWO_CONCENTRIC_CIRCLES

- Source: `CHECK_GIVEN_CIRCLE_LIES_COMPLETELY_INSIDE_RING_FORMED_TWO_CONCENTRIC_CIRCLES_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%14 = mul nsw i32 %12, %13`
  - comparisons: `%26 = icmp sge i32 %24, %25`
  - control flow: `br i1 %26, label %27, label %33`
  - memory/pointer: `%6 = alloca i32, align 4`
  - casts/conversions: `%19 = sitofp i32 %18 to double`
  - calls/intrinsics: `%20 = call double @sqrt(double noundef %19) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%6 = mul nsw i32 %3, %3`
  - comparisons: `%13 = icmp sge i32 %12, %1`
  - control flow: `%16 = select i1 %13, i1 %15, i1 false`
  - casts/conversions: `%9 = sitofp i32 %8 to double`
  - calls/intrinsics: `%10 = call double @sqrt(double noundef %9) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%6 = mul nsw i32 %3, %3`
  - comparisons: `%13 = icmp sge i32 %12, %1`
  - control flow: `%16 = select i1 %13, i1 %15, i1 false`
  - casts/conversions: `%9 = sitofp i32 %8 to double`
  - calls/intrinsics: `%10 = tail call double @sqrt(double noundef %9) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`
