define noundef i1 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
  %0 = icmp slt i64 %n, 2, !dbg !3029
  br i1 %0, label %common.ret, label %for.loop.preheader, !dbg !3030

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 2, !3027, !DIExpression(), !3031)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
  %.not = icmp eq i64 %n, 2, !dbg !3033
  br i1 %.not, label %common.ret, label %divbyzero.next, !dbg !3030

common.ret:                                       ; preds = %divbyzero.next, %for.loop, %for.loop.preheader, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ true, %for.loop.preheader ], [ false, %divbyzero.next ], [ true, %for.loop ]
  ret i1 %common.ret.op, !dbg !3030

for.loop:                                         ; preds = %divbyzero.next
  %1 = add nuw nsw i64 %2, 1, !dbg !3034
    #dbg_value(i64 %1, !3027, !DIExpression(), !3031)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
  %exitcond.not = icmp eq i64 %1, %n, !dbg !3033
  br i1 %exitcond.not, label %common.ret, label %divbyzero.next, !dbg !3030

divbyzero.next:                                   ; preds = %for.loop.preheader, %for.loop
  %2 = phi i64 [ %1, %for.loop ], [ 2, %for.loop.preheader ]
    #dbg_value(i64 %n, !3026, !DIExpression(), !3035)
    #dbg_value(i64 %2, !3027, !DIExpression(), !3036)
  %3 = urem i64 %n, %2, !dbg !3037
  %.not2 = icmp eq i64 %3, 0, !dbg !3038
    #dbg_value(i64 %2, !3027, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3034)
  br i1 %.not2, label %common.ret, label %for.loop, !dbg !3030
}
