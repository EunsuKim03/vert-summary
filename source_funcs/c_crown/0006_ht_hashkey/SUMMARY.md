# c_crown/0006_ht_hashkey

- Source: `ht_reprocessed.c`
- Source note: processed source; reprocessed source: FNV_OFFSET from ht.c, FNV_PRIME from ht.c

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
  - UB-related
- Evidence:
  - integer arithmetic: `%17 = mul i64 %16, 1099511628211`
  - bitwise/shift: `%15 = xor i64 %14, %13`
  - comparisons: `%9 = icmp ne i8 %8, 0`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i64 @hash_key(i8* noundef %0) #0 {`
  - casts/conversions: `%13 = zext i8 %12 to i64`
  - UB-related: `define dso_local i64 @hash_key(i8* noundef %0) #0 {`

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
  - integer arithmetic: `%12 = mul i64 %11, 1099511628211`
  - bitwise/shift: `%11 = xor i64 %9, %10`
  - comparisons: `%3 = icmp eq i8 %2, 0`
  - control flow: `br i1 %3, label %4, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i64 @hash_key(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%10 = zext i8 %7 to i64`
  - UB-related: `define dso_local i64 @hash_key(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`

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
  - UB-related
- Evidence:
  - integer arithmetic: `%12 = mul i64 %11, 1099511628211`
  - bitwise/shift: `%11 = xor i64 %9, %10`
  - comparisons: `%3 = icmp eq i8 %2, 0`
  - control flow: `br i1 %3, label %4, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local i64 @hash_key(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%10 = zext i8 %7 to i64`
  - UB-related: `define dso_local i64 @hash_key(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {`
