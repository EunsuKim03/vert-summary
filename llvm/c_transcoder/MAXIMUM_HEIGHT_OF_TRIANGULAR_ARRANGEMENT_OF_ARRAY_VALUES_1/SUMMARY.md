# c_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1

- Source: `MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, floating-point arithmetic, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%6 = mul nsw i32 8, %5`
  - floating-point arithmetic: `%10 = fadd double -1.000000e+00, %9`
  - control flow: `ret i32 %13`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%8 = sitofp i32 %7 to double`
  - calls/intrinsics: `%9 = call double @sqrt(double noundef %8) #3`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare double @sqrt(double noundef) #1`

## O1

- Status: ok
- Features: bitwise/shift, floating-point arithmetic, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - bitwise/shift: `%3 = shl nsw i32 %1, 3`
  - floating-point arithmetic: `%7 = fadd double %6, -1.000000e+00`
  - control flow: `ret i32 %10`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = sitofp i32 %4 to double`
  - calls/intrinsics: `%6 = call double @sqrt(double noundef %5) #3`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: bitwise/shift, floating-point arithmetic, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - bitwise/shift: `%3 = shl nsw i32 %1, 3`
  - floating-point arithmetic: `%7 = fadd double %6, -1.000000e+00`
  - control flow: `ret i32 %10`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = sitofp i32 %4 to double`
  - calls/intrinsics: `%6 = tail call double @sqrt(double noundef %5) #3`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare double @sqrt(double noundef) local_unnamed_addr #1`
