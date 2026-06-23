# cpp_transcoder/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_1

- Source: `COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%17 = mul nuw i64 %13, %15`
  - comparisons: `%22 = icmp slt i32 %20, %21`
  - control flow: `br label %19`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%13 = zext i32 %12 to i64`
  - calls/intrinsics: `%16 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%5 = mul nuw i64 %4, %3`
  - comparisons: `%7 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %7, label %8, label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%6 = alloca i32, i64 %5, align 16`
  - casts/conversions: `%3 = zext i32 %0 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%5 = mul nuw i64 %4, %3`
  - bitwise/shift: `%11 = and i1 %9, %10`
  - comparisons: `%7 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %7, label %8, label %83`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%6 = alloca i32, i64 %5, align 16`
  - casts/conversions: `%3 = zext i32 %0 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%26 = bitcast i32* %25 to <4 x i32>*`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
