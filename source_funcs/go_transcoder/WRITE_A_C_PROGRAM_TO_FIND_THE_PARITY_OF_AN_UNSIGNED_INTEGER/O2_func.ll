define i1 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i1 false, !3027, !DIExpression(), !3029)
  %.not1 = icmp eq i64 %n, 0, !dbg !3030
  br i1 %.not1, label %for.done, label %for.body, !dbg !3031

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i1 [ %2, %for.body ], [ false, %entry ]
  %1 = phi i64 [ %4, %for.body ], [ %n, %entry ]
    #dbg_value(i64 %1, !3026, !DIExpression(), !3032)
    #dbg_value(i1 %0, !3027, !DIExpression(), !3033)
  %2 = xor i1 %0, true, !dbg !3034
    #dbg_value(i1 %2, !3027, !DIExpression(), !3035)
  %3 = add i64 %1, -1, !dbg !3036
  %4 = and i64 %3, %1, !dbg !3037
    #dbg_value(i64 %4, !3026, !DIExpression(), !3032)
  %.not = icmp eq i64 %4, 0, !dbg !3030
  br i1 %.not, label %for.done, label %for.body, !dbg !3031

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i1 [ false, %entry ], [ %2, %for.body ], !dbg !3029
    #dbg_value(i1 %.lcssa, !3027, !DIExpression(), !3038)
  ret i1 %.lcssa, !dbg !3039
}
