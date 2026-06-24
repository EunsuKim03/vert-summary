define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 0, !3027, !DIExpression(), !3029)
  %.not1 = icmp eq i64 %n, 0, !dbg !3030
  br i1 %.not1, label %for.done, label %for.body, !dbg !3031

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %3, %for.body ], [ 0, %entry ]
  %1 = phi i64 [ %4, %for.body ], [ %n, %entry ]
    #dbg_value(i64 %1, !3026, !DIExpression(), !3032)
  %2 = and i64 %1, 1, !dbg !3033
  %3 = add i64 %0, %2, !dbg !3034
    #dbg_value(i64 %3, !3027, !DIExpression(), !3034)
  %4 = lshr i64 %1, 1, !dbg !3035
    #dbg_value(i64 %4, !3026, !DIExpression(), !3036)
  %.not = icmp ult i64 %1, 2, !dbg !3030
  br i1 %.not, label %for.done, label %for.body, !dbg !3031

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %3, %for.body ], !dbg !3029
    #dbg_value(i64 %.lcssa, !3027, !DIExpression(), !3037)
  ret i64 %.lcssa, !dbg !3038
}
