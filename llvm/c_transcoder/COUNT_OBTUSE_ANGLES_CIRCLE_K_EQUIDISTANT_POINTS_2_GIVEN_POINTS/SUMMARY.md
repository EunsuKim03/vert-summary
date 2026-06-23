# c_transcoder/COUNT_OBTUSE_ANGLES_CIRCLE_K_EQUIDISTANT_POINTS_2_GIVEN_POINTS

- Source: `COUNT_OBTUSE_ANGLES_CIRCLE_K_EQUIDISTANT_POINTS_2_GIVEN_POINTS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%12 = sub nsw i32 %10, %11`
  - comparisons: `%22 = icmp eq i32 %20, %21`
  - control flow: `br i1 %22, label %23, label %24`
  - memory/pointer: `%4 = alloca i32, align 4`
  - casts/conversions: `%27 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %25, i32 noundef %26)`
  - calls/intrinsics: `%27 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %25, i32 noundef %26)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - external declarations: `declare i32 @min(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%5 = add i32 %4, %1`
  - bitwise/shift: `%4 = xor i32 %0, -1`
  - comparisons: `%9 = icmp eq i32 %5, %8`
  - control flow: `br i1 %9, label %12, label %10`
  - casts/conversions: `%11 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %5, i32 noundef %8) #2`
  - calls/intrinsics: `%11 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %5, i32 noundef %8) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%5 = add i32 %4, %1`
  - bitwise/shift: `%4 = xor i32 %0, -1`
  - comparisons: `%9 = icmp eq i32 %5, %8`
  - control flow: `br i1 %9, label %12, label %10`
  - casts/conversions: `%11 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %5, i32 noundef %8) #2`
  - calls/intrinsics: `%11 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %5, i32 noundef %8) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`
