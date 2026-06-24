# cpp_transcoder/NEXT_POWER_OF_2_1

- Source: `NEXT_POWER_OF_2_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%10 = sub i32 %9, 1`
  - bitwise/shift: `%11 = and i32 %8, %10`
  - comparisons: `%6 = icmp ne i32 %5, 0`
  - control flow: `br i1 %6, label %7, label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - bitwise/shift: `%7 = shl i32 %5, 1`
  - comparisons: `%3 = icmp eq i32 %2, 1`
  - control flow: `br i1 %3, label %8, label %4`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%2 = call i32 @llvm.ctpop.i32(i32 %0), !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - bitwise/shift: `%7 = shl i32 %5, 1`
  - comparisons: `%3 = icmp eq i32 %2, 1`
  - control flow: `br i1 %3, label %8, label %4`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%2 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
