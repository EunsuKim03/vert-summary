# cpp_transcoder/POSITIVE_ELEMENTS_EVEN_NEGATIVE_ODD_POSITIONS

- Source: `POSITIVE_ELEMENTS_EVEN_NEGATIVE_ODD_POSITIONS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%23 = add nsw i32 %22, 2`
  - comparisons: `%11 = icmp slt i32 %9, %10`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) #4 {`
  - casts/conversions: `%15 = sext i32 %14 to i64`
  - calls/intrinsics: `call void @_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(i32* noundef non`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%21 = add i64 %20, 2`
  - comparisons: `%8 = icmp slt i32 %6, %1`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%17 = add i64 %11, 2`
  - bitwise/shift: `%24 = xor i1 %15, true`
  - comparisons: `%7 = icmp slt i32 %5, %1`
  - control flow: `br label %4`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local void @_Z6f_goldPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - casts/conversions: `%3 = sext i32 %1 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
