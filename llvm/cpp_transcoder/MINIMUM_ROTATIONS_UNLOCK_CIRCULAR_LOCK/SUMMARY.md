# cpp_transcoder/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK

- Source: `MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK_processed.cpp`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%20 = srem i32 %19, 10`
  - comparisons: `%12 = icmp ne i32 %11, 0`
  - control flow: `br label %10`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%3 = alloca i32, align 4`
  - calls/intrinsics: `%26 = call i32 @abs(i32 noundef %25) #7`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) #4 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1`

## O1

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%9 = srem i32 %6, 10`
  - bitwise/shift: `%3 = or i32 %0, %1`
  - comparisons: `%4 = icmp eq i32 %3, 0`
  - control flow: `br i1 %4, label %24, label %5`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%12 = call i32 @llvm.abs.i32(i32 %11, i1 true)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`

## O2

- Status: ok
- Features: integer arithmetic, bitwise/shift, comparisons, control flow, loop, calls/intrinsics, aggregates, UB-related, globals, external declarations
- Evidence:
  - integer arithmetic: `%9 = srem i32 %6, 10`
  - bitwise/shift: `%3 = or i32 %0, %1`
  - comparisons: `%4 = icmp eq i32 %3, 0`
  - control flow: `br i1 %4, label %24, label %5`
  - loop: `llvm.loop metadata`
  - calls/intrinsics: `%12 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)`
  - aggregates: `%"class.std::ios_base::Init" = type { i8 }`
  - UB-related: `define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {`
  - globals: `@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1`
  - external declarations: `declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0`
