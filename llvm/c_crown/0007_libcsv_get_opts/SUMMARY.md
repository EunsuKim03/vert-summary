# c_crown/0007_libcsv_get_opts

- Source: `csvinfo_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: comparisons, control flow, memory/pointer, casts/conversions, aggregates, UB-related
- Evidence:
  - comparisons: `%5 = icmp eq %struct.csv_parser* %4, null`
  - control flow: `br i1 %5, label %6, label %7`
  - memory/pointer: `define dso_local i32 @csv_get_opts(%struct.csv_parser* noundef %0) #0 {`
  - casts/conversions: `%11 = zext i8 %10 to i32`
  - aggregates: `%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }`
  - UB-related: `define dso_local i32 @csv_get_opts(%struct.csv_parser* noundef %0) #0 {`

## O1

- Status: ok
- Features: comparisons, control flow, memory/pointer, casts/conversions, aggregates, UB-related
- Evidence:
  - comparisons: `%2 = icmp eq %struct.csv_parser* %0, null`
  - control flow: `br i1 %2, label %7, label %3`
  - memory/pointer: `define dso_local i32 @csv_get_opts(%struct.csv_parser* noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i8 %5 to i32`
  - aggregates: `%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }`
  - UB-related: `define dso_local i32 @csv_get_opts(%struct.csv_parser* noundef readonly %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: comparisons, control flow, memory/pointer, casts/conversions, aggregates, UB-related
- Evidence:
  - comparisons: `%2 = icmp eq %struct.csv_parser* %0, null`
  - control flow: `br i1 %2, label %7, label %3`
  - memory/pointer: `define dso_local i32 @csv_get_opts(%struct.csv_parser* noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = zext i8 %5 to i32`
  - aggregates: `%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }`
  - UB-related: `define dso_local i32 @csv_get_opts(%struct.csv_parser* noundef readonly %0) local_unnamed_addr #0 {`
