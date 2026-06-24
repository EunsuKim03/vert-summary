define i64 @f_gold(i64 %x, i64 %y, i64 %z) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %y, !3027, !DIExpression(), !3030)
    #dbg_value(i64 %z, !3028, !DIExpression(), !3030)
    #dbg_value(i64 0, !3029, !DIExpression(), !3031)
  %y.fr = freeze i64 %y, !dbg !3032
  %z.fr = freeze i64 %z, !dbg !3032
  %.not10 = icmp eq i64 %x, 0, !dbg !3033
  %.not311 = icmp eq i64 %y.fr, 0
  %or.cond12 = or i1 %.not10, %.not311, !dbg !3032
  %.not413 = icmp eq i64 %z.fr, 0
  %or.cond714 = or i1 %or.cond12, %.not413, !dbg !3032
  br i1 %or.cond714, label %for.done, label %for.body.preheader, !dbg !3032

for.body.preheader:                               ; preds = %entry
  %0 = add i64 %z.fr, -1, !dbg !3032
  %1 = add i64 %y.fr, -1, !dbg !3032
  %umin = call i64 @llvm.umin.i64(i64 %0, i64 %1), !dbg !3032
  %2 = add i64 %x, -1, !dbg !3032
  %umin16 = call i64 @llvm.umin.i64(i64 %umin, i64 %2), !dbg !3032
    #dbg_value(i64 poison, !3028, !DIExpression(), !3034)
    #dbg_value(i64 poison, !3027, !DIExpression(), !3035)
    #dbg_value(i64 poison, !3026, !DIExpression(), !3036)
    #dbg_value(i64 poison, !3026, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3037)
    #dbg_value(i64 poison, !3027, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3038)
    #dbg_value(i64 poison, !3028, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3039)
    #dbg_value(i64 poison, !3029, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3040)
  %3 = add nuw i64 %umin16, 1, !dbg !3032
  br label %for.done, !dbg !3041

for.done:                                         ; preds = %for.body.preheader, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %3, %for.body.preheader ], !dbg !3031
    #dbg_value(i64 %.lcssa, !3029, !DIExpression(), !3042)
  ret i64 %.lcssa, !dbg !3041
}
