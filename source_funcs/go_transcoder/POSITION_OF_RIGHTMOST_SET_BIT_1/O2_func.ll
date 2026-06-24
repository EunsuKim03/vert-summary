define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
    #dbg_value(i64 1, !3027, !DIExpression(), !3030)
    #dbg_value(i64 1, !3028, !DIExpression(), !3031)
  %0 = and i64 %n, 1, !dbg !3032
  %1 = icmp eq i64 %0, 0, !dbg !3033
  br i1 %1, label %for.body, label %for.done, !dbg !3034

for.body:                                         ; preds = %entry, %for.body
  %2 = phi i64 [ %4, %for.body ], [ 1, %entry ]
  %3 = phi i64 [ %5, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %2, !3028, !DIExpression(), !3035)
  %4 = shl i64 %2, 1, !dbg !3036
    #dbg_value(i64 %4, !3028, !DIExpression(), !3037)
  %5 = add i64 %3, 1, !dbg !3038
    #dbg_value(i64 %5, !3027, !DIExpression(), !3038)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3039)
  %6 = and i64 %4, %n, !dbg !3032
  %7 = icmp eq i64 %6, 0, !dbg !3033
  br i1 %7, label %for.body, label %for.done, !dbg !3034

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %5, %for.body ], !dbg !3030
    #dbg_value(i64 %.lcssa, !3027, !DIExpression(), !3040)
  ret i64 %.lcssa, !dbg !3041
}
