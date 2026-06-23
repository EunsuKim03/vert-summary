# cpp_transcoder/SUM_FIBONACCI_NUMBERS

- Source: `SUM_FIBONACCI_NUMBERS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%13 = add nsw i32 %12, 1`
  - comparisons: `%9 = icmp sle i32 %8, 0`
  - control flow: `br i1 %9, label %10, label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%14 = zext i32 %13 to i64`
  - calls/intrinsics: `%15 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%4 = add nsw i32 %0, 1`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %29, label %3`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%6 = call i8* @llvm.stacksave()`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - calls/intrinsics: `%6 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%4 = add nuw i32 %0, 1`
  - bitwise/shift: `%15 = and i64 %14, 1`
  - comparisons: `%2 = icmp slt i32 %0, 1`
  - control flow: `br i1 %2, label %56, label %3`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%6 = tail call i8* @llvm.stacksave()`
  - casts/conversions: `%5 = zext i32 %4 to i64`
  - calls/intrinsics: `%6 = tail call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
