define i64 @f_gold(i64 %n, i64 %m, i64 %k) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3117)
    #dbg_value(i64 %m, !3115, !DIExpression(), !3117)
    #dbg_value(i64 %k, !3116, !DIExpression(), !3117)
    #dbg_value(i64 %m, !3115, !DIExpression(), !3118)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3119)
    #dbg_value(i64 %k, !3116, !DIExpression(), !3120)
  %0 = add i64 %n, 1, !dbg !3121
  %1 = sub i64 %0, %k, !dbg !3122
  %.not = icmp sgt i64 %m, %1, !dbg !3123
  br i1 %.not, label %if.done, label %if.then, !dbg !3124

common.ret:                                       ; preds = %divbyzero.next, %if.then
  %common.ret.op = phi i64 [ %3, %if.then ], [ %spec.select, %divbyzero.next ]
  ret i64 %common.ret.op, !dbg !3124

if.then:                                          ; preds = %entry
    #dbg_value(i64 %m, !3115, !DIExpression(), !3125)
    #dbg_value(i64 %k, !3116, !DIExpression(), !3126)
  %2 = add i64 %k, %m, !dbg !3127
  %3 = add i64 %2, -1, !dbg !3128
  br label %common.ret, !dbg !3129

if.done:                                          ; preds = %entry
    #dbg_value(i64 %m, !3115, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3131)
    #dbg_value(i64 %k, !3116, !DIExpression(), !3132)
    #dbg_value(!DIArgList(i64 %k, i64 %m, i64 %n), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3133)
    #dbg_value(!DIArgList(i64 %k, i64 %m, i64 %n), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3134)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3135)
  %4 = icmp eq i64 %n, 0, !dbg !3136
  br i1 %4, label %divbyzero.throw, label %divbyzero.next, !dbg !3136

divbyzero.next:                                   ; preds = %if.done
  %5 = xor i64 %n, -1, !dbg !3137
    #dbg_value(!DIArgList(i64 %k, i64 %m, i64 %5), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3134)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3134)
  %.neg = add i64 %k, %m, !dbg !3137
  %6 = add i64 %.neg, %5, !dbg !3138
    #dbg_value(i64 %6, !3115, !DIExpression(), !3134)
  %7 = icmp eq i64 %n, -1, !dbg !3136
  %8 = icmp eq i64 %6, -9223372036854775808, !dbg !3136
  %9 = and i1 %7, %8, !dbg !3136
  %10 = select i1 %9, i64 1, i64 %n, !dbg !3136
  %11 = srem i64 %6, %10, !dbg !3136
  %12 = icmp eq i64 %11, 0, !dbg !3139
  %spec.select = select i1 %12, i64 %n, i64 %11, !dbg !3124
  br label %common.ret, !dbg !3124

divbyzero.throw:                                  ; preds = %if.done
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3136
  unreachable, !dbg !3136
}
