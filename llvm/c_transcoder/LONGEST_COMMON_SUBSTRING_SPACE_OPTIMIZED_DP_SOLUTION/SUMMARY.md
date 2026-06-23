# c_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION

- Source: `LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%22 = mul nuw i64 2, %20`
  - comparisons: `%27 = icmp sle i32 %25, %26`
  - control flow: `br label %24`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) #0 {`
  - casts/conversions: `%15 = trunc i64 %14 to i32`
  - calls/intrinsics: `%14 = call i64 @strlen(i8* noundef %13)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%13 = add i64 %4, 1`
  - bitwise/shift: `%5 = and i64 %4, 4294967295`
  - comparisons: `%9 = icmp eq i64 %8, 0`
  - control flow: `br i1 %9, label %10, label %38`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - casts/conversions: `%25 = zext i32 %19 to i64`
  - calls/intrinsics: `%3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%13 = add i64 %4, 1`
  - bitwise/shift: `%5 = and i64 %4, 4294967295`
  - comparisons: `%9 = icmp eq i64 %8, 0`
  - control flow: `br i1 %9, label %10, label %34`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - casts/conversions: `%27 = zext i32 %19 to i64`
  - calls/intrinsics: `%3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`
