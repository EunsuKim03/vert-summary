# cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_TWICE

- Source: `MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_TWICE_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%33 = add nsw i32 %32, 1`
  - comparisons: `%25 = icmp slt i32 %23, %24`
  - control flow: `%19 = select i1 %17, i64 -1, i64 %18`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) #4 {`
  - casts/conversions: `%15 = sext i32 %14 to i64`
  - calls/intrinsics: `%16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %15, i64 4)`
  - aggregates: `%17 = extractvalue { i64, i1 } %16, 1`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%15 = add nsw i32 %1, -1`
  - bitwise/shift: `%13 = shl nuw nsw i64 %12, 2`
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
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%12 = add nsw i32 %1, -1`
  - bitwise/shift: `%16 = shl nuw nsw i64 %15, 2`
  - comparisons: `%10 = icmp sgt i32 %1, 0`
  - control flow: `%7 = select i1 %5, i64 -1, i64 %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - calls/intrinsics: `%4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 4)`
  - aggregates: `%5 = extractvalue { i64, i1 } %4, 1`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
