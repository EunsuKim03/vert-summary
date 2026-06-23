# c_transcoder/CHECK_OCCURRENCES_CHARACTER_APPEAR_TOGETHER

- Source: `CHECK_OCCURRENCES_CHARACTER_APPEAR_TOGETHER_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%51 = add nsw i32 %50, 1`
  - comparisons: `%15 = icmp slt i32 %13, %14`
  - control flow: `br label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0, i8 noundef signext %1) #0 {`
  - casts/conversions: `%11 = trunc i64 %10 to i32`
  - calls/intrinsics: `%10 = call i64 @strlen(i8* noundef %9)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0, i8 noundef signext %1) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%29 = add nsw i64 %24, 1`
  - bitwise/shift: `%7 = shl i64 %3, 32`
  - comparisons: `%5 = icmp sgt i32 %4, 0`
  - control flow: `br i1 %5, label %6, label %39`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `%3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%23 = add nsw i64 %22, 1`
  - bitwise/shift: `%7 = shl i64 %3, 32`
  - comparisons: `%5 = icmp sgt i32 %4, 0`
  - control flow: `br i1 %5, label %6, label %37`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = trunc i64 %3 to i32`
  - calls/intrinsics: `%3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`
