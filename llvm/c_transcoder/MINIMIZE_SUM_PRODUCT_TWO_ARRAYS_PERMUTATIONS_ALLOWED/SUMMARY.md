# c_transcoder/MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED

- Source: `MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%34 = sub nsw i32 %32, %33`
  - comparisons: `%24 = icmp slt i32 %22, %23`
  - control flow: `br label %21`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%12 = sext i32 %11 to i64`
  - calls/intrinsics: `%14 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %9, i32* noundef %13)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {`
  - external declarations: `declare i32 @sort(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%21 = add i32 %20, %2`
  - bitwise/shift: `%20 = xor i32 %19, -1`
  - comparisons: `%9 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %9, label %10, label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = sext i32 %2 to i64`
  - calls/intrinsics: `%6 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #2`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%14 = add nsw i64 %11, -1`
  - bitwise/shift: `%20 = or i1 %18, %19`
  - comparisons: `%9 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %9, label %10, label %81`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = sext i32 %2 to i64`
  - calls/intrinsics: `%6 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #3`
  - vector/SIMD: `%25 = phi <4 x i32> [ zeroinitializer, %21 ], [ %49, %23 ]`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`
