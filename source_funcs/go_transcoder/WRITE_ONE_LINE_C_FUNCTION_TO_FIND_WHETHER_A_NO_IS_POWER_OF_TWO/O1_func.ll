define noundef i1 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
  switch i64 %n, label %for.body [
    i64 0, label %common.ret
    i64 1, label %common.ret.loopexit
  ], !dbg !3113

common.ret.loopexit:                              ; preds = %entry
  br label %common.ret, !dbg !3113

common.ret:                                       ; preds = %for.body, %entry, %common.ret.loopexit
  %common.ret.op = phi i1 [ false, %entry ], [ true, %common.ret.loopexit ], [ %.not1, %for.body ]
  ret i1 %common.ret.op, !dbg !3113

for.body:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %n, %entry ], [ %2, %for.body ]
    #dbg_value(i64 %0, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %0, !3110, !DIExpression(), !3115)
  %1 = and i64 %0, 1, !dbg !3116
  %.not1 = icmp eq i64 %1, 0, !dbg !3116
    #dbg_value(i64 %0, !3110, !DIExpression(), !3117)
    #dbg_value(i64 %0, !3110, !DIExpression(DW_OP_constu, 1, DW_OP_shra, DW_OP_stack_value), !3118)
  %2 = ashr exact i64 %0, 1
    #dbg_value(i64 %2, !3110, !DIExpression(), !3118)
    #dbg_value(i64 %2, !3110, !DIExpression(), !3114)
  %.not = icmp ne i64 %0, 2
  %or.cond.not = and i1 %.not, %.not1, !dbg !3113
  br i1 %or.cond.not, label %for.body, label %common.ret, !dbg !3113
}
