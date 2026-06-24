# c_crown/0014_libcsv_init

- Source: `csvinfo_reprocessed.c`
- Source note: processed source; reprocessed source: CSV_COMMA from csvinfo.c, CSV_QUOTE from csvinfo.c, MEM_BLK_SIZE from csvinfo.c, ROW_NOT_BEGUN from csvinfo.c

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - aggregates
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%11 = add i64 %10, 1`
  - comparisons: `%7 = icmp eq %struct.csv_parser* %6, null`
  - control flow: `ret void`
  - memory/pointer: `define dso_local void @cb1(i8* noundef %0, i64 noundef %1, i8* noundef %2) #0 {`
  - casts/conversions: `%8 = bitcast i8* %7 to %struct.counts*`
  - aggregates: `%struct.counts = type { i64, i64 }`
  - UB-related: `define dso_local void @cb1(i8* noundef %0, i64 noundef %1, i8* noundef %2) #0 {`
  - external declarations: `declare i8* @realloc(i8* noundef, i64 noundef) #1`

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
  - integer arithmetic: `%6 = add i64 %5, 1`
  - comparisons: `%3 = icmp eq %struct.csv_parser* %0, null`
  - control flow: `ret void`
  - memory/pointer: `define dso_local void @cb1(i8* nocapture noundef readnone %0, i64 noundef %1, i8* nocapture noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = bitcast i8* %2 to i64*`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(44) %6, i8 0, i64 44, i1 false)`
  - aggregates: `%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }`
  - UB-related: `define dso_local void @cb1(i8* nocapture noundef readnone %0, i64 noundef %1, i8* nocapture noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) #2`

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
  - integer arithmetic: `%6 = add i64 %5, 1`
  - comparisons: `%3 = icmp eq %struct.csv_parser* %0, null`
  - control flow: `ret void`
  - memory/pointer: `define dso_local void @cb1(i8* nocapture noundef readnone %0, i64 noundef %1, i8* nocapture noundef %2) local_unnamed_addr #0 {`
  - casts/conversions: `%4 = bitcast i8* %2 to i64*`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(44) %6, i8 0, i64 44, i1 false)`
  - aggregates: `%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }`
  - UB-related: `define dso_local void @cb1(i8* nocapture noundef readnone %0, i64 noundef %1, i8* nocapture noundef %2) local_unnamed_addr #0 {`
  - external declarations: `declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) #2`
