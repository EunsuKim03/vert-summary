# c_transcoder/FIND_UNIT_DIGIT_X_RAISED_POWER_Y_1

- Source: `FIND_UNIT_DIGIT_X_RAISED_POWER_Y_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%6 = srem i32 %5, 10`
  - comparisons: `%8 = icmp ne i32 %7, 0`
  - control flow: `br i1 %8, label %9, label %13`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%15 = sitofp i32 %14 to double`
  - calls/intrinsics: `%18 = call double @pow(double noundef %15, double noundef %17) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%5 = srem i32 %1, 4`
  - comparisons: `%3 = icmp eq i32 %1, 0`
  - control flow: `br i1 %3, label %8, label %4`
  - casts/conversions: `%7 = sitofp i32 %6 to double`
  - calls/intrinsics: `%12 = call double @pow(double noundef %11, double noundef %9) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%5 = srem i32 %1, 4`
  - comparisons: `%3 = icmp eq i32 %1, 0`
  - control flow: `br i1 %3, label %8, label %4`
  - casts/conversions: `%7 = sitofp i32 %6 to double`
  - calls/intrinsics: `%12 = tail call double @pow(double noundef %11, double noundef %9) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`
