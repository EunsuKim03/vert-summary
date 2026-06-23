# cpp_transcoder/WRITE_AN_EFFICIENT_METHOD_TO_CHECK_IF_A_NUMBER_IS_MULTIPLE_OF_3

- Source: `WRITE_AN_EFFICIENT_METHOD_TO_CHECK_IF_A_NUMBER_IS_MULTIPLE_OF_3_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, recursion, memory/pointer, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%10 = sub nsw i32 0, %9`
  - bitwise/shift: `%25 = and i32 %24, 1`
  - comparisons: `%7 = icmp slt i32 %6, 0`
  - control flow: `br i1 %7, label %8, label %11`
  - loop: `llvm.loop metadata`
  - recursion: `_Z6f_goldi calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%44 = call i32 @abs(i32 noundef %43) #6`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, recursion, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%9 = add nuw nsw i32 %6, %8`
  - bitwise/shift: `%8 = and i32 %7, 1`
  - comparisons: `%14 = icmp ult i32 %7, 4`
  - control flow: `switch i32 %2, label %4 [`
  - loop: `llvm.loop metadata`
  - recursion: `_Z6f_goldi calls itself`
  - calls/intrinsics: `%2 = call i32 @llvm.abs.i32(i32 %0, i1 true)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%10 = add nuw nsw i32 %7, %9`
  - bitwise/shift: `%9 = and i32 %8, 1`
  - comparisons: `%15 = icmp ult i32 %8, 4`
  - control flow: `br label %2`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%4 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
