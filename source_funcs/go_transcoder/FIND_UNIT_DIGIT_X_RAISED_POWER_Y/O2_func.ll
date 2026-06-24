define range(i64 -9, 10) i64 @f_gold(i64 %x, i64 %y) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %y, !3027, !DIExpression(), !3030)
    #dbg_value(i64 1, !3028, !DIExpression(), !3031)
    #dbg_value(i64 0, !3029, !DIExpression(), !3032)
  %0 = icmp sgt i64 %y, 0, !dbg !3033
  br i1 %0, label %for.body, label %for.done, !dbg !3034

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %5, %for.body ], [ 0, %entry ]
  %2 = phi i64 [ %4, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %1, !3029, !DIExpression(), !3035)
    #dbg_value(i64 %2, !3028, !DIExpression(), !3036)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3037)
  %3 = mul i64 %2, %x, !dbg !3038
  %4 = srem i64 %3, 10, !dbg !3039
    #dbg_value(i64 %4, !3028, !DIExpression(), !3040)
  %5 = add nuw nsw i64 %1, 1, !dbg !3041
    #dbg_value(i64 %5, !3029, !DIExpression(), !3035)
    #dbg_value(i64 %y, !3027, !DIExpression(), !3042)
  %exitcond.not = icmp eq i64 %5, %y, !dbg !3033
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3034

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %4, %for.body ], !dbg !3031
    #dbg_value(i64 %.lcssa, !3028, !DIExpression(), !3043)
  ret i64 %.lcssa, !dbg !3044
}
