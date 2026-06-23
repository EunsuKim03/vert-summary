# cpp_transcoder/DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE

- Source: `DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%29 = add nsw i32 %28, 1`
  - comparisons: `%21 = icmp slt i32 %19, %20`
  - control flow: `%15 = select i1 %13, i64 -1, i64 %14`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) #4 {`
  - casts/conversions: `%11 = sext i32 %10 to i64`
  - calls/intrinsics: `%12 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %11, i64 4)`
  - aggregates: `%13 = extractvalue { i64, i1 } %12, 1`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%20 = add nuw nsw i64 %18, 1`
  - comparisons: `%10 = icmp sgt i32 %1, 0`
  - control flow: `%7 = select i1 %5, i64 -1, i64 %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - calls/intrinsics: `%4 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 4)`
  - aggregates: `%5 = extractvalue { i64, i1 } %4, 1`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%19 = add nsw i64 %18, -8`
  - bitwise/shift: `%18 = and i64 %15, 4294967288`
  - comparisons: `%10 = icmp sgt i32 %1, 0`
  - control flow: `%7 = select i1 %5, i64 -1, i64 %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - calls/intrinsics: `%4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 4)`
  - aggregates: `%5 = extractvalue { i64, i1 } %4, 1`
  - vector/SIMD: `%30 = bitcast i32* %29 to <4 x i32>*`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
