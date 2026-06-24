# c_crown/0009_url

- Source: `decode_reprocessed.c`
- Source note: processed source; reprocessed source: URL_PROTOCOL_MAX_LENGTH from decode.c

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%22 = add nsw i32 %21, 1`
  - comparisons: `%9 = icmp slt i32 %7, %8`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local zeroext i1 @url_is_protocol(i8* noundef %0) #0 {`
  - casts/conversions: `%12 = sext i32 %11 to i64`
  - calls/intrinsics: `%16 = call i32 @strcmp(i8* noundef %14, i8* noundef %15) #4`
  - UB-related: `define dso_local zeroext i1 @url_is_protocol(i8* noundef %0) #0 {`
  - globals: `@.str = private unnamed_addr constant [4 x i8] c"aaa\00", align 1`
  - external declarations: `declare i32 @strcmp(i8* noundef, i8* noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%7 = add nuw nsw i64 %6, 1`
  - comparisons: `%4 = icmp eq i32 %3, 0`
  - control flow: `br i1 %4, label %16, label %5`
  - loop: `llvm.loop metadata`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local zeroext i1 @url_is_protocol(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%27 = trunc i64 %26 to i32`
  - calls/intrinsics: `%3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(1) %0) #10`
  - UB-related: `define dso_local zeroext i1 @url_is_protocol(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - globals: `@.str = private unnamed_addr constant [4 x i8] c"aaa\00", align 1`
  - external declarations: `declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%7 = add nsw i32 %6, 3`
  - comparisons: `%4 = icmp eq i32 %3, 0`
  - control flow: `br i1 %4, label %17, label %5`
  - unreachable: `unreachable`
  - memory/pointer: `define dso_local zeroext i1 @url_is_protocol(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = trunc i64 %5 to i32`
  - calls/intrinsics: `%3 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(1) %0) #10`
  - UB-related: `define dso_local zeroext i1 @url_is_protocol(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - globals: `@.str = private unnamed_addr constant [4 x i8] c"aaa\00", align 1`
  - external declarations: `declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #1`
