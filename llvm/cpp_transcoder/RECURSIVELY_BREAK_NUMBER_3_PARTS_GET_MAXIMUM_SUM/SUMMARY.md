# cpp_transcoder/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM

- Source: `RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%14 = sdiv i32 %13, 2`
  - comparisons: `%6 = icmp eq i32 %5, 0`
  - control flow: `br i1 %6, label %10, label %7`
  - recursion: `_Z6f_goldi calls itself`
  - memory/pointer: `%2 = alloca i32, align 4`
  - calls/intrinsics: `%15 = call noundef i32 @_Z6f_goldi(i32 noundef %14)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%4 = sdiv i32 %0, 2`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %14, label %3`
  - recursion: `_Z6f_goldi calls itself`
  - calls/intrinsics: `%5 = call noundef i32 @_Z6f_goldi(i32 noundef %4)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, recursion, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%6 = sdiv i32 %0, 2`
  - comparisons: `%2 = icmp ult i32 %0, 2`
  - control flow: `br i1 %2, label %3, label %5`
  - loop: `br label %3`
  - recursion: `_Z6f_goldi calls itself`
  - calls/intrinsics: `%7 = tail call noundef i32 @_Z6f_goldi(i32 noundef %6)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
