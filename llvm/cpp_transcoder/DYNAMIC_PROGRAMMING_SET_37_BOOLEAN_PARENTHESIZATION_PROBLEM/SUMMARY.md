# cpp_transcoder/DYNAMIC_PROGRAMMING_SET_37_BOOLEAN_PARENTHESIZATION_PROBLEM

- Source: `DYNAMIC_PROGRAMMING_SET_37_BOOLEAN_PARENTHESIZATION_PROBLEM_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%25 = mul nuw i64 %21, %23`
  - comparisons: `%36 = icmp slt i32 %34, %35`
  - control flow: `br label %33`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPcS_i(i8* noundef %0, i8* noundef %1, i32 noundef %2) #4 {`
  - casts/conversions: `%21 = zext i32 %20 to i64`
  - calls/intrinsics: `%24 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPcS_i(i8* noundef %0, i8* noundef %1, i32 noundef %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%5 = mul nuw i64 %4, %4`
  - comparisons: `%8 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %8, label %9, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPcS_i(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%4 = zext i32 %2 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPcS_i(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%5 = mul nuw i64 %4, %4`
  - bitwise/shift: `%10 = and i64 %4, 1`
  - comparisons: `%8 = icmp sgt i32 %2, 0`
  - control flow: `br i1 %8, label %9, label %31`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPcS_i(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%4 = zext i32 %2 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPcS_i(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
