define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3029)
    #dbg_value(i64 0, !3028, !DIExpression(), !3030)
  %.not2 = icmp eq i64 %b, 0, !dbg !3031
  br i1 %.not2, label %for.done, label %for.body, !dbg !3032

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %spec.select, %for.body ], [ 0, %entry ]
  %1 = phi i64 [ %6, %for.body ], [ %b, %entry ]
  %2 = phi i64 [ %5, %for.body ], [ %a, %entry ]
    #dbg_value(i64 %1, !3027, !DIExpression(), !3033)
  %3 = and i64 %1, 1, !dbg !3034
  %.not1 = icmp eq i64 %3, 0, !dbg !3035
  %4 = select i1 %.not1, i64 0, i64 %2, !dbg !3032
  %spec.select = add i64 %4, %0, !dbg !3032
    #dbg_value(i64 %2, !3026, !DIExpression(), !3036)
  %5 = shl i64 %2, 1, !dbg !3037
    #dbg_value(i64 %5, !3026, !DIExpression(), !3038)
  %6 = lshr i64 %1, 1, !dbg !3039
    #dbg_value(i64 %6, !3027, !DIExpression(), !3040)
  %.not = icmp ult i64 %1, 2, !dbg !3031
  br i1 %.not, label %for.done, label %for.body, !dbg !3032

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !3030
    #dbg_value(i64 %.lcssa, !3028, !DIExpression(), !3041)
  ret i64 %.lcssa, !dbg !3042
}
