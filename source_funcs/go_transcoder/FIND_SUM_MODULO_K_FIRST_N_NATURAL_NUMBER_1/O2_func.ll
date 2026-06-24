define i64 @f_gold(i64 %N, i64 %K) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %N, !3030, !DIExpression(), !3035)
    #dbg_value(i64 %K, !3031, !DIExpression(), !3035)
    #dbg_value(i64 0, !3032, !DIExpression(), !3036)
    #dbg_value(i64 %N, !3030, !DIExpression(), !3037)
    #dbg_value(i64 %K, !3031, !DIExpression(), !3038)
  %0 = icmp eq i64 %K, 0, !dbg !3039
  br i1 %0, label %divbyzero.throw, label %divbyzero.next2, !dbg !3039

divbyzero.next2:                                  ; preds = %entry
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3033, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_div, DW_OP_stack_value), !3040)
    #dbg_value(i64 %N, !3030, !DIExpression(), !3041)
    #dbg_value(i64 %K, !3031, !DIExpression(), !3042)
  %1 = icmp eq i64 %K, -1, !dbg !3039
  %2 = icmp eq i64 %N, -9223372036854775808, !dbg !3039
  %3 = and i1 %2, %1, !dbg !3039
  %4 = select i1 %3, i64 1, i64 %K, !dbg !3039
    #dbg_value(!DIArgList(i64 %N, i64 %4), !3033, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_div, DW_OP_stack_value), !3040)
  %5 = sdiv i64 %N, %4, !dbg !3039
    #dbg_value(i64 %5, !3033, !DIExpression(), !3040)
  %6 = srem i64 %N, %4, !dbg !3043
    #dbg_value(i64 %6, !3034, !DIExpression(), !3044)
    #dbg_value(i64 %K, !3031, !DIExpression(), !3045)
    #dbg_value(i64 %K, !3031, !DIExpression(), !3046)
  %7 = add i64 %K, -1, !dbg !3047
  %8 = mul i64 %7, %K, !dbg !3048
  %9 = sdiv i64 %8, 2, !dbg !3049
    #dbg_value(i64 %5, !3033, !DIExpression(), !3050)
  %10 = mul i64 %5, %9, !dbg !3051
    #dbg_value(i64 %6, !3034, !DIExpression(), !3052)
    #dbg_value(i64 %6, !3034, !DIExpression(), !3053)
  %11 = add i64 %6, 1, !dbg !3054
  %12 = mul i64 %11, %6, !dbg !3055
  %13 = sdiv i64 %12, 2, !dbg !3056
  %14 = add i64 %13, %10, !dbg !3057
    #dbg_value(i64 %14, !3032, !DIExpression(), !3058)
    #dbg_value(i64 %14, !3032, !DIExpression(), !3059)
  ret i64 %14, !dbg !3060

divbyzero.throw:                                  ; preds = %entry
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3039
  unreachable, !dbg !3039
}
