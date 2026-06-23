# c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND

- Source: `CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, floating-point arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%40 = sub nsw i32 %38, %39`
  - floating-point arithmetic: `%33 = fmul double 5.000000e-01, %32`
  - comparisons: `%9 = fcmp olt double %8, 0.000000e+00`
  - control flow: `br i1 %9, label %19, label %10`
  - memory/pointer: `%3 = alloca double, align 8`
  - casts/conversions: `%34 = fptosi double %33 to i32`
  - calls/intrinsics: `%20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))`
  - UB-related: `define dso_local i32 @f_gold(double noundef %0, double noundef %1) #0 {`
  - globals: `@.str = private unnamed_addr constant [12 x i8] c"Wrong input\00", align 1`
  - external declarations: `declare i32 @printf(i8* noundef, ...) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, floating-point arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%22 = sub nsw i32 %19, %21`
  - bitwise/shift: `%5 = or i1 %3, %4`
  - floating-point arithmetic: `%18 = fmul double %17, 5.000000e-01`
  - comparisons: `%3 = fcmp olt double %0, 0.000000e+00`
  - control flow: `br i1 %9, label %10, label %12`
  - memory/pointer: `%11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))`
  - casts/conversions: `%19 = fptosi double %18 to i32`
  - calls/intrinsics: `%11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))`
  - UB-related: `define dso_local i32 @f_gold(double noundef %0, double noundef %1) local_unnamed_addr #0 {`
  - globals: `@.str = private unnamed_addr constant [12 x i8] c"Wrong input\00", align 1`
  - external declarations: `declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, floating-point arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%23 = sub nsw <2 x i32> %21, %22`
  - bitwise/shift: `%5 = or i1 %3, %4`
  - floating-point arithmetic: `%20 = fmul <2 x double> %19, <double 5.000000e-01, double 6.000000e+00>`
  - comparisons: `%3 = fcmp olt double %0, 0.000000e+00`
  - control flow: `br i1 %9, label %10, label %12`
  - memory/pointer: `%11 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))`
  - casts/conversions: `%21 = fptosi <2 x double> %20 to <2 x i32>`
  - calls/intrinsics: `%11 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))`
  - vector/SIMD: `%18 = insertelement <2 x double> poison, double %17, i64 0`
  - UB-related: `define dso_local i32 @f_gold(double noundef %0, double noundef %1) local_unnamed_addr #0 {`
  - globals: `@.str = private unnamed_addr constant [12 x i8] c"Wrong input\00", align 1`
  - external declarations: `declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1`
