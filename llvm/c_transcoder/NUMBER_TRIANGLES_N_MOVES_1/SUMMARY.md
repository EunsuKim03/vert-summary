# c_transcoder/NUMBER_TRIANGLES_N_MOVES_1

- Source: `NUMBER_TRIANGLES_N_MOVES_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - control flow: `ret i32 %9`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%5 = sitofp i32 %4 to double`
  - calls/intrinsics: `%6 = call double @pow(double noundef 3.000000e+00, double noundef %5) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) #1`

## O1

- Status: ok
- Features: control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - control flow: `ret i32 %5`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = call double @pow(double noundef 3.000000e+00, double noundef %2) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - control flow: `ret i32 %5`
  - casts/conversions: `%2 = sitofp i32 %0 to double`
  - calls/intrinsics: `%3 = tail call double @pow(double noundef 3.000000e+00, double noundef %2) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare double @pow(double noundef, double noundef) local_unnamed_addr #1`
