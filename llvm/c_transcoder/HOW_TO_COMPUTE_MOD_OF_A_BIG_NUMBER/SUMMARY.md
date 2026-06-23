# c_transcoder/HOW_TO_COMPUTE_MOD_OF_A_BIG_NUMBER

- Source: `HOW_TO_COMPUTE_MOD_OF_A_BIG_NUMBER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%15 = mul nsw i32 %14, 10`
  - comparisons: `%12 = icmp ult i64 %9, %11`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0, i32 noundef %1) #0 {`
  - casts/conversions: `%9 = sext i32 %8 to i64`
  - calls/intrinsics: `%11 = call i64 @strlen(i8* noundef %10)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = mul nsw i32 %9, 10`
  - comparisons: `%4 = icmp eq i64 %3, 0`
  - control flow: `br i1 %4, label %5, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%13 = sext i8 %12 to i32`
  - calls/intrinsics: `%3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%11 = mul i32 %44, 10`
  - bitwise/shift: `%6 = and i64 %3, 1`
  - comparisons: `%4 = icmp eq i64 %3, 0`
  - control flow: `br i1 %4, label %24, label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%21 = sext i8 %20 to i32`
  - calls/intrinsics: `%3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`
