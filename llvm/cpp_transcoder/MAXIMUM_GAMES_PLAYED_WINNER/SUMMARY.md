# cpp_transcoder/MAXIMUM_GAMES_PLAYED_WINNER

- Source: `MAXIMUM_GAMES_PLAYED_WINNER_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%14 = sub nsw i32 %13, 1`
  - comparisons: `%34 = icmp sle i32 %32, %33`
  - control flow: `br label %12`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%7 = zext i32 %6 to i64`
  - calls/intrinsics: `%8 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%7 = add nsw i64 %6, -1`
  - comparisons: `%16 = icmp sgt i32 %13, %0`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, i64 %2, align 16`
  - casts/conversions: `%2 = zext i32 %0 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%11 = add nuw i64 %10, 1`
  - comparisons: `%6 = icmp slt i32 %0, 3`
  - control flow: `br i1 %6, label %17, label %7, !llvm.loop !9`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, i64 %2, align 16`
  - casts/conversions: `%2 = zext i32 %0 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
