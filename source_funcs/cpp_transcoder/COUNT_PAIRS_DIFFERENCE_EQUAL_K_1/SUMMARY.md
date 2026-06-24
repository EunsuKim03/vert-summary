# cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1

- Source: `COUNT_PAIRS_DIFFERENCE_EQUAL_K_1_reprocessed.cpp`
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
  - integer arithmetic: `%30 = sub nsw i32 %24, %29`
  - bitwise/shift: `%49 = and i64 %48, 1`
  - comparisons: `%18 = icmp slt i32 %16, %17`
  - control flow: `br label %15`
  - loop: `llvm.loop metadata`
  - recursion: `_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - casts/conversions: `%13 = sext i32 %12 to i64`
  - calls/intrinsics: `call void @_ZSt4sortIPiEvT_S1_(i32* noundef %10, i32* noundef %14)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
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
  - integer arithmetic: `%23 = sub nsw i32 %19, %22`
  - bitwise/shift: `%9 = shl nuw nsw i64 %8, 1`
  - comparisons: `%6 = icmp eq i32 %1, 0`
  - control flow: `br i1 %6, label %11, label %7`
  - loop: `llvm.loop metadata`
  - recursion: `_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%4 = sext i32 %1 to i64`
  - calls/intrinsics: `%8 = call i64 @llvm.ctlz.i64(i64 %4, i1 true) #7, !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
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
  - integer arithmetic: `%22 = sub nsw i32 %18, %21`
  - bitwise/shift: `%9 = shl nuw nsw i64 %8, 1`
  - comparisons: `%6 = icmp eq i32 %1, 0`
  - control flow: `br i1 %6, label %39, label %7`
  - loop: `llvm.loop metadata`
  - recursion: `_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%4 = sext i32 %1 to i64`
  - calls/intrinsics: `%8 = tail call i64 @llvm.ctlz.i64(i64 %4, i1 true) #7, !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
