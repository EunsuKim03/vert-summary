# cpp_transcoder/STOOGE_SORT

- Source: `STOOGE_SORT_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%36 = sub nsw i32 %34, %35`
  - comparisons: `%10 = icmp sge i32 %8, %9`
  - control flow: `br i1 %10, label %11, label %12`
  - recursion: `_Z6f_goldPiii calls itself`
  - memory/pointer: `define dso_local void @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - casts/conversions: `%15 = sext i32 %14 to i64`
  - calls/intrinsics: `call void @_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(i32* noundef non`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%15 = sub nsw i32 %2, %1`
  - comparisons: `%4 = icmp sgt i32 %2, %1`
  - control flow: `br i1 %4, label %5, label %22`
  - recursion: `_Z6f_goldPiii calls itself`
  - memory/pointer: `define dso_local void @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%6 = sext i32 %1 to i64`
  - calls/intrinsics: `call void @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %20)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, recursion, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%17 = sub nsw i32 %9, %1`
  - comparisons: `%4 = icmp sgt i32 %2, %1`
  - control flow: `br i1 %4, label %5, label %25`
  - loop: `br i1 %24, label %8, label %25`
  - recursion: `_Z6f_goldPiii calls itself`
  - memory/pointer: `define dso_local void @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - casts/conversions: `%6 = sext i32 %1 to i64`
  - calls/intrinsics: `tail call void @_Z6f_goldPiii(i32* noundef nonnull %0, i32 noundef %1, i32 noundef %22)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local void @_Z6f_goldPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
