# cpp_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1

- Source: `SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - control flow
  - memory/pointer
  - casts/conversions
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%12 = mul nsw i32 %8, %11`
  - control flow: `ret i32 %33`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* noundef %1) #4 {`
  - casts/conversions: `%17 = sext i32 %16 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - control flow
  - memory/pointer
  - casts/conversions
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%4 = mul nsw i32 %3, %3`
  - bitwise/shift: `%5 = shl nsw i32 %0, 1`
  - control flow: `ret i32 %13`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {`
  - casts/conversions: `%7 = sext i32 %6 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - control flow
  - memory/pointer
  - casts/conversions
  - aggregates
  - UB-related
  - globals
  - external declarations
- Evidence:
  - integer arithmetic: `%4 = mul nsw i32 %3, %3`
  - bitwise/shift: `%5 = shl nsw i32 %0, 1`
  - control flow: `ret i32 %13`
  - memory/pointer: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {`
  - casts/conversions: `%7 = sext i32 %6 to i64`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
