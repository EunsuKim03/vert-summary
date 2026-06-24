# cpp_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM

- Source: `DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_processed.cpp`
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
  - integer arithmetic: `%21 = sub nsw i32 %20, 1`
  - comparisons: `%13 = icmp eq i32 %12, 0`
  - control flow: `br i1 %13, label %17, label %14`
  - recursion: `_Z6f_goldiPiS_i calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPiS_i(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) #4 {`
  - casts/conversions: `%22 = sext i32 %21 to i64`
  - calls/intrinsics: `%33 = call noundef i32 @_Z6f_goldiPiS_i(i32 noundef %28, i32* noundef %29, i32* noundef %30, i32 noundef %32)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPiS_i(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
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
  - integer arithmetic: `%9 = add nsw i32 %3, -1`
  - bitwise/shift: `%7 = or i1 %6, %5`
  - comparisons: `%5 = icmp eq i32 %3, 0`
  - control flow: `br i1 %7, label %25, label %8`
  - recursion: `_Z6f_goldiPiS_i calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPiS_i(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) local_unnamed_addr #3 {`
  - casts/conversions: `%10 = sext i32 %9 to i64`
  - calls/intrinsics: `%15 = call noundef i32 @_Z6f_goldiPiS_i(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %9)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPiS_i(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) local_unnamed_addr #3 {`
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
  - integer arithmetic: `%12 = add nsw i64 %9, -1`
  - comparisons: `%5 = icmp eq i32 %0, 0`
  - control flow: `br i1 %5, label %16, label %6`
  - loop: `br i1 %15, label %8, label %18`
  - recursion: `_Z6f_goldiPiS_i calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPiS_i(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) local_unnamed_addr #3 {`
  - casts/conversions: `%7 = sext i32 %3 to i64`
  - calls/intrinsics: `%23 = tail call noundef i32 @_Z6f_goldiPiS_i(i32 noundef %22, i32* noundef nonnull %1, i32* noundef %2, i32 noundef %19)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPiS_i(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
