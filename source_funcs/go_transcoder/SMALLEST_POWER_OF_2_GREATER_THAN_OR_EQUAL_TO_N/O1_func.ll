define i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 0, !3111, !DIExpression(), !3113)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
  %.not = icmp eq i64 %n, 0, !dbg !3115
  br i1 %.not, label %for.loop.preheader, label %cond.true, !dbg !3116

cond.true:                                        ; preds = %entry
    #dbg_value(i64 %n, !3110, !DIExpression(), !3117)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3118)
  %0 = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %n), !dbg !3119
  %1 = icmp samesign ult i64 %0, 2, !dbg !3119
  br i1 %1, label %common.ret, label %for.loop.preheader, !dbg !3116

for.loop.preheader:                               ; preds = %entry, %cond.true
  %.ph = phi i64 [ %n, %cond.true ], [ 0, %entry ]
    #dbg_value(i64 %.ph, !3110, !DIExpression(), !3120)
  %.not12 = icmp eq i64 %.ph, 0, !dbg !3121
  %2 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.ph, i1 true), !dbg !3116
  %3 = sub nuw nsw i64 64, %2, !dbg !3116
  %.lcssa = select i1 %.not12, i64 0, i64 %3, !dbg !3116
    #dbg_value(i64 %.lcssa, !3111, !DIExpression(), !3122)
  %shift.overflow = icmp samesign ugt i64 %.lcssa, 63, !dbg !3123
  %4 = shl nuw i64 1, %.lcssa, !dbg !3123
  %shift.result1 = select i1 %shift.overflow, i64 0, i64 %4, !dbg !3123
  br label %common.ret, !dbg !3124

common.ret:                                       ; preds = %cond.true, %for.loop.preheader
  %common.ret.op = phi i64 [ %shift.result1, %for.loop.preheader ], [ %n, %cond.true ]
  ret i64 %common.ret.op, !dbg !3116
}
