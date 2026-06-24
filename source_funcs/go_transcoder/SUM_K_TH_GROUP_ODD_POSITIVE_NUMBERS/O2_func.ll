define i64 @f_gold(i64 %k) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %k, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %k, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %k, !3026, !DIExpression(), !3031)
    #dbg_value(!DIArgList(i64 %k, i64 %k), !3027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_plus_uconst, 1, DW_OP_stack_value), !3032)
    #dbg_value(i64 0, !3028, !DIExpression(), !3033)
  %.not23 = icmp eq i64 %k, 0, !dbg !3034
  br i1 %.not23, label %for.done, label %for.body.preheader, !dbg !3035

for.body.preheader:                               ; preds = %entry
  %0 = add i64 %k, -1, !dbg !3036
    #dbg_value(!DIArgList(i64 %0, i64 %k), !3027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_plus_uconst, 1, DW_OP_stack_value), !3032)
  %1 = mul i64 %k, %k, !dbg !3035
  %2 = add i64 %1, 3, !dbg !3035
  %3 = mul i64 %0, %2, !dbg !3035
  %4 = add i64 %k, -2, !dbg !3035
  %5 = mul i64 %0, %4, !dbg !3035
  %6 = and i64 %5, -2, !dbg !3035
  %7 = add i64 %3, %6, !dbg !3035
    #dbg_value(i64 poison, !3027, !DIExpression(), !3037)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3038)
    #dbg_value(i64 poison, !3027, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !3039)
  %8 = add i64 %7, 1, !dbg !3035
  br label %for.done, !dbg !3040

for.done:                                         ; preds = %for.body.preheader, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %8, %for.body.preheader ], !dbg !3033
    #dbg_value(i64 %.lcssa, !3028, !DIExpression(), !3041)
  ret i64 %.lcssa, !dbg !3040
}
