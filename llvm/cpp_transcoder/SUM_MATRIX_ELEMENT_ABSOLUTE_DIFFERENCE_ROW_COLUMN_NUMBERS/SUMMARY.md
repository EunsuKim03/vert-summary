# cpp_transcoder/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS

- Source: `SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%16 = mul nuw i64 %12, %14`
  - comparisons: `%21 = icmp slt i32 %19, %20`
  - control flow: `br label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%12 = zext i32 %11 to i64`
  - calls/intrinsics: `%15 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%3 = mul nuw i64 %2, %2`
  - comparisons: `%5 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %5, label %6, label %13`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%2 = zext i32 %0 to i64`
  - calls/intrinsics: `%25 = call i32 @llvm.abs.i32(i32 %24, i1 true)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%3 = mul nuw i64 %2, %2`
  - bitwise/shift: `%8 = and i64 %2, 4294967288`
  - comparisons: `%5 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %5, label %6, label %143`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%2 = zext i32 %0 to i64`
  - calls/intrinsics: `%27 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %25, i1 true)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%15 = insertelement <4 x i64> poison, i64 %11, i64 0`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
