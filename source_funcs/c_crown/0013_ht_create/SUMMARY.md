# c_crown/0013_ht_create

- Source: `ht_reprocessed.c`
- Source note: processed source; reprocessed source: INITIAL_CAPACITY from ht.c

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
  - aggregates
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%20 = add i64 %19, 1`
  - comparisons: `%6 = icmp eq %struct.ht* %5, null`
  - control flow: `br i1 %6, label %7, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local %struct.ht* @ht_create() #0 {`
  - casts/conversions: `%4 = bitcast i8* %3 to %struct.ht*`
  - calls/intrinsics: `%3 = call noalias i8* @malloc(i64 noundef 24) #2`
  - aggregates: `%struct.ht = type { %struct.ht_entry*, i64, i64 }`
  - UB-related: `%3 = call noalias i8* @malloc(i64 noundef 24) #2`
  - external declarations: `declare noalias i8* @malloc(i64 noundef) #1`

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
  - aggregates
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%16 = add nuw i64 %12, 1`
  - comparisons: `%3 = icmp eq i8* %1, null`
  - control flow: `br i1 %3, label %11, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noalias %struct.ht* @ht_create() local_unnamed_addr #0 {`
  - casts/conversions: `%2 = bitcast i8* %1 to %struct.ht*`
  - calls/intrinsics: `%1 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #4`
  - aggregates: `%struct.ht = type { %struct.ht_entry*, i64, i64 }`
  - UB-related: `%1 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #4`
  - external declarations: `declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - vector/SIMD
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%16 = add nuw i64 %12, 1`
  - comparisons: `%3 = icmp eq i8* %1, null`
  - control flow: `br i1 %3, label %11, label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noalias %struct.ht* @ht_create() local_unnamed_addr #0 {`
  - casts/conversions: `%2 = bitcast i8* %1 to %struct.ht*`
  - calls/intrinsics: `%1 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #4`
  - aggregates: `%struct.ht = type { %struct.ht_entry*, i64, i64 }`
  - vector/SIMD: `%6 = bitcast i64* %5 to <2 x i64>*`
  - UB-related: `%1 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #4`
  - external declarations: `declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1`
