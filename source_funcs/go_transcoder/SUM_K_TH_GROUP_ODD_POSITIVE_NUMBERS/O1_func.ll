define i64 @f_gold(i64 %k) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %k, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %k, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %k, !3110, !DIExpression(), !3115)
    #dbg_value(!DIArgList(i64 %k, i64 %k), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_plus_uconst, 1, DW_OP_stack_value), !3116)
    #dbg_value(i64 0, !3112, !DIExpression(), !3117)
  %.not23 = icmp eq i64 %k, 0, !dbg !3118
  br i1 %.not23, label %for.done, label %for.done.loopexit, !dbg !3119

for.done.loopexit:                                ; preds = %entry
    #dbg_value(!DIArgList(i64 %k, i64 %k), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_plus_uconst, 1, DW_OP_stack_value), !3116)
  %0 = add i64 %k, -1, !dbg !3120
    #dbg_value(!DIArgList(i64 %0, i64 %k), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_plus_uconst, 1, DW_OP_stack_value), !3116)
  %1 = mul i64 %k, %k, !dbg !3119
  %2 = add i64 %1, 3, !dbg !3119
  %3 = mul i64 %0, %2, !dbg !3119
  %4 = add i64 %k, -2, !dbg !3119
  %5 = mul i64 %0, %4, !dbg !3119
  %6 = and i64 %5, -2, !dbg !3119
  %7 = add i64 %3, %6, !dbg !3119
    #dbg_value(i64 poison, !3111, !DIExpression(), !3121)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3112, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3122)
    #dbg_value(i64 poison, !3111, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !3123)
  %8 = add i64 %7, 1, !dbg !3119
  br label %for.done, !dbg !3124

for.done:                                         ; preds = %for.done.loopexit, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %8, %for.done.loopexit ], !dbg !3117
    #dbg_value(i64 %.lcssa, !3112, !DIExpression(), !3125)
  ret i64 %.lcssa, !dbg !3124
}
