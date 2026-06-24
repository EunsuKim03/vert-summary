define i64 @f_gold(i64 %n, i64 %m, i64 %k) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3033)
    #dbg_value(i64 %m, !3031, !DIExpression(), !3033)
    #dbg_value(i64 %k, !3032, !DIExpression(), !3033)
    #dbg_value(i64 %m, !3031, !DIExpression(), !3034)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3035)
    #dbg_value(i64 %k, !3032, !DIExpression(), !3036)
  %0 = add i64 %n, 1, !dbg !3037
  %1 = sub i64 %0, %k, !dbg !3038
  %.not = icmp sgt i64 %m, %1, !dbg !3039
  br i1 %.not, label %if.done, label %if.then, !dbg !3040

common.ret:                                       ; preds = %divbyzero.next, %if.then
  %common.ret.op = phi i64 [ %3, %if.then ], [ %spec.select, %divbyzero.next ]
  ret i64 %common.ret.op, !dbg !3040

if.then:                                          ; preds = %entry
    #dbg_value(i64 %m, !3031, !DIExpression(), !3041)
    #dbg_value(i64 %k, !3032, !DIExpression(), !3042)
  %2 = add i64 %k, %m, !dbg !3043
  %3 = add i64 %2, -1, !dbg !3044
  br label %common.ret, !dbg !3045

if.done:                                          ; preds = %entry
    #dbg_value(i64 %m, !3031, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3047)
    #dbg_value(i64 %k, !3032, !DIExpression(), !3048)
    #dbg_value(!DIArgList(i64 %k, i64 %m, i64 %n), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3049)
    #dbg_value(!DIArgList(i64 %k, i64 %m, i64 %n), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3050)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3051)
  %4 = icmp eq i64 %n, 0, !dbg !3052
  br i1 %4, label %divbyzero.throw, label %divbyzero.next, !dbg !3052

divbyzero.next:                                   ; preds = %if.done
  %5 = xor i64 %n, -1, !dbg !3053
    #dbg_value(!DIArgList(i64 %k, i64 %m, i64 %5), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3050)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3050)
  %.neg = add i64 %k, %m, !dbg !3053
  %6 = add i64 %.neg, %5, !dbg !3054
    #dbg_value(i64 %6, !3031, !DIExpression(), !3050)
  %7 = icmp eq i64 %n, -1, !dbg !3052
  %8 = icmp eq i64 %6, -9223372036854775808, !dbg !3052
  %9 = and i1 %7, %8, !dbg !3052
  %10 = select i1 %9, i64 1, i64 %n, !dbg !3052
  %11 = srem i64 %6, %10, !dbg !3052
  %12 = icmp eq i64 %11, 0, !dbg !3055
  %spec.select = select i1 %12, i64 %n, i64 %11, !dbg !3040
  br label %common.ret, !dbg !3040

divbyzero.throw:                                  ; preds = %if.done
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3052
  unreachable, !dbg !3052
}
