define i64 @f_gold(i64 %x) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3028)
    #dbg_value(i64 1, !3027, !DIExpression(), !3029)
  %0 = and i64 %x, 1, !dbg !3030
  %.not2 = icmp eq i64 %0, 0, !dbg !3031
  br i1 %.not2, label %for.done, label %for.body, !dbg !3032

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %4, %for.body ], [ 1, %entry ]
  %2 = phi i64 [ %3, %for.body ], [ %x, %entry ]
    #dbg_value(i64 %2, !3026, !DIExpression(), !3033)
    #dbg_value(i64 %1, !3027, !DIExpression(), !3034)
  %3 = xor i64 %1, %2, !dbg !3035
    #dbg_value(i64 %3, !3026, !DIExpression(), !3036)
  %4 = shl i64 %1, 1, !dbg !3037
    #dbg_value(i64 %4, !3027, !DIExpression(), !3038)
  %5 = and i64 %4, %3, !dbg !3030
  %.not = icmp eq i64 %5, 0, !dbg !3031
  br i1 %.not, label %for.done, label %for.body, !dbg !3032

for.done:                                         ; preds = %for.body, %entry
  %.lcssa1 = phi i64 [ %x, %entry ], [ %3, %for.body ], !dbg !3039
  %.lcssa = phi i64 [ 1, %entry ], [ %4, %for.body ], !dbg !3029
    #dbg_value(i64 %.lcssa1, !3026, !DIExpression(), !3040)
    #dbg_value(i64 %.lcssa, !3027, !DIExpression(), !3041)
  %6 = xor i64 %.lcssa, %.lcssa1, !dbg !3042
    #dbg_value(i64 %6, !3026, !DIExpression(), !3043)
  ret i64 %6, !dbg !3044
}
