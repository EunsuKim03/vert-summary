# c_transcoder/DISTRIBUTING_M_ITEMS_CIRCLE_SIZE_N_STARTING_K_TH_POSITION

- Source: `DISTRIBUTING_M_ITEMS_CIRCLE_SIZE_N_STARTING_K_TH_POSITION_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - UB-related
- Evidence:
  - integer arithmetic: `%11 = sub nsw i32 %9, %10`
  - comparisons: `%13 = icmp sle i32 %8, %12`
  - control flow: `br i1 %13, label %14, label %19`
  - memory/pointer: `%4 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = sub nsw i32 %0, %2`
  - comparisons: `%6 = icmp slt i32 %5, %1`
  - control flow: `br i1 %6, label %10, label %7`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - UB-related
- Evidence:
  - integer arithmetic: `%4 = sub nsw i32 %0, %2`
  - comparisons: `%6 = icmp slt i32 %5, %1`
  - control flow: `br i1 %6, label %10, label %7`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
