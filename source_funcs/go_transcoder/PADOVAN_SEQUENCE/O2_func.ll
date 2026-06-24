define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
    #dbg_value(i64 1, !3027, !DIExpression(), !3033)
    #dbg_value(i64 1, !3028, !DIExpression(), !3034)
    #dbg_value(i64 1, !3029, !DIExpression(), !3035)
    #dbg_value(i64 1, !3030, !DIExpression(), !3036)
    #dbg_value(i64 3, !3031, !DIExpression(), !3037)
  %.not1 = icmp slt i64 %n, 3, !dbg !3038
  br i1 %.not1, label %for.done, label %for.body, !dbg !3039

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %5, %for.body ], [ 3, %entry ]
  %1 = phi i64 [ %4, %for.body ], [ 1, %entry ]
  %2 = phi i64 [ %1, %for.body ], [ 1, %entry ]
  %3 = phi i64 [ %2, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %0, !3031, !DIExpression(), !3040)
    #dbg_value(i64 %3, !3027, !DIExpression(), !3041)
    #dbg_value(i64 %2, !3028, !DIExpression(), !3042)
  %4 = add i64 %2, %3, !dbg !3043
    #dbg_value(i64 %2, !3027, !DIExpression(), !3044)
    #dbg_value(i64 %1, !3028, !DIExpression(), !3045)
    #dbg_value(i64 %4, !3030, !DIExpression(), !3046)
    #dbg_value(i64 %4, !3029, !DIExpression(), !3047)
  %5 = add i64 %0, 1, !dbg !3048
    #dbg_value(i64 %5, !3031, !DIExpression(), !3040)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3049)
  %.not = icmp sgt i64 %5, %n, !dbg !3038
  br i1 %.not, label %for.done, label %for.body, !dbg !3039

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %4, %for.body ], !dbg !3036
    #dbg_value(i64 %.lcssa, !3030, !DIExpression(), !3050)
  ret i64 %.lcssa, !dbg !3051
}
