define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
    #dbg_value(i64 0, !3027, !DIExpression(), !3030)
    #dbg_value(i64 1, !3028, !DIExpression(), !3031)
  %.not1 = icmp slt i64 %n, 1, !dbg !3032
  br i1 %.not1, label %for.done, label %for.body, !dbg !3033

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %6, %for.body ], [ 1, %entry ]
  %1 = phi i64 [ %5, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %1, !3027, !DIExpression(), !3034)
    #dbg_value(i64 %0, !3028, !DIExpression(), !3035)
  %2 = shl i64 %0, 1, !dbg !3036
  %3 = add i64 %2, -1, !dbg !3037
  %4 = mul i64 %3, %3, !dbg !3038
  %5 = add i64 %4, %1, !dbg !3039
    #dbg_value(i64 %5, !3027, !DIExpression(), !3040)
  %6 = add i64 %0, 1, !dbg !3041
    #dbg_value(i64 %6, !3028, !DIExpression(), !3042)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3043)
  %.not = icmp sgt i64 %6, %n, !dbg !3032
  br i1 %.not, label %for.done, label %for.body, !dbg !3033

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %5, %for.body ], !dbg !3030
    #dbg_value(i64 %.lcssa, !3027, !DIExpression(), !3044)
  ret i64 %.lcssa, !dbg !3045
}
