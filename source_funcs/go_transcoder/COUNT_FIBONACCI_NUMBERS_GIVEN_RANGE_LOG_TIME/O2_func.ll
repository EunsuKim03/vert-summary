define i64 @f_gold(i64 %low, i64 %high) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %low, !3026, !DIExpression(), !3032)
    #dbg_value(i64 %high, !3027, !DIExpression(), !3032)
    #dbg_value(i64 0, !3028, !DIExpression(), !3033)
    #dbg_value(i64 1, !3029, !DIExpression(), !3034)
    #dbg_value(i64 1, !3030, !DIExpression(), !3035)
    #dbg_value(i64 0, !3031, !DIExpression(), !3036)
  %.not2 = icmp slt i64 %high, 0, !dbg !3037
  br i1 %.not2, label %for.done, label %for.body, !dbg !3038

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %spec.select, %for.body ], [ 0, %entry ]
  %1 = phi i64 [ %5, %for.body ], [ 1, %entry ]
  %2 = phi i64 [ %1, %for.body ], [ 1, %entry ]
  %3 = phi i64 [ %2, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %3, !3028, !DIExpression(), !3039)
    #dbg_value(i64 %low, !3026, !DIExpression(), !3040)
  %.not1 = icmp sge i64 %3, %low, !dbg !3041
  %4 = zext i1 %.not1 to i64, !dbg !3038
  %spec.select = add i64 %0, %4, !dbg !3038
    #dbg_value(i64 %1, !3030, !DIExpression(), !3042)
    #dbg_value(i64 %2, !3028, !DIExpression(), !3043)
    #dbg_value(i64 %1, !3029, !DIExpression(), !3044)
  %5 = add i64 %1, %2, !dbg !3045
    #dbg_value(i64 %5, !3030, !DIExpression(), !3046)
    #dbg_value(i64 %high, !3027, !DIExpression(), !3047)
  %.not = icmp sgt i64 %2, %high, !dbg !3037
  br i1 %.not, label %for.done, label %for.body, !dbg !3038

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !3036
    #dbg_value(i64 %.lcssa, !3031, !DIExpression(), !3048)
  ret i64 %.lcssa, !dbg !3049
}
