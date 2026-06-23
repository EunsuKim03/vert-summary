# c_transcoder/PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING

- Source: `PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%25 = add nsw i32 %24, 1`
  - comparisons: `%12 = icmp ult i64 %9, %11`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0, i8 noundef signext %1) #0 {`
  - casts/conversions: `%9 = sext i32 %8 to i64`
  - calls/intrinsics: `%11 = call i64 @strlen(i8* noundef %10)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0, i8 noundef signext %1) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%14 = add nuw nsw i32 %9, %13`
  - comparisons: `%4 = icmp eq i64 %3, 0`
  - control flow: `br i1 %4, label %5, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {`
  - casts/conversions: `%13 = zext i1 %12 to i32`
  - calls/intrinsics: `%3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, vector/SIMD, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%13 = add i64 %8, -8`
  - bitwise/shift: `%8 = and i64 %3, -8`
  - comparisons: `%4 = icmp eq i64 %3, 0`
  - control flow: `br i1 %4, label %82, label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {`
  - casts/conversions: `%26 = bitcast i8* %25 to <4 x i8>*`
  - calls/intrinsics: `%3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - vector/SIMD: `%9 = insertelement <4 x i8> poison, i8 %1, i64 0`
  - UB-related: `define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`
