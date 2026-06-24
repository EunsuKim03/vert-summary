# c_crown/0005_buffer_new

- Source: `buffer_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%15 = add i64 %14, 1`
  - comparisons: `%8 = icmp ne %struct.buffer_t* %7, null`
  - control flow: `br i1 %8, label %10, label %9`
  - memory/pointer: `define dso_local %struct.buffer_t* @buffer_new_with_size(i64 noundef %0) #0 {`
  - casts/conversions: `%6 = bitcast i8* %5 to %struct.buffer_t*`
  - calls/intrinsics: `%5 = call noalias i8* @malloc(i64 noundef 24) #2`
  - aggregates: `%struct.buffer_t = type { i64, i8*, i8* }`
  - UB-related: `define dso_local %struct.buffer_t* @buffer_new_with_size(i64 noundef %0) #0 {`
  - external declarations: `declare noalias i8* @malloc(i64 noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%7 = add i64 %0, 1`
  - comparisons: `%4 = icmp eq i8* %2, null`
  - control flow: `br i1 %4, label %11, label %5`
  - memory/pointer: `define dso_local noalias %struct.buffer_t* @buffer_new_with_size(i64 noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = bitcast i8* %2 to %struct.buffer_t*`
  - calls/intrinsics: `%2 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #2`
  - aggregates: `%struct.buffer_t = type { i64, i8*, i8* }`
  - UB-related: `define dso_local noalias %struct.buffer_t* @buffer_new_with_size(i64 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%7 = add i64 %0, 1`
  - comparisons: `%4 = icmp eq i8* %2, null`
  - control flow: `br i1 %4, label %11, label %5`
  - memory/pointer: `define dso_local noalias %struct.buffer_t* @buffer_new_with_size(i64 noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = bitcast i8* %2 to %struct.buffer_t*`
  - calls/intrinsics: `%2 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #2`
  - aggregates: `%struct.buffer_t = type { i64, i8*, i8* }`
  - UB-related: `define dso_local noalias %struct.buffer_t* @buffer_new_with_size(i64 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1`
