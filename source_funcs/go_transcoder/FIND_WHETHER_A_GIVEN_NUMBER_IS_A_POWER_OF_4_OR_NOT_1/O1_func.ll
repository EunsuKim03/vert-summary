define noundef i1 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 0, !3111, !DIExpression(), !3113)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
  %0 = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %n)
  %or.cond = icmp eq i64 %0, 1, !dbg !3117
  br i1 %or.cond, label %for.loop.preheader, label %common.ret, !dbg !3117

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 %n, !3110, !DIExpression(), !3118)
  %1 = icmp ugt i64 %n, 1, !dbg !3119
  br i1 %1, label %for.body, label %common.ret, !dbg !3117

for.body:                                         ; preds = %for.loop.preheader, %for.body
  %2 = phi i64 [ %5, %for.body ], [ 0, %for.loop.preheader ]
  %3 = phi i64 [ %4, %for.body ], [ %n, %for.loop.preheader ]
    #dbg_value(i64 %3, !3110, !DIExpression(), !3118)
  %4 = lshr i64 %3, 1, !dbg !3120
    #dbg_value(i64 %4, !3110, !DIExpression(), !3120)
  %5 = add nuw nsw i64 %2, 1, !dbg !3121
    #dbg_value(i64 %5, !3111, !DIExpression(), !3121)
  %6 = icmp ugt i64 %3, 3, !dbg !3119
  br i1 %6, label %for.body, label %for.done.loopexit, !dbg !3117

for.done.loopexit:                                ; preds = %for.body
  %7 = and i64 %2, 1, !dbg !3122
  %8 = icmp ne i64 %7, 0, !dbg !3122
  br label %common.ret, !dbg !3122

common.ret:                                       ; preds = %for.loop.preheader, %for.done.loopexit, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ true, %for.loop.preheader ], [ %8, %for.done.loopexit ]
  ret i1 %common.ret.op, !dbg !3117
}
