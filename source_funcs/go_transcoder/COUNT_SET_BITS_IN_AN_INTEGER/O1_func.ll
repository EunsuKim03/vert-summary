define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 0, !3111, !DIExpression(), !3113)
  %.not1 = icmp eq i64 %n, 0, !dbg !3114
  br i1 %.not1, label %for.done, label %for.body, !dbg !3115

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %3, %for.body ], [ 0, %entry ]
  %1 = phi i64 [ %4, %for.body ], [ %n, %entry ]
    #dbg_value(i64 %1, !3110, !DIExpression(), !3116)
  %2 = and i64 %1, 1, !dbg !3117
  %3 = add i64 %0, %2, !dbg !3118
    #dbg_value(i64 %3, !3111, !DIExpression(), !3118)
  %4 = lshr i64 %1, 1, !dbg !3119
    #dbg_value(i64 %4, !3110, !DIExpression(), !3120)
  %.not = icmp ult i64 %1, 2, !dbg !3114
  br i1 %.not, label %for.done, label %for.body, !dbg !3115

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %3, %for.body ], !dbg !3113
    #dbg_value(i64 %.lcssa, !3111, !DIExpression(), !3121)
  ret i64 %.lcssa, !dbg !3122
}
