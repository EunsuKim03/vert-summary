# c_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD

- Source: `SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_processed.c`
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
  - UB-related
- Evidence:
  - integer arithmetic: `%27 = add nsw i32 %21, %26`
  - comparisons: `%15 = icmp slt i32 %13, %14`
  - control flow: `br label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%19 = sext i32 %18 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {`

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
  - UB-related
- Evidence:
  - integer arithmetic: `%14 = add nsw i32 %13, %11`
  - bitwise/shift: `%50 = and i64 %49, 4294967295`
  - comparisons: `%4 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %4, label %5, label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef %0, i32* nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %2 to i64`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef %0, i32* nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {`

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
  - integer arithmetic: `%10 = add nsw i64 %9, -4`
  - bitwise/shift: `%9 = and i64 %6, 4294967292`
  - comparisons: `%4 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %4, label %5, label %183`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* nocapture noundef %0, i32* nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i32 %2 to i64`
  - calls/intrinsics: `%92 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %91)`
  - vector/SIMD: `%19 = phi <2 x i64> [ zeroinitializer, %15 ], [ %57, %17 ]`
  - UB-related: `define dso_local i32 @f_gold(i32* nocapture noundef %0, i32* nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #1`
