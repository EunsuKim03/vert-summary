# c_crown/0012_buffer_resize

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
  - integer arithmetic: `%16 = add i64 %15, 1`
  - comparisons: `%25 = icmp ne i8* %24, null`
  - control flow: `br i1 %25, label %27, label %26`
  - memory/pointer: `define dso_local i32 @buffer_resize(%struct.buffer_t* noundef %0, i64 noundef %1) #0 {`
  - casts/conversions: `%7 = call i32 (i32, i64, ...) bitcast (i32 (...)* @nearest_multiple_of to i32 (i32, i64, ...)*)(i32 noundef 1024, i64 noundef %6)`
  - calls/intrinsics: `%7 = call i32 (i32, i64, ...) bitcast (i32 (...)* @nearest_multiple_of to i32 (i32, i64, ...)*)(i32 noundef 1024, i64 noundef %6)`
  - aggregates: `%struct.buffer_t = type { i64, i8*, i8* }`
  - UB-related: `define dso_local i32 @buffer_resize(%struct.buffer_t* noundef %0, i64 noundef %1) #0 {`
  - external declarations: `declare i32 @nearest_multiple_of(...) #1`

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
  - integer arithmetic: `%8 = add nsw i64 %4, 1`
  - comparisons: `%11 = icmp eq i8* %9, null`
  - control flow: `br i1 %11, label %14, label %12`
  - memory/pointer: `define dso_local i32 @buffer_resize(%struct.buffer_t* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = call i32 (i32, i64, ...) bitcast (i32 (...)* @nearest_multiple_of to i32 (i32, i64, ...)*)(i32 noundef 1024, i64 noundef %1) #6`
  - calls/intrinsics: `%3 = call i32 (i32, i64, ...) bitcast (i32 (...)* @nearest_multiple_of to i32 (i32, i64, ...)*)(i32 noundef 1024, i64 noundef %1) #6`
  - aggregates: `%struct.buffer_t = type { i64, i8*, i8* }`
  - UB-related: `define dso_local i32 @buffer_resize(%struct.buffer_t* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @nearest_multiple_of(...) local_unnamed_addr #1`

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
  - integer arithmetic: `%8 = add nsw i64 %4, 1`
  - comparisons: `%11 = icmp eq i8* %9, null`
  - control flow: `br i1 %11, label %14, label %12`
  - memory/pointer: `define dso_local i32 @buffer_resize(%struct.buffer_t* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = tail call i32 (i32, i64, ...) bitcast (i32 (...)* @nearest_multiple_of to i32 (i32, i64, ...)*)(i32 noundef 1024, i64 noundef %1) #6`
  - calls/intrinsics: `%3 = tail call i32 (i32, i64, ...) bitcast (i32 (...)* @nearest_multiple_of to i32 (i32, i64, ...)*)(i32 noundef 1024, i64 noundef %1) #6`
  - aggregates: `%struct.buffer_t = type { i64, i8*, i8* }`
  - UB-related: `define dso_local i32 @buffer_resize(%struct.buffer_t* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @nearest_multiple_of(...) local_unnamed_addr #1`
