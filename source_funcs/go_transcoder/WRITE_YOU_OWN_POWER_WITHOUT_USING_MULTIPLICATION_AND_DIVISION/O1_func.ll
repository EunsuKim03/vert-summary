define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3116)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3116)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3117)
  %0 = icmp eq i64 %b, 0, !dbg !3118
  br i1 %0, label %common.ret, label %for.loop.preheader, !dbg !3119

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 1, !3114, !DIExpression(), !3120)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3121)
  %1 = icmp sgt i64 %b, 1, !dbg !3122
  br i1 %1, label %for.loop1.preheader.lr.ph, label %common.ret, !dbg !3119

for.loop1.preheader.lr.ph:                        ; preds = %for.loop.preheader
  br label %for.loop1.preheader, !dbg !3119

common.ret:                                       ; preds = %for.loop1.preheader, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ 1, %entry ], [ %a, %for.loop.preheader ], [ %.lcssa, %for.loop1.preheader ]
  ret i64 %common.ret.op, !dbg !3119

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.loop1.preheader
  %2 = phi i64 [ 1, %for.loop1.preheader.lr.ph ], [ %5, %for.loop1.preheader ]
  %3 = phi i64 [ %a, %for.loop1.preheader.lr.ph ], [ %.lcssa, %for.loop1.preheader ]
    #dbg_value(i64 %2, !3114, !DIExpression(), !3120)
    #dbg_value(i64 1, !3115, !DIExpression(), !3123)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3124)
  %4 = call i64 @llvm.smax.i64(i64 %a, i64 1), !dbg !3119
  %.lcssa = mul i64 %3, %4, !dbg !3119
    #dbg_value(i64 %.lcssa, !3112, !DIExpression(), !3125)
    #dbg_value(i64 %.lcssa, !3113, !DIExpression(), !3126)
  %5 = add nuw nsw i64 %2, 1, !dbg !3127
    #dbg_value(i64 %5, !3114, !DIExpression(), !3120)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3121)
  %exitcond.not = icmp eq i64 %5, %b, !dbg !3122
  br i1 %exitcond.not, label %common.ret, label %for.loop1.preheader, !dbg !3119
}
