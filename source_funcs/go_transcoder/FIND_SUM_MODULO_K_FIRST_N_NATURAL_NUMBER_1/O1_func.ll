define i64 @f_gold(i64 %N, i64 %K) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %N, !3114, !DIExpression(), !3119)
    #dbg_value(i64 %K, !3115, !DIExpression(), !3119)
    #dbg_value(i64 0, !3116, !DIExpression(), !3120)
    #dbg_value(i64 %N, !3114, !DIExpression(), !3121)
    #dbg_value(i64 %K, !3115, !DIExpression(), !3122)
  %0 = icmp eq i64 %K, 0, !dbg !3123
  br i1 %0, label %divbyzero.throw, label %divbyzero.next2, !dbg !3123

divbyzero.next2:                                  ; preds = %entry
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_div, DW_OP_stack_value), !3124)
    #dbg_value(i64 %N, !3114, !DIExpression(), !3125)
    #dbg_value(i64 %K, !3115, !DIExpression(), !3126)
  %1 = icmp eq i64 %K, -1, !dbg !3123
  %2 = icmp eq i64 %N, -9223372036854775808, !dbg !3123
  %3 = and i1 %2, %1, !dbg !3123
  %4 = select i1 %3, i64 1, i64 %K, !dbg !3123
    #dbg_value(!DIArgList(i64 %N, i64 %4), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_div, DW_OP_stack_value), !3124)
  %5 = sdiv i64 %N, %4, !dbg !3123
    #dbg_value(i64 %5, !3117, !DIExpression(), !3124)
  %6 = srem i64 %N, %4, !dbg !3127
    #dbg_value(i64 %6, !3118, !DIExpression(), !3128)
    #dbg_value(i64 %K, !3115, !DIExpression(), !3129)
    #dbg_value(i64 %K, !3115, !DIExpression(), !3130)
  %7 = add i64 %K, -1, !dbg !3131
  %8 = mul i64 %7, %K, !dbg !3132
  %9 = sdiv i64 %8, 2, !dbg !3133
    #dbg_value(i64 %5, !3117, !DIExpression(), !3134)
  %10 = mul i64 %5, %9, !dbg !3135
    #dbg_value(i64 %6, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %6, !3118, !DIExpression(), !3137)
  %11 = add i64 %6, 1, !dbg !3138
  %12 = mul i64 %11, %6, !dbg !3139
  %13 = sdiv i64 %12, 2, !dbg !3140
  %14 = add i64 %13, %10, !dbg !3141
    #dbg_value(i64 %14, !3116, !DIExpression(), !3142)
    #dbg_value(i64 %14, !3116, !DIExpression(), !3143)
  ret i64 %14, !dbg !3144

divbyzero.throw:                                  ; preds = %entry
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3123
  unreachable, !dbg !3123
}
