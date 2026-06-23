# cpp_transcoder/COUNT_NUMBER_WAYS_REACH_GIVEN_SCORE_GAME

- Source: `COUNT_NUMBER_WAYS_REACH_GIVEN_SCORE_GAME_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%8 = add nsw i32 %7, 1`
  - comparisons: `%16 = icmp slt i32 %13, %15`
  - control flow: `br label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%9 = zext i32 %8 to i64`
  - calls/intrinsics: `%10 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%2 = add nsw i32 %0, 1`
  - bitwise/shift: `%9 = shl nuw nsw i64 %8, 2`
  - comparisons: `%5 = icmp slt i32 %0, 0`
  - control flow: `br i1 %5, label %11, label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %7, i8 0, i64 %10, i1 false), !tbaa !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%2 = add i32 %0, 1`
  - bitwise/shift: `%10 = shl nuw nsw i64 %9, 2`
  - comparisons: `%5 = icmp slt i32 %0, 0`
  - control flow: `br i1 %5, label %6, label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%4 = alloca i32, i64 %3, align 16`
  - casts/conversions: `%3 = zext i32 %2 to i64`
  - calls/intrinsics: `call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %8, i8 0, i64 %11, i1 false), !tbaa !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%86 = bitcast i32* %85 to <2 x i32>*`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
