# c_transcoder/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK

- Source: `MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%18 = srem i32 %17, 10`
  - comparisons: `%10 = icmp ne i32 %9, 0`
  - control flow: `br label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%30 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %24, i32 noundef %29)`
  - calls/intrinsics: `%24 = call i32 @abs(i32 noundef %23) #3`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare i32 @min(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%9 = srem i32 %6, 10`
  - bitwise/shift: `%3 = or i32 %0, %1`
  - comparisons: `%4 = icmp eq i32 %3, 0`
  - control flow: `br i1 %4, label %23, label %5`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%14 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %12, i32 noundef %13) #3`
  - calls/intrinsics: `%12 = call i32 @llvm.abs.i32(i32 %11, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%9 = srem i32 %6, 10`
  - bitwise/shift: `%3 = or i32 %0, %1`
  - comparisons: `%4 = icmp eq i32 %3, 0`
  - control flow: `br i1 %4, label %23, label %5`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%14 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %12, i32 noundef %13) #3`
  - calls/intrinsics: `%12 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @min(...) local_unnamed_addr #1`
