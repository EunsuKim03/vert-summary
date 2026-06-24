# cpp_transcoder/MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_1

- Source: `MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_1_reprocessed.cpp`
- Source note: processed source; reprocessed source: <climits> for INT_MAX

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
  - integer arithmetic: `%50 = add nsw i32 %44, %49`
  - comparisons: `%19 = icmp eq i32 %18, 0`
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
  - integer arithmetic: `%26 = add nsw i32 %24, %25`
  - comparisons: `%10 = icmp eq i32 %1, 0`
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
  - integer arithmetic: `%26 = add nsw i32 %24, %25`
  - comparisons: `%10 = icmp eq i32 %1, 0`
  - control flow: `%7 = select i1 %5, i64 -1, i64 %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - calls/intrinsics: `%4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 4)`
  - aggregates: `%5 = extractvalue { i64, i1 } %4, 1`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
