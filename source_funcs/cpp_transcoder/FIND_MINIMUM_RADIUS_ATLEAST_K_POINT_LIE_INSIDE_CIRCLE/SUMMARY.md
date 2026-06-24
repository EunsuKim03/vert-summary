# cpp_transcoder/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE

- Source: `FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_reprocessed.cpp`
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
  - integer arithmetic: `%31 = mul nsw i32 %25, %30`
  - bitwise/shift: `%49 = and i64 %48, 1`
  - comparisons: `%19 = icmp slt i32 %17, %18`
  - control flow: `br label %16`
  - loop: `llvm.loop metadata`
  - recursion: `_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPiS_i(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) #4 {`
  - casts/conversions: `%13 = zext i32 %12 to i64`
  - calls/intrinsics: `%14 = call i8* @llvm.stacksave()`
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
  - integer arithmetic: `%19 = add nsw i32 %0, -1`
  - bitwise/shift: `%16 = shl nuw nsw i64 %15, 1`
  - comparisons: `%7 = icmp sgt i32 %3, 0`
  - control flow: `br i1 %7, label %8, label %10`
  - loop: `llvm.loop metadata`
  - recursion: `_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPiS_i(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 {`
  - casts/conversions: `%5 = zext i32 %3 to i64`
  - calls/intrinsics: `%15 = call i64 @llvm.ctlz.i64(i64 %11, i1 true) #7, !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPiS_i(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 {`
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
  - vector/SIMD
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%12 = add nsw i64 %11, -8`
  - bitwise/shift: `%11 = and i64 %5, 4294967288`
  - comparisons: `%7 = icmp sgt i32 %3, 0`
  - control flow: `br i1 %7, label %8, label %100`
  - loop: `llvm.loop metadata`
  - recursion: `_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPiS_i(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 {`
  - casts/conversions: `%5 = zext i32 %3 to i64`
  - calls/intrinsics: `%105 = tail call i64 @llvm.ctlz.i64(i64 %101, i1 true) #7, !range !12`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%23 = bitcast i32* %22 to <4 x i32>*`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPiS_i(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
