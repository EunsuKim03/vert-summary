# cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1

- Source: `PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%59 = add nsw i32 %58, 1`
  - comparisons: `%21 = icmp slt i32 %19, %20`
  - control flow: `br label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #4 {`
  - casts/conversions: `%31 = sext i32 %30 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%11 = add i32 %3, -2`
  - bitwise/shift: `%9 = and i1 %7, %8`
  - comparisons: `%7 = icmp sgt i32 %2, 1`
  - control flow: `br i1 %9, label %10, label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {`
  - casts/conversions: `%15 = zext i32 %14 to i64`
  - calls/intrinsics: `%13 = call i32 @llvm.umin.i32(i32 %11, i32 %12)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%11 = add nsw i32 %3, -2`
  - bitwise/shift: `%9 = and i1 %7, %8`
  - comparisons: `%7 = icmp sgt i32 %2, 1`
  - control flow: `br i1 %9, label %10, label %66`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {`
  - casts/conversions: `%15 = zext i32 %14 to i64`
  - calls/intrinsics: `%13 = call i32 @llvm.umin.i32(i32 %11, i32 %12)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%21 = insertelement <4 x i32> poison, i32 %6, i64 0`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
