# cpp_transcoder/PROGRAMMING_PUZZLE_ASSIGN_VALUE_WITHOUT_CONTROL_STATEMENT

- Source: `PROGRAMMING_PUZZLE_ASSIGN_VALUE_WITHOUT_CONTROL_STATEMENT_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - control flow
  - memory/pointer
  - casts/conversions
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - control flow: `ret i32 %17`
  - memory/pointer: `%4 = alloca i32, align 4`
  - casts/conversions: `%8 = zext i1 %2 to i8`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiib(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - control flow: `ret i32 %10`
  - memory/pointer: `%4 = alloca [2 x i32], align 4`
  - casts/conversions: `%5 = bitcast [2 x i32]* %4 to i8*`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiib(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - control flow: `ret i32 %10`
  - memory/pointer: `%4 = alloca [2 x i32], align 4`
  - casts/conversions: `%5 = bitcast [2 x i32]* %4 to i8*`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiib(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
