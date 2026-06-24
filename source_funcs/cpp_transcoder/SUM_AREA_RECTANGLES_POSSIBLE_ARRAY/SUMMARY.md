# cpp_transcoder/SUM_AREA_RECTANGLES_POSSIBLE_ARRAY

- Source: `SUM_AREA_RECTANGLES_POSSIBLE_ARRAY_reprocessed.cpp`
- Source note: processed source; reprocessed source: <algorithm> for sort

## O0

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
  - integer arithmetic: `%27 = add nsw i32 %26, 1`
  - bitwise/shift: `%48 = and i64 %47, 1`
  - comparisons: `%18 = icmp slt i32 %16, %17`
  - control flow: `br label %15`
  - loop: `llvm.loop metadata`
  - recursion: `_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_T1_ calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) #4 {`
  - casts/conversions: `%13 = sext i32 %12 to i64`
  - calls/intrinsics: `call void @_ZSt4sortIPiSt7greaterIiEEvT_S3_T0_(i32* noundef %10, i32* noundef %14)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

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
  - integer arithmetic: `%22 = add nsw i32 %15, 1`
  - bitwise/shift: `%8 = shl nuw nsw i64 %7, 1`
  - comparisons: `%5 = icmp eq i32 %1, 0`
  - control flow: `br i1 %5, label %10, label %6`
  - loop: `llvm.loop metadata`
  - recursion: `_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_T1_ calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - calls/intrinsics: `%7 = call i64 @llvm.ctlz.i64(i64 %3, i1 true) #6, !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
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
  - integer arithmetic: `%21 = add nsw i32 %14, 1`
  - bitwise/shift: `%8 = shl nuw nsw i64 %7, 1`
  - comparisons: `%5 = icmp eq i32 %1, 0`
  - control flow: `br i1 %5, label %11, label %6`
  - loop: `llvm.loop metadata`
  - recursion: `_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_T1_ calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - calls/intrinsics: `%7 = tail call i64 @llvm.ctlz.i64(i64 %3, i1 true) #6, !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
