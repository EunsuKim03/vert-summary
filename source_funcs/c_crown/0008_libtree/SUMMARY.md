# c_crown/0008_libtree

- Source: `libtree_reprocessed.c`
- Source note: processed source; reprocessed source: removed static marker from function definitions

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
  - integer arithmetic: `%12 = udiv i64 %11, 10`
  - comparisons: `%15 = icmp ugt i64 %14, 0`
  - control flow: `br label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @utoa(i8* noundef %0, i64 noundef %1) #0 {`
  - casts/conversions: `%19 = ptrtoint i8* %17 to i64`
  - UB-related: `define dso_local void @utoa(i8* noundef %0, i64 noundef %1) #0 {`

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
  - integer arithmetic: `%13 = add i64 %10, -1`
  - bitwise/shift: `%24 = xor i1 %23, true`
  - comparisons: `%3 = icmp ugt i64 %1, 1`
  - control flow: `ret void`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @utoa(i8* nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%25 = zext i1 %24 to i32`
  - UB-related: `define dso_local void @utoa(i8* nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {`

## O2

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
  - integer arithmetic: `%17 = add nuw i64 %10, 1`
  - comparisons: `%3 = icmp ugt i64 %1, 1`
  - control flow: `ret void`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @utoa(i8* nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%20 = zext i1 %19 to i32`
  - UB-related: `define dso_local void @utoa(i8* nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {`
