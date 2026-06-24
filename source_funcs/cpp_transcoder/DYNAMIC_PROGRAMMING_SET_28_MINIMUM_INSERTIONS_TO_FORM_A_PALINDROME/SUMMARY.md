# cpp_transcoder/DYNAMIC_PROGRAMMING_SET_28_MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME

- Source: `DYNAMIC_PROGRAMMING_SET_28_MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_reprocessed.cpp`
- Source note: processed source; reprocessed source: <climits> for INT_MAX

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
  - integer arithmetic: `%22 = sub nsw i32 %21, 1`
  - comparisons: `%12 = icmp sgt i32 %10, %11`
  - control flow: `br i1 %12, label %13, label %14`
  - recursion: `_Z6f_goldPcii calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPcii(i8* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - casts/conversions: `%27 = sext i32 %26 to i64`
  - calls/intrinsics: `%60 = call noundef i32 @_Z6f_goldPcii(i8* noundef %55, i32 noundef %57, i32 noundef %59)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPcii(i8* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
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
  - integer arithmetic: `%8 = add nsw i32 %2, -1`
  - comparisons: `%4 = icmp sgt i32 %1, %2`
  - control flow: `br i1 %4, label %31, label %5`
  - recursion: `_Z6f_goldPcii calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPcii(i8* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%10 = sext i32 %1 to i64`
  - calls/intrinsics: `%23 = call noundef i32 @_Z6f_goldPcii(i8* noundef %0, i32 noundef %22, i32 noundef %8)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPcii(i8* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
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
  - integer arithmetic: `%15 = add nsw i64 %10, -1`
  - bitwise/shift: `%19 = shl i64 %9, 32`
  - comparisons: `%4 = icmp sgt i32 %1, %2`
  - control flow: `br i1 %4, label %38, label %5`
  - loop: `br i1 %37, label %8, label %38`
  - recursion: `_Z6f_goldPcii calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPcii(i8* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%6 = sext i32 %2 to i64`
  - calls/intrinsics: `%44 = tail call noundef i32 @_Z6f_goldPcii(i8* noundef nonnull %0, i32 noundef %42, i32 noundef %43)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPcii(i8* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
