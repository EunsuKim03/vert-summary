# c_transcoder/UGLY_NUMBERS

- Source: `UGLY_NUMBERS_processed.c`
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
  - external declarations
- Evidence:
  - integer arithmetic: `%37 = add i32 %36, 1`
  - comparisons: `%21 = icmp ult i32 %19, %20`
  - control flow: `br label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%14 = zext i32 %13 to i64`
  - calls/intrinsics: `%15 = call i8* @llvm.stacksave()`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i8* @llvm.stacksave() #1`

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
  - integer arithmetic: `%22 = add i32 %16, 1`
  - bitwise/shift: `%26 = shl i32 %25, 1`
  - comparisons: `%4 = icmp ugt i32 %0, 1`
  - control flow: `br i1 %4, label %5, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, i64 %2, align 16`
  - casts/conversions: `%2 = zext i32 %0 to i64`
  - calls/intrinsics: `%17 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %12, i32 noundef %11) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`

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
  - external declarations
- Evidence:
  - integer arithmetic: `%20 = add i32 %14, 1`
  - bitwise/shift: `%24 = shl i32 %23, 1`
  - comparisons: `%4 = icmp ugt i32 %0, 1`
  - control flow: `br i1 %4, label %7, label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, i64 %2, align 16`
  - casts/conversions: `%2 = zext i32 %0 to i64`
  - calls/intrinsics: `%15 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %10, i32 noundef %9) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`
