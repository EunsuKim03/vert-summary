# c_transcoder/NUMBER_JUMP_REQUIRED_GIVEN_LENGTH_REACH_POINT_FORM_D_0_ORIGIN_2D_PLANE

- Source: `NUMBER_JUMP_REQUIRED_GIVEN_LENGTH_REACH_POINT_FORM_D_0_ORIGIN_2D_PLANE_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%22 = add nsw i32 %20, %21`
  - comparisons: `%18 = icmp sge i32 %16, %17`
  - control flow: `br i1 %18, label %19, label %26`
  - memory/pointer: `%4 = alloca i32, align 4`
  - casts/conversions: `%12 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %10, i32 noundef %11)`
  - calls/intrinsics: `%12 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %10, i32 noundef %11)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - external declarations: `declare i32 @min(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%8 = add i32 %2, -1`
  - comparisons: `%6 = icmp sgt i32 %5, %2`
  - control flow: `br i1 %6, label %11, label %7`
  - casts/conversions: `%4 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %0, i32 noundef %1) #2`
  - calls/intrinsics: `%4 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %0, i32 noundef %1) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%8 = add i32 %2, -1`
  - comparisons: `%6 = icmp sgt i32 %5, %2`
  - control flow: `br i1 %6, label %11, label %7`
  - casts/conversions: `%4 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %0, i32 noundef %1) #2`
  - calls/intrinsics: `%4 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %0, i32 noundef %1) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`
