# cpp_transcoder/PROGRAM_PRINT_SUM_GIVEN_NTH_TERM

- Source: `PROGRAM_PRINT_SUM_GIVEN_NTH_TERM_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%13 = mul nsw i32 %11, %12`
  - comparisons: `%9 = icmp sle i64 %7, %8`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i64, align 8`
  - casts/conversions: `%7 = sext i32 %6 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldl(i64 noundef %0) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%4 = add nsw i64 %0, 1`
  - bitwise/shift: `%12 = and i32 %11, -2`
  - comparisons: `%2 = icmp slt i64 %0, 1`
  - control flow: `br i1 %2, label %15, label %3`
  - casts/conversions: `%5 = trunc i64 %4 to i33`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldl(i64 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%4 = add nuw nsw i64 %0, 1`
  - bitwise/shift: `%12 = and i32 %11, -2`
  - comparisons: `%2 = icmp slt i64 %0, 1`
  - control flow: `br i1 %2, label %15, label %3`
  - casts/conversions: `%5 = trunc i64 %4 to i32`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldl(i64 noundef %0) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
