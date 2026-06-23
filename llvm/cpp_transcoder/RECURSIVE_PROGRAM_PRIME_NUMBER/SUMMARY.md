# cpp_transcoder/RECURSIVE_PROGRAM_PRIME_NUMBER

- Source: `RECURSIVE_PROGRAM_PRIME_NUMBER_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%16 = srem i32 %14, %15`
  - comparisons: `%7 = icmp sle i32 %6, 2`
  - control flow: `br i1 %7, label %8, label %13`
  - recursion: `_Z6f_goldii calls itself`
  - memory/pointer: `%3 = alloca i32, align 4`
  - casts/conversions: `%11 = zext i1 %10 to i64`
  - calls/intrinsics: `%30 = call noundef i32 @_Z6f_goldii(i32 noundef %27, i32 noundef %29)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%8 = srem i32 %0, %1`
  - comparisons: `%3 = icmp slt i32 %0, 3`
  - control flow: `br i1 %3, label %4, label %7`
  - recursion: `_Z6f_goldii calls itself`
  - casts/conversions: `%6 = zext i1 %5 to i32`
  - calls/intrinsics: `%15 = call noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %14), !range !5`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%5 = srem i32 %0, %1`
  - comparisons: `%3 = icmp slt i32 %0, 3`
  - control flow: `br i1 %3, label %7, label %4`
  - loop: `br i1 %16, label %18, label %10`
  - casts/conversions: `%9 = zext i1 %8 to i32`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
