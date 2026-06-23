# cpp_transcoder/NUMBER_WHICH_HAS_THE_MAXIMUM_NUMBER_OF_DISTINCT_PRIME_FACTORS_IN_RANGE_M_TO_N

- Source: `NUMBER_WHICH_HAS_THE_MAXIMUM_NUMBER_OF_DISTINCT_PRIME_FACTORS_IN_RANGE_M_TO_N_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%15 = add nsw i32 %14, 1`
  - comparisons: `%26 = icmp sle i32 %24, %25`
  - control flow: `br label %23`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%16 = zext i32 %15 to i64`
  - calls/intrinsics: `%17 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %1, 1`
  - bitwise/shift: `%11 = shl nuw nsw i64 %10, 3`
  - comparisons: `%7 = icmp slt i32 %1, 0`
  - control flow: `br i1 %7, label %15, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i64, i64 %4, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %9, i8 0, i64 %12, i1 false), !tbaa !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%3 = add nsw i32 %1, 1`
  - bitwise/shift: `%11 = shl nuw nsw i64 %10, 3`
  - comparisons: `%7 = icmp slt i32 %1, 0`
  - control flow: `br i1 %7, label %15, label %8`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = alloca i64, i64 %4, align 16`
  - casts/conversions: `%4 = zext i32 %3 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %9, i8 0, i64 %12, i1 false), !tbaa !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
