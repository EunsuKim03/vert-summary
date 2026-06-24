# c_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1

- Source: `FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1_processed.c`
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
  - integer arithmetic: `%20 = sub nsw i32 %19, 2`
  - comparisons: `%21 = icmp slt i32 %18, %20`
  - control flow: `br label %17`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - casts/conversions: `%14 = sext i32 %13 to i64`
  - calls/intrinsics: `%16 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %11, i32* noundef %15)`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {`
  - globals: `@.str = private unnamed_addr constant [22 x i8] c"Triplet is %d, %d, %d\00", align 1`
  - external declarations: `declare i32 @sort(...) #1`

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
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%7 = add i32 %1, -2`
  - bitwise/shift: `%44 = xor i1 %41, true`
  - comparisons: `%8 = icmp sgt i32 %1, 2`
  - control flow: `br i1 %8, label %9, label %48`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = sext i32 %1 to i64`
  - calls/intrinsics: `%6 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #3`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - globals: `@.str = private unnamed_addr constant [22 x i8] c"Triplet is %d, %d, %d\00", align 1`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`

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
  - integer arithmetic: `%7 = add i32 %1, -2`
  - bitwise/shift: `%44 = xor i1 %41, true`
  - comparisons: `%8 = icmp sgt i32 %1, 2`
  - control flow: `br i1 %8, label %9, label %48`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = sext i32 %1 to i64`
  - calls/intrinsics: `%6 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #3`
  - UB-related: `define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {`
  - globals: `@.str = private unnamed_addr constant [22 x i8] c"Triplet is %d, %d, %d\00", align 1`
  - external declarations: `declare i32 @sort(...) local_unnamed_addr #1`
