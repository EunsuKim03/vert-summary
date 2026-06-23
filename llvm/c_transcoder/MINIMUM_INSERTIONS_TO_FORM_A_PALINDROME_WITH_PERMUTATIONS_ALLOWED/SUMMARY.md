# c_transcoder/MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_WITH_PERMUTATIONS_ALLOWED

- Source: `MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_WITH_PERMUTATIONS_ALLOWED_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%23 = sub nsw i32 %22, 97`
  - comparisons: `%15 = icmp slt i32 %13, %14`
  - control flow: `br label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%10 = trunc i64 %9 to i32`
  - calls/intrinsics: `%9 = call i64 @strlen(i8* noundef %8)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%15 = add nsw i64 %14, -97`
  - bitwise/shift: `%9 = and i64 %3, 4294967295`
  - comparisons: `%6 = icmp sgt i32 %4, 0`
  - control flow: `br i1 %6, label %8, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `%3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%12 = sub nsw i64 %8, %9`
  - bitwise/shift: `%8 = and i64 %3, 4294967295`
  - comparisons: `%6 = icmp sgt i32 %4, 0`
  - control flow: `br i1 %6, label %7, label %45`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `%3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - vector/SIMD: `%46 = bitcast [26 x i32]* %2 to <4 x i32>*`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1`
