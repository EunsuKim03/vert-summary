# c_transcoder/MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES

- Source: `MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%10 = sub nsw i32 %9, 2`
  - comparisons: `%11 = icmp sle i32 %8, %10`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%30 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %24, i32 noundef %29)`
  - calls/intrinsics: `%30 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %24, i32 noundef %29)`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`
  - external declarations: `declare i32 @max(...) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%4 = add i32 %0, -1`
  - comparisons: `%2 = icmp slt i32 %0, 3`
  - control flow: `br i1 %2, label %8, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%20 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %14, i32 noundef %19) #2`
  - calls/intrinsics: `%20 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %14, i32 noundef %19) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %0, -1`
  - comparisons: `%2 = icmp slt i32 %0, 3`
  - control flow: `br i1 %2, label %8, label %3`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%20 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %14, i32 noundef %19) #2`
  - calls/intrinsics: `%20 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %14, i32 noundef %19) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(...) local_unnamed_addr #1`
