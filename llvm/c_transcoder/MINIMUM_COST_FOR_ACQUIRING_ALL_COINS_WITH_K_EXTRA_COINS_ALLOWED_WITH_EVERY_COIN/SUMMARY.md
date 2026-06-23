# c_transcoder/MINIMUM_COST_FOR_ACQUIRING_ALL_COINS_WITH_K_EXTRA_COINS_ALLOWED_WITH_EVERY_COIN

- Source: `MINIMUM_COST_FOR_ACQUIRING_ALL_COINS_WITH_K_EXTRA_COINS_ALLOWED_WITH_EVERY_COIN_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, floating-point arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%20 = add nsw i32 %19, 1`
  - floating-point arithmetic: `%18 = fmul double 1.000000e+00, %17`
  - comparisons: `%29 = icmp sle i32 %26, %28`
  - control flow: `br label %25`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%13 = sext i32 %12 to i64`
  - calls/intrinsics: `%15 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %10, i32* noundef %14)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - external declarations: `declare i32 @sort(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, floating-point arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%8 = add nsw i32 %2, 1`
  - floating-point arithmetic: `%10 = fdiv double %7, %9`
  - comparisons: `%13 = icmp sgt i32 %12, 0`
  - control flow: `br i1 %13, label %14, label %16`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = sext i32 %1 to i64`
  - calls/intrinsics: `%6 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #3`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, floating-point arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%8 = add nsw i32 %2, 1`
  - bitwise/shift: `%18 = and i64 %15, 4294967288`
  - floating-point arithmetic: `%10 = fdiv double %7, %9`
  - comparisons: `%13 = icmp sgt i32 %12, 0`
  - control flow: `br i1 %13, label %14, label %101`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = sext i32 %1 to i64`
  - calls/intrinsics: `%6 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #4`
  - vector/SIMD: `%28 = phi <4 x i32> [ zeroinitializer, %24 ], [ %64, %26 ]`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`
