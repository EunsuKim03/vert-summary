# cpp_transcoder/BASIC_AND_EXTENDED_EUCLIDEAN_ALGORITHMS

- Source: `BASIC_AND_EXTENDED_EUCLIDEAN_ALGORITHMS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%13 = srem i32 %11, %12`
  - comparisons: `%7 = icmp eq i32 %6, 0`
  - control flow: `br i1 %7, label %8, label %10`
  - recursion: `_Z6f_goldii calls itself`
  - memory/pointer: `%3 = alloca i32, align 4`
  - calls/intrinsics: `%15 = call noundef i32 @_Z6f_goldii(i32 noundef %13, i32 noundef %14)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%5 = srem i32 %1, %0`
  - comparisons: `%3 = icmp eq i32 %0, 0`
  - control flow: `br i1 %3, label %7, label %4`
  - recursion: `_Z6f_goldii calls itself`
  - calls/intrinsics: `%6 = call noundef i32 @_Z6f_goldii(i32 noundef %5, i32 noundef %0)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%7 = srem i32 %5, %6`
  - comparisons: `%3 = icmp eq i32 %0, 0`
  - control flow: `br i1 %3, label %9, label %4`
  - loop: `br i1 %8, label %9, label %4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
