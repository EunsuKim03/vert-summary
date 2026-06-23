# c_transcoder/K_TH_DIGIT_RAISED_POWER_B

- Source: `K_TH_DIGIT_RAISED_POWER_B_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%28 = srem i32 %27, 10`
  - comparisons: `%19 = icmp sgt i32 %18, 0`
  - control flow: `br label %17`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, align 4`
  - casts/conversions: `%12 = sitofp i32 %11 to double`
  - calls/intrinsics: `%15 = call double @pow(double noundef %12, double noundef %14) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%16 = add nuw nsw i32 %10, 1`
  - comparisons: `%12 = icmp sgt i32 %9, 0`
  - control flow: `br label %8`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%4 = sitofp i32 %0 to double`
  - calls/intrinsics: `%6 = call double @pow(double noundef %4, double noundef %5) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%14 = add nuw nsw i32 %12, 1`
  - bitwise/shift: `%10 = and i1 %8, %9`
  - comparisons: `%8 = icmp sgt i32 %7, 0`
  - control flow: `br i1 %10, label %11, label %23`
  - loop: `br i1 %22, label %11, label %23`
  - casts/conversions: `%4 = sitofp i32 %0 to double`
  - calls/intrinsics: `%6 = tail call double @pow(double noundef %4, double noundef %5) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`
