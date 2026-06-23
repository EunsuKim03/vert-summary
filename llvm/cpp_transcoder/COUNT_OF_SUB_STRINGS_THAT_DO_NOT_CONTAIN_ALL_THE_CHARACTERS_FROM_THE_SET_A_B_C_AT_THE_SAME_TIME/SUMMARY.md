# cpp_transcoder/COUNT_OF_SUB_STRINGS_THAT_DO_NOT_CONTAIN_ALL_THE_CHARACTERS_FROM_THE_SET_A_B_C_AT_THE_SAME_TIME

- Source: `COUNT_OF_SUB_STRINGS_THAT_DO_NOT_CONTAIN_ALL_THE_CHARACTERS_FROM_THE_SET_A_B_C_AT_THE_SAME_TIME_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%12 = add nsw i32 %11, 1`
  - comparisons: `%18 = icmp slt i32 %16, %17`
  - control flow: `br label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPci(i8* noundef %0, i32 noundef %1) #4 {`
  - casts/conversions: `%22 = sext i32 %21 to i64`
  - calls/intrinsics: `%30 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* noundef nonnull align 4 dereferenceable(4) %7, i32* noundef nonnull align 4 dereferenceable(4`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPci(i8* noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %1, 1`
  - comparisons: `%12 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %12, label %13, label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPci(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {`
  - casts/conversions: `%9 = bitcast i32* %3 to i8*`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPci(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %1, 1`
  - comparisons: `%12 = icmp sgt i32 %1, 0`
  - control flow: `br i1 %12, label %13, label %15`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldPci(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {`
  - casts/conversions: `%9 = bitcast i32* %3 to i8*`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldPci(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
