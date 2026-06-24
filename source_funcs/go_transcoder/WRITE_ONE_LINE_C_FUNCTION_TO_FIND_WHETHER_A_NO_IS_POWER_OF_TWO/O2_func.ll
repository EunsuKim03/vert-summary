define noundef i1 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
  switch i64 %n, label %for.body [
    i64 0, label %common.ret
    i64 1, label %common.ret.loopexit
  ], !dbg !3028

common.ret.loopexit:                              ; preds = %entry
  br label %common.ret, !dbg !3028

common.ret:                                       ; preds = %for.body, %for.loop, %entry, %common.ret.loopexit
  %common.ret.op = phi i1 [ false, %entry ], [ true, %common.ret.loopexit ], [ false, %for.body ], [ true, %for.loop ]
  ret i1 %common.ret.op, !dbg !3028

for.loop:                                         ; preds = %for.body
  %0 = ashr exact i64 %1, 1, !dbg !3029
    #dbg_value(i64 %0, !3026, !DIExpression(), !3030)
  %.not = icmp eq i64 %1, 2, !dbg !3031
  br i1 %.not, label %common.ret, label %for.body, !dbg !3028

for.body:                                         ; preds = %entry, %for.loop
  %1 = phi i64 [ %0, %for.loop ], [ %n, %entry ]
    #dbg_value(i64 %1, !3026, !DIExpression(), !3032)
  %2 = and i64 %1, 1, !dbg !3033
  %.not1 = icmp eq i64 %2, 0, !dbg !3033
    #dbg_value(i64 %1, !3026, !DIExpression(DW_OP_constu, 1, DW_OP_shra, DW_OP_stack_value), !3034)
  br i1 %.not1, label %for.loop, label %common.ret, !dbg !3028
}
