# c_transcoder/SUM_PAIRWISE_PRODUCTS_2

- Source: `SUM_PAIRWISE_PRODUCTS_2_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Compiler messages:
  - `benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_processed.c:11:42: warning: sizeof on array function parameter will return size of 'int *' instead of 'int[]'`
  - `int len(int arr[]) { return ((int)(sizeof(arr) / sizeof(arr)[0])); }`
  - `                                         ^`
  - `benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_processed.c:11:13: note: declared here`
  - `int len(int arr[]) { return ((int)(sizeof(arr) / sizeof(arr)[0])); }`
  - `            ^`
  - `benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_processed.c:11:48: warning: 'sizeof (arr)' will return the size of the pointer, not the array itself [-Wsizeo`
  - `int len(int arr[]) { return ((int)(sizeof(arr) / sizeof(arr)[0])); }`
- Evidence:
  - integer arithmetic: `%11 = sub nsw i32 %7, %10`
  - comparisons: `%7 = icmp slt i32 %5, %6`
  - control flow: `br i1 %7, label %8, label %10`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%6 = bitcast i8* %5 to i32*`
  - calls/intrinsics: `call void @qsort(i8* noundef %6, i64 noundef %8, i64 noundef 4, i32 (i8*, i8*)* noundef @cmpfunc)`
  - UB-related: `define dso_local i32 @min(i32 noundef %0, i32 noundef %1) #0 {`
  - external declarations: `declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Compiler messages:
  - `benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_processed.c:11:42: warning: sizeof on array function parameter will return size of 'int *' instead of 'int[]'`
  - `int len(int arr[]) { return ((int)(sizeof(arr) / sizeof(arr)[0])); }`
  - `                                         ^`
  - `benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_processed.c:11:13: note: declared here`
  - `int len(int arr[]) { return ((int)(sizeof(arr) / sizeof(arr)[0])); }`
  - `            ^`
  - `benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_processed.c:11:48: warning: 'sizeof (arr)' will return the size of the pointer, not the array itself [-Wsizeo`
  - `int len(int arr[]) { return ((int)(sizeof(arr) / sizeof(arr)[0])); }`
- Evidence:
  - integer arithmetic: `%7 = sub nsw i32 %4, %6`
  - comparisons: `%3 = icmp slt i32 %0, %1`
  - control flow: `%4 = select i1 %3, i32 %0, i32 %1`
  - memory/pointer: `define dso_local i32 @cmpfunc(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #1 {`
  - casts/conversions: `%3 = bitcast i8* %0 to i32*`
  - calls/intrinsics: `call void @qsort(i8* noundef %3, i64 noundef %4, i64 noundef 4, i32 (i8*, i8*)* noundef nonnull @cmpfunc) #4`
  - UB-related: `define dso_local i32 @min(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #3`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Compiler messages:
  - `benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_processed.c:11:42: warning: sizeof on array function parameter will return size of 'int *' instead of 'int[]'`
  - `int len(int arr[]) { return ((int)(sizeof(arr) / sizeof(arr)[0])); }`
  - `                                         ^`
  - `benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_processed.c:11:13: note: declared here`
  - `int len(int arr[]) { return ((int)(sizeof(arr) / sizeof(arr)[0])); }`
  - `            ^`
  - `benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_processed.c:11:48: warning: 'sizeof (arr)' will return the size of the pointer, not the array itself [-Wsizeo`
  - `int len(int arr[]) { return ((int)(sizeof(arr) / sizeof(arr)[0])); }`
- Evidence:
  - integer arithmetic: `%7 = sub nsw i32 %4, %6`
  - comparisons: `%3 = icmp slt i32 %0, %1`
  - control flow: `%4 = select i1 %3, i32 %0, i32 %1`
  - memory/pointer: `define dso_local i32 @cmpfunc(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #1 {`
  - casts/conversions: `%3 = bitcast i8* %0 to i32*`
  - calls/intrinsics: `tail call void @qsort(i8* noundef %3, i64 noundef %4, i64 noundef 4, i32 (i8*, i8*)* noundef nonnull @cmpfunc) #4`
  - UB-related: `define dso_local i32 @min(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {`
  - external declarations: `declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #3`
