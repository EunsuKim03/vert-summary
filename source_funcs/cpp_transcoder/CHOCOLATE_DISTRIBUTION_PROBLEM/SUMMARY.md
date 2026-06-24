# cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM

- Source: `CHOCOLATE_DISTRIBUTION_PROBLEM_reprocessed.cpp`
- Source note: processed source; reprocessed source: <algorithm> for sort, <climits> for INT_MAX

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
  - integer arithmetic: `%33 = add nsw i32 %31, %32`
  - bitwise/shift: `%49 = and i64 %48, 1`
  - comparisons: `%14 = icmp eq i32 %13, 0`
  - control flow: `br i1 %14, label %18, label %15`
  - loop: `llvm.loop metadata`
  - recursion: `_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - casts/conversions: `%23 = sext i32 %22 to i64`
  - calls/intrinsics: `call void @_ZSt4sortIPiEvT_S1_(i32* noundef %20, i32* noundef %24)`
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
  - integer arithmetic: `%24 = sub nsw i32 %20, %23`
  - bitwise/shift: `%6 = or i1 %5, %4`
  - comparisons: `%4 = icmp eq i32 %2, 0`
  - control flow: `br i1 %6, label %47, label %7`
  - loop: `llvm.loop metadata`
  - recursion: `_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%8 = sext i32 %1 to i64`
  - calls/intrinsics: `%10 = call i64 @llvm.ctlz.i64(i64 %8, i1 true) #7, !range !5`
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
  - integer arithmetic: `%23 = sub nsw i32 %19, %22`
  - bitwise/shift: `%6 = or i1 %5, %4`
  - comparisons: `%4 = icmp eq i32 %2, 0`
  - control flow: `br i1 %6, label %46, label %7`
  - loop: `llvm.loop metadata`
  - recursion: `_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ calls itself`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%8 = sext i32 %1 to i64`
  - calls/intrinsics: `%10 = tail call i64 @llvm.ctlz.i64(i64 %8, i1 true) #7, !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
