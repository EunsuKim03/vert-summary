# c_transcoder/REMAINDER_7_LARGE_NUMBERS

- Source: `REMAINDER_7_LARGE_NUMBERS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%11 = sub nsw i32 %10, 1`
  - comparisons: `%14 = icmp sge i32 %13, 0`
  - control flow: `br label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - casts/conversions: `%8 = bitcast [6 x i32]* %3 to i8*`
  - calls/intrinsics: `call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([6 x i32]* @__const.f_gold.series to i8*), i64 24, i1 false)`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) #0 {`
  - globals: `@__const.f_gold.series = private unnamed_addr constant [6 x i32] [i32 1, i32 3, i32 2, i32 -1, i32 -3, i32 -2], align 16`
  - external declarations: `declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%13 = add nsw i64 %10, -1`
  - comparisons: `%3 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %3, label %4, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%2 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - calls/intrinsics: `%2 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - globals: `@__const.f_gold.series = private unnamed_addr constant [6 x i32] [i32 1, i32 3, i32 2, i32 -1, i32 -3, i32 -2], align 16`
  - external declarations: `declare i32 @len(...) local_unnamed_addr #1`

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
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%12 = add nsw i64 %9, -1`
  - bitwise/shift: `%13 = and i64 %12, 4294967295`
  - comparisons: `%3 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %3, label %4, label %32`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - calls/intrinsics: `%2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2`
  - UB-related: `define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {`
  - globals: `@__const.f_gold.series = private unnamed_addr constant [6 x i32] [i32 1, i32 3, i32 2, i32 -1, i32 -3, i32 -2], align 16`
  - external declarations: `declare i32 @len(...) local_unnamed_addr #1`
