define noundef i1 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
  %0 = icmp slt i64 %n, 2, !dbg !3114
  br i1 %0, label %common.ret, label %for.loop.preheader, !dbg !3115

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 2, !3111, !DIExpression(), !3116)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3117)
  %.not = icmp eq i64 %n, 2, !dbg !3118
  br i1 %.not, label %common.ret, label %divbyzero.next, !dbg !3115

common.ret:                                       ; preds = %divbyzero.next, %for.loop.preheader, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ true, %for.loop.preheader ], [ %3, %divbyzero.next ]
  ret i1 %common.ret.op, !dbg !3115

divbyzero.next:                                   ; preds = %divbyzero.next, %for.loop.preheader
  %1 = phi i64 [ 2, %for.loop.preheader ], [ %4, %divbyzero.next ]
    #dbg_value(i64 %1, !3111, !DIExpression(), !3116)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3119)
    #dbg_value(i64 %1, !3111, !DIExpression(), !3120)
  %2 = urem i64 %n, %1, !dbg !3121
  %3 = icmp ne i64 %2, 0, !dbg !3122
    #dbg_value(i64 %1, !3111, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3123)
  %4 = add nuw nsw i64 %1, 1
    #dbg_value(i64 %4, !3111, !DIExpression(), !3123)
    #dbg_value(i64 %4, !3111, !DIExpression(), !3116)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3117)
  %exitcond.not = icmp ne i64 %4, %n
  %or.cond.not = select i1 %3, i1 %exitcond.not, i1 false, !dbg !3115
  br i1 %or.cond.not, label %divbyzero.next, label %common.ret, !dbg !3115
}
