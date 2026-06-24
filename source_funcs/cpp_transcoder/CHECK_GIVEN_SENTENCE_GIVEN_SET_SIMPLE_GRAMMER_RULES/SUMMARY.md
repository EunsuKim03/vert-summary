# cpp_transcoder/CHECK_GIVEN_SENTENCE_GIVEN_SET_SIMPLE_GRAMMER_RULES

- Source: `CHECK_GIVEN_SENTENCE_GIVEN_SET_SIMPLE_GRAMMER_RULES_reprocessed.cpp`
- Source note: processed source; reprocessed source: <cstring> for strlen

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
  - integer arithmetic: `%26 = sub nsw i32 %25, 1`
  - comparisons: `%15 = icmp slt i32 %14, 65`
  - control flow: `br i1 %15, label %22, label %16`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPc(i8* noundef %0) #4 {`
  - casts/conversions: `%10 = trunc i64 %9 to i32`
  - calls/intrinsics: `%9 = call i64 @strlen(i8* noundef %8) #6`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPc(i8* noundef %0) #4 {`
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
  - integer arithmetic: `%3 = add i8 %2, -91`
  - bitwise/shift: `%7 = shl i64 %6, 32`
  - comparisons: `%4 = icmp ult i8 %3, -26`
  - control flow: `br i1 %4, label %55, label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPc(i8* nocapture noundef readonly %0) local_unnamed_addr #3 {`
  - casts/conversions: `%50 = zext i1 %49 to i32`
  - calls/intrinsics: `%6 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #6`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPc(i8* nocapture noundef readonly %0) local_unnamed_addr #3 {`
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
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%3 = add i8 %2, -91`
  - bitwise/shift: `%7 = shl i64 %6, 32`
  - comparisons: `%4 = icmp ult i8 %3, -26`
  - control flow: `br i1 %4, label %57, label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPc(i8* nocapture noundef readonly %0) local_unnamed_addr #3 {`
  - casts/conversions: `%50 = zext i1 %49 to i32`
  - calls/intrinsics: `%6 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #6`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPc(i8* nocapture noundef readonly %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
