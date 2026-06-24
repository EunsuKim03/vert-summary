define i64 @f_gold(i64 %x, i64 %y, i64 %z) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3114)
    #dbg_value(i64 %z, !3112, !DIExpression(), !3114)
    #dbg_value(i64 0, !3113, !DIExpression(), !3115)
  %y.fr = freeze i64 %y, !dbg !3116
  %z.fr = freeze i64 %z, !dbg !3116
  %.not10 = icmp eq i64 %x, 0, !dbg !3117
  %.not311 = icmp eq i64 %y.fr, 0
  %or.cond12 = or i1 %.not10, %.not311, !dbg !3116
  %.not413 = icmp eq i64 %z.fr, 0
  %or.cond714 = or i1 %or.cond12, %.not413, !dbg !3116
  br i1 %or.cond714, label %for.done, label %for.done.loopexit, !dbg !3116

for.done.loopexit:                                ; preds = %entry
  %0 = add i64 %z.fr, -1, !dbg !3116
  %1 = add i64 %y.fr, -1, !dbg !3116
  %umin = call i64 @llvm.umin.i64(i64 %0, i64 %1), !dbg !3116
  %2 = add i64 %x, -1, !dbg !3116
  %umin16 = call i64 @llvm.umin.i64(i64 %umin, i64 %2), !dbg !3116
    #dbg_value(i64 poison, !3112, !DIExpression(), !3118)
    #dbg_value(i64 poison, !3111, !DIExpression(), !3119)
    #dbg_value(i64 poison, !3110, !DIExpression(), !3120)
    #dbg_value(i64 poison, !3110, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3121)
    #dbg_value(i64 poison, !3111, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3122)
    #dbg_value(i64 poison, !3112, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3123)
    #dbg_value(i64 poison, !3113, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3124)
  %3 = add i64 %umin16, 1, !dbg !3116
  br label %for.done, !dbg !3125

for.done:                                         ; preds = %for.done.loopexit, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %3, %for.done.loopexit ], !dbg !3115
    #dbg_value(i64 %.lcssa, !3113, !DIExpression(), !3126)
  ret i64 %.lcssa, !dbg !3125
}
