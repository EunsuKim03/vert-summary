# c_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER

- Source: `K_TH_PRIME_FACTOR_GIVEN_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%9 = srem i32 %8, 2`
  - comparisons: `%10 = icmp eq i32 %9, 0`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%23 = sitofp i32 %22 to double`
  - calls/intrinsics: `%26 = call double @sqrt(double noundef %25) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%13 = add nsw i32 %5, -1`
  - bitwise/shift: `%6 = and i32 %4, 1`
  - comparisons: `%7 = icmp eq i32 %6, 0`
  - control flow: `br label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%9 = sitofp i32 %4 to double`
  - calls/intrinsics: `%10 = call double @sqrt(double noundef %9) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%13 = add nsw i32 %5, -1`
  - bitwise/shift: `%6 = and i32 %4, 1`
  - comparisons: `%7 = icmp eq i32 %6, 0`
  - control flow: `br label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%9 = sitofp i32 %4 to double`
  - calls/intrinsics: `%10 = tail call double @sqrt(double noundef %9) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`
