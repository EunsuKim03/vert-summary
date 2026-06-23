# cpp_transcoder/HOW_TO_PRINT_MAXIMUM_NUMBER_OF_A_USING_GIVEN_FOUR_KEYS

- Source: `HOW_TO_PRINT_MAXIMUM_NUMBER_OF_A_USING_GIVEN_FOUR_KEYS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%26 = sub nsw i32 %25, 1`
  - comparisons: `%12 = icmp sle i32 %11, 6`
  - control flow: `br i1 %12, label %13, label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%17 = zext i32 %16 to i64`
  - calls/intrinsics: `%18 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%10 = add i32 %0, 1`
  - bitwise/shift: `%24 = shl nsw i32 %23, 1`
  - comparisons: `%2 = icmp slt i32 %0, 7`
  - control flow: `br i1 %2, label %46, label %3`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = call i8* @llvm.stacksave()`
  - casts/conversions: `%4 = zext i32 %0 to i64`
  - calls/intrinsics: `%5 = call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, vector/SIMD, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%10 = add nuw i32 %0, 1`
  - bitwise/shift: `%14 = shl nsw i32 %13, 1`
  - comparisons: `%2 = icmp slt i32 %0, 7`
  - control flow: `br i1 %2, label %45, label %3`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%5 = tail call i8* @llvm.stacksave()`
  - casts/conversions: `%4 = zext i32 %0 to i64`
  - calls/intrinsics: `%5 = tail call i8* @llvm.stacksave()`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - vector/SIMD: `%7 = bitcast i32* %6 to <4 x i32>*`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
