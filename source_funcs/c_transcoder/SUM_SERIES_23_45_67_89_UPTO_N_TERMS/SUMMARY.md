# c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS

- Source: `SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - floating-point arithmetic
  - comparisons
  - control flow
  - loop
  - memory/pointer
  - casts/conversions
  - UB-related
- Compiler messages:
  - `benchmark/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c:19:30: warning: multiple unsequenced modifications to 'i' [-Wunsequenced]`
  - `      res = res + ( double ) ++ i / ++ i;`
  - `                             ^      ~~`
  - `benchmark/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c:23:30: warning: multiple unsequenced modifications to 'i' [-Wunsequenced]`
  - `      res = res - ( double ) ++ i / ++ i;`
  - `                             ^      ~~`
  - `2 warnings generated.`
- Evidence:
  - integer arithmetic: `%11 = add nsw i32 %10, -1`
  - bitwise/shift: `%17 = xor i1 %16, true`
  - floating-point arithmetic: `%26 = fdiv double %22, %25`
  - comparisons: `%8 = icmp sgt i32 %7, 0`
  - control flow: `br label %6`
  - loop: `llvm.loop metadata`
  - memory/pointer: `%2 = alloca i32, align 4`
  - casts/conversions: `%13 = trunc i8 %12 to i1`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) #0 {`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - floating-point arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Compiler messages:
  - `benchmark/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c:19:30: warning: multiple unsequenced modifications to 'i' [-Wunsequenced]`
  - `      res = res + ( double ) ++ i / ++ i;`
  - `                             ^      ~~`
  - `benchmark/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c:23:30: warning: multiple unsequenced modifications to 'i' [-Wunsequenced]`
  - `      res = res - ( double ) ++ i / ++ i;`
  - `                             ^      ~~`
  - `2 warnings generated.`
- Evidence:
  - integer arithmetic: `%8 = add nsw i32 %7, -1`
  - bitwise/shift: `%17 = xor i1 %4, true`
  - floating-point arithmetic: `%13 = fdiv double %10, %12`
  - comparisons: `%2 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %2, label %3, label %21`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%10 = sitofp i32 %9 to double`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - floating-point arithmetic
  - comparisons
  - control flow
  - loop
  - casts/conversions
  - UB-related
- Compiler messages:
  - `benchmark/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c:19:30: warning: multiple unsequenced modifications to 'i' [-Wunsequenced]`
  - `      res = res + ( double ) ++ i / ++ i;`
  - `                             ^      ~~`
  - `benchmark/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c:23:30: warning: multiple unsequenced modifications to 'i' [-Wunsequenced]`
  - `      res = res - ( double ) ++ i / ++ i;`
  - `                             ^      ~~`
  - `2 warnings generated.`
- Evidence:
  - integer arithmetic: `%12 = add nuw nsw i32 %10, 1`
  - bitwise/shift: `%4 = and i32 %0, 1`
  - floating-point arithmetic: `%16 = fdiv double %13, %15`
  - comparisons: `%2 = icmp sgt i32 %0, 0`
  - control flow: `br i1 %2, label %3, label %41`
  - loop: `llvm.loop metadata`
  - casts/conversions: `%13 = sitofp i32 %12 to double`
  - UB-related: `define dso_local float @f_gold(i32 noundef %0) local_unnamed_addr #0 {`
