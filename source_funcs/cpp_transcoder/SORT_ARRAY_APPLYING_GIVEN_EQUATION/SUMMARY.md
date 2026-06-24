# cpp_transcoder/SORT_ARRAY_APPLYING_GIVEN_EQUATION

- Source: `SORT_ARRAY_APPLYING_GIVEN_EQUATION_reprocessed.cpp`
- Source note: processed source; reprocessed source: <climits> for INT_MIN

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%32 = mul nsw i32 %26, %31`
  - comparisons: `%24 = icmp slt i32 %22, %23`
  - control flow: `br label %21`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldPiiiii(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #4 {`
  - casts/conversions: `%29 = sext i32 %28 to i64`
  - calls/intrinsics: `%85 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPiiiii(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #4 {`
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
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%18 = mul nsw i32 %17, %2`
  - bitwise/shift: `%60 = xor i32 %49, -1`
  - comparisons: `%7 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %7, label %8, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldPiiiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {`
  - casts/conversions: `%6 = bitcast i32* %0 to i8*`
  - calls/intrinsics: `call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1) %56, i8* noundef nonnull align 4 dereferenceable(1) %59, i64 %64, i1 false), !tbaa !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPiiiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {`
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
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - vector/SIMD
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%25 = add nsw i64 %12, -8`
  - bitwise/shift: `%12 = and i64 %9, 4294967288`
  - comparisons: `%7 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %7, label %8, label %370`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldPiiiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {`
  - casts/conversions: `%6 = bitcast i32* %0 to i8*`
  - calls/intrinsics: `call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1) %187, i8* noundef nonnull align 4 dereferenceable(1) %190, i64 %195, i1 false), !tbaa !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%13 = insertelement <4 x i32> poison, i32 %2, i64 0`
  - UB-related: `define dso_local void @_Z6f_goldPiiiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
