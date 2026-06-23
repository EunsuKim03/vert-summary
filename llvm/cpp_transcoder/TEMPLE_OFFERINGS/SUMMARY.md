# cpp_transcoder/TEMPLE_OFFERINGS

- Source: `TEMPLE_OFFERINGS_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%17 = sub nsw i32 %16, 1`
  - comparisons: `%14 = icmp slt i32 %12, %13`
  - control flow: `br label %11`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* noundef %1) #4 {`
  - casts/conversions: `%24 = sext i32 %23 to i64`
  - calls/intrinsics: `%71 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* noundef nonnull align 4 dereferenceable(4) %8, i32* noundef nonnull align 4 dereferenceable(4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%11 = add i32 %7, -1`
  - comparisons: `%3 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %3, label %4, label %14`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {`
  - casts/conversions: `%5 = zext i32 %0 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%9 = add i32 %5, -1`
  - comparisons: `%3 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %3, label %4, label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {`
  - casts/conversions: `%12 = zext i32 %7 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
