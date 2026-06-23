# cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH

- Source: `FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%39 = sub nsw i32 %38, 1`
  - comparisons: `%16 = icmp sgt i32 %14, %15`
  - control flow: `br i1 %16, label %17, label %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - casts/conversions: `%20 = sext i32 %19 to i64`
  - calls/intrinsics: `%21 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %20, i64 4)`
  - aggregates: `%22 = extractvalue { i64, i1 } %21, 1`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%19 = add nsw i32 %2, -1`
  - comparisons: `%4 = icmp sgt i32 %2, %1`
  - control flow: `br i1 %4, label %57, label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%6 = sext i32 %1 to i64`
  - calls/intrinsics: `%7 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %6, i64 4)`
  - aggregates: `%8 = extractvalue { i64, i1 } %7, 1`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%17 = add nsw i64 %16, -1`
  - bitwise/shift: `%19 = and i64 %17, 3`
  - comparisons: `%4 = icmp sgt i32 %2, %1`
  - control flow: `br i1 %4, label %123, label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%6 = sext i32 %1 to i64`
  - calls/intrinsics: `%7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %6, i64 4)`
  - aggregates: `%8 = extractvalue { i64, i1 } %7, 1`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
