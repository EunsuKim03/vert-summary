define i1 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i1 false, !3111, !DIExpression(), !3113)
  %.not1 = icmp eq i64 %n, 0, !dbg !3114
  br i1 %.not1, label %for.done, label %for.body, !dbg !3115

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i1 [ %2, %for.body ], [ false, %entry ]
  %1 = phi i64 [ %4, %for.body ], [ %n, %entry ]
    #dbg_value(i64 %1, !3110, !DIExpression(), !3116)
    #dbg_value(i1 %0, !3111, !DIExpression(), !3117)
  %2 = xor i1 %0, true, !dbg !3118
    #dbg_value(i1 %2, !3111, !DIExpression(), !3119)
  %3 = add i64 %1, -1, !dbg !3120
  %4 = and i64 %3, %1, !dbg !3121
    #dbg_value(i64 %4, !3110, !DIExpression(), !3116)
  %.not = icmp eq i64 %4, 0, !dbg !3114
  br i1 %.not, label %for.done, label %for.body, !dbg !3115

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i1 [ false, %entry ], [ %2, %for.body ], !dbg !3113
    #dbg_value(i1 %.lcssa, !3111, !DIExpression(), !3122)
  ret i1 %.lcssa, !dbg !3123
}
