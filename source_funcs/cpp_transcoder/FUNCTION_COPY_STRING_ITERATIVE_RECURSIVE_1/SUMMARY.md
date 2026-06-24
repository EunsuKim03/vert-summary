# cpp_transcoder/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1

- Source: `FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%28 = add nsw i32 %27, 1`
  - comparisons: `%22 = icmp eq i32 %21, 0`
  - control flow: `br i1 %22, label %23, label %24`
  - recursion: `_Z6f_goldPcS_i calls itself`
  - memory/pointer: `define dso_local void @_Z6f_goldPcS_i(i8* noundef %0, i8* noundef %1, i32 noundef %2) #4 {`
  - casts/conversions: `%9 = sext i32 %8 to i64`
  - calls/intrinsics: `call void @_Z6f_goldPcS_i(i8* noundef %25, i8* noundef %26, i32 noundef %28)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPcS_i(i8* noundef %0, i8* noundef %1, i32 noundef %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%11 = add nsw i32 %2, 1`
  - comparisons: `%9 = icmp eq i8 %8, 0`
  - control flow: `br i1 %9, label %12, label %10`
  - recursion: `_Z6f_goldPcS_i calls itself`
  - memory/pointer: `define dso_local void @_Z6f_goldPcS_i(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%4 = sext i32 %2 to i64`
  - calls/intrinsics: `call void @_Z6f_goldPcS_i(i8* noundef %0, i8* noundef %1, i32 noundef %11)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPcS_i(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%12 = add i64 %6, 1`
  - comparisons: `%11 = icmp eq i8 %10, 0`
  - control flow: `br label %5`
  - loop: `br i1 %11, label %13, label %5`
  - memory/pointer: `define dso_local void @_Z6f_goldPcS_i(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%4 = sext i32 %2 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPcS_i(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
