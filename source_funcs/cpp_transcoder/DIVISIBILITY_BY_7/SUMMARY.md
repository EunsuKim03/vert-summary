# cpp_transcoder/DIVISIBILITY_BY_7

- Source: `DIVISIBILITY_BY_7_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%8 = sub nsw i32 0, %7`
  - comparisons: `%5 = icmp slt i32 %4, 0`
  - control flow: `br i1 %5, label %6, label %10`
  - recursion: `_Z6f_goldi calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%9 = call noundef i32 @_Z6f_goldi(i32 noundef %8)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - recursion
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%4 = sub nsw i32 0, %0`
  - bitwise/shift: `%12 = shl i32 %11, 1`
  - comparisons: `%2 = icmp slt i32 %0, 0`
  - control flow: `br i1 %2, label %3, label %5`
  - recursion: `_Z6f_goldi calls itself`
  - calls/intrinsics: `%16 = call noundef i32 @_Z6f_goldi(i32 noundef %15), !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
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
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%6 = sub nsw i32 0, %3`
  - bitwise/shift: `%16 = shl i32 %15, 1`
  - comparisons: `%4 = icmp slt i32 %3, 0`
  - control flow: `br label %2`
  - loop: `br label %2`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
