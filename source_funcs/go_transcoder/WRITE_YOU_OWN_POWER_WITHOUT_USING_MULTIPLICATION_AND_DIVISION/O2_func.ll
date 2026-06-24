define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3032)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3033)
  %0 = icmp eq i64 %b, 0, !dbg !3034
  br i1 %0, label %common.ret, label %for.loop.preheader, !dbg !3035

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 1, !3030, !DIExpression(), !3036)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3037)
  %1 = icmp sgt i64 %b, 1, !dbg !3038
  br i1 %1, label %for.loop1.preheader.lr.ph, label %common.ret, !dbg !3035

for.loop1.preheader.lr.ph:                        ; preds = %for.loop.preheader
  br label %for.loop1.preheader, !dbg !3035

common.ret:                                       ; preds = %for.loop1.preheader, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ 1, %entry ], [ %a, %for.loop.preheader ], [ %spec.select, %for.loop1.preheader ]
  ret i64 %common.ret.op, !dbg !3035

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.loop1.preheader
  %2 = phi i64 [ 1, %for.loop1.preheader.lr.ph ], [ %5, %for.loop1.preheader ]
  %3 = phi i64 [ %a, %for.loop1.preheader.lr.ph ], [ %spec.select, %for.loop1.preheader ]
    #dbg_value(i64 %2, !3030, !DIExpression(), !3036)
    #dbg_value(i64 1, !3031, !DIExpression(), !3039)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3040)
  %4 = call i64 @llvm.smax.i64(i64 %a, i64 1), !dbg !3035
  %spec.select = mul i64 %3, %4, !dbg !3035
    #dbg_value(i64 %spec.select, !3028, !DIExpression(), !3041)
    #dbg_value(i64 %spec.select, !3029, !DIExpression(), !3042)
  %5 = add nuw nsw i64 %2, 1, !dbg !3043
    #dbg_value(i64 %5, !3030, !DIExpression(), !3036)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3037)
  %exitcond.not = icmp eq i64 %5, %b, !dbg !3038
  br i1 %exitcond.not, label %common.ret, label %for.loop1.preheader, !dbg !3035
}
