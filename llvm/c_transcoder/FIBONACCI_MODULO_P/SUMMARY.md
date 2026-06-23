# c_transcoder/FIBONACCI_MODULO_P

- Source: `FIBONACCI_MODULO_P_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, memory/pointer, UB-related
- Evidence:
  - integer arithmetic: `%13 = add nsw i32 %11, %12`
  - comparisons: `%9 = icmp ne i32 %8, 0`
  - control flow: `br label %7`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %3, %5`
  - comparisons: `%9 = icmp eq i32 %7, 0`
  - control flow: `br label %2`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: integer arithmetic, comparisons, control flow, loop, UB-related
- Evidence:
  - integer arithmetic: `%6 = add nsw i32 %3, %5`
  - comparisons: `%9 = icmp eq i32 %7, 0`
  - control flow: `br label %2`
  - loop: `llvm.loop metadata`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
