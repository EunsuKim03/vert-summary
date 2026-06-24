define i64 @f_gold(i64 %x, i64 %y) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %y, !3027, !DIExpression(), !3029)
  %.not1 = icmp eq i64 %y, 0, !dbg !3030
  br i1 %.not1, label %for.done, label %for.body, !dbg !3031

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %4, %for.body ], [ %y, %entry ]
  %1 = phi i64 [ %3, %for.body ], [ %x, %entry ]
    #dbg_value(i64 %1, !3026, !DIExpression(), !3032)
    #dbg_value(i64 %0, !3027, !DIExpression(), !3033)
  %2 = and i64 %0, %1, !dbg !3034
    #dbg_value(i64 %2, !3028, !DIExpression(), !3035)
  %3 = xor i64 %0, %1, !dbg !3036
    #dbg_value(i64 %3, !3026, !DIExpression(), !3037)
  %4 = shl i64 %2, 1, !dbg !3038
    #dbg_value(i64 %4, !3027, !DIExpression(), !3039)
  %.not = icmp eq i64 %4, 0, !dbg !3030
  br i1 %.not, label %for.done, label %for.body, !dbg !3031

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ %x, %entry ], [ %3, %for.body ], !dbg !3040
    #dbg_value(i64 %.lcssa, !3026, !DIExpression(), !3041)
  ret i64 %.lcssa, !dbg !3042
}
