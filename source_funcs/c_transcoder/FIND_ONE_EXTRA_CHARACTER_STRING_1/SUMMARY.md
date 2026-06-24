# c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1

- Source: `FIND_ONE_EXTRA_CHARACTER_STRING_1_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%24 = add nsw i32 %23, 1`
  - bitwise/shift: `%21 = xor i32 %20, %19`
  - comparisons: `%12 = icmp ult i64 %9, %11`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local signext i8 @f_gold(i8* noundef %0, i8* noundef %1) #0 {`
  - casts/conversions: `%9 = sext i32 %8 to i64`
  - calls/intrinsics: `%11 = call i64 @strlen(i8* noundef %10)`
  - UB-related: `define dso_local signext i8 @f_gold(i8* noundef %0, i8* noundef %1) #0 {`
  - external declarations: `declare i64 @strlen(i8* noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%16 = add nuw nsw i64 %10, 1`
  - bitwise/shift: `%15 = xor i32 %11, %14`
  - comparisons: `%4 = icmp eq i64 %3, 0`
  - control flow: `br i1 %4, label %5, label %9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - casts/conversions: `%14 = zext i8 %13 to i32`
  - calls/intrinsics: `%3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - UB-related: `define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - vector/SIMD
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%9 = add i64 %8, -8`
  - bitwise/shift: `%8 = and i64 %3, -8`
  - comparisons: `%4 = icmp eq i64 %3, 0`
  - control flow: `br i1 %4, label %72, label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - casts/conversions: `%22 = bitcast i8* %21 to <4 x i8>*`
  - calls/intrinsics: `%3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)`
  - vector/SIMD: `%18 = phi <4 x i32> [ zeroinitializer, %14 ], [ %40, %16 ]`
  - UB-related: `define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1`
