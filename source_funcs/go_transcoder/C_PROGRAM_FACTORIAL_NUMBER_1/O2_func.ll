define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
    #dbg_value(i64 1, !3027, !DIExpression(), !3030)
    #dbg_value(i64 2, !3028, !DIExpression(), !3031)
  %.not1 = icmp slt i64 %n, 2, !dbg !3032
  br i1 %.not1, label %for.done, label %for.body, !dbg !3033

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %3, %for.body ], [ 2, %entry ]
  %1 = phi i64 [ %2, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %0, !3028, !DIExpression(), !3034)
  %2 = mul i64 %0, %1, !dbg !3035
    #dbg_value(i64 %2, !3027, !DIExpression(), !3035)
  %3 = add i64 %0, 1, !dbg !3036
    #dbg_value(i64 %3, !3028, !DIExpression(), !3037)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3038)
  %.not = icmp sgt i64 %3, %n, !dbg !3032
  br i1 %.not, label %for.done, label %for.body, !dbg !3033

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %2, %for.body ], !dbg !3030
    #dbg_value(i64 %.lcssa, !3027, !DIExpression(), !3039)
  ret i64 %.lcssa, !dbg !3040
}
