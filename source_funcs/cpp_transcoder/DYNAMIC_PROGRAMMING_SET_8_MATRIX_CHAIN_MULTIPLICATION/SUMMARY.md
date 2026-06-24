# cpp_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION

- Source: `DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_reprocessed.cpp`
- Source note: processed source; reprocessed source: <climits> for INT_MAX

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
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
  - comparisons: `%13 = icmp eq i32 %11, %12`
  - control flow: `br i1 %13, label %14, label %15`
  - loop: `llvm.loop metadata`
  - recursion: `_Z6f_goldPiii calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - casts/conversions: `%35 = sext i32 %34 to i64`
  - calls/intrinsics: `%25 = call noundef i32 @_Z6f_goldPiii(i32* noundef %22, i32 noundef %23, i32 noundef %24)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%8 = add nsw i32 %1, -1`
  - comparisons: `%4 = icmp eq i32 %1, %2`
  - control flow: `br i1 %4, label %34, label %5`
  - loop: `llvm.loop metadata`
  - recursion: `_Z6f_goldPiii calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%9 = sext i32 %8 to i64`
  - calls/intrinsics: `%21 = call noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %20)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%8 = add nsw i32 %1, -1`
  - comparisons: `%4 = icmp eq i32 %1, %2`
  - control flow: `br i1 %4, label %33, label %5`
  - loop: `llvm.loop metadata`
  - recursion: `_Z6f_goldPiii calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%9 = sext i32 %8 to i64`
  - calls/intrinsics: `%20 = tail call noundef i32 @_Z6f_goldPiii(i32* noundef nonnull %0, i32 noundef %1, i32 noundef %19)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
