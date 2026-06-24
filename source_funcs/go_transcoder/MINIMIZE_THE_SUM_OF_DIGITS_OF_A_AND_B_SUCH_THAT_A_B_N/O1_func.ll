define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 0, !3111, !DIExpression(), !3113)
  %0 = icmp sgt i64 %n, 0, !dbg !3114
  br i1 %0, label %for.body, label %for.done, !dbg !3115

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %4, %for.body ], [ 0, %entry ]
  %2 = phi i64 [ %5, %for.body ], [ %n, %entry ]
    #dbg_value(i64 %2, !3110, !DIExpression(), !3116)
  %3 = urem i64 %2, 10, !dbg !3117
  %4 = add i64 %1, %3, !dbg !3118
    #dbg_value(i64 %4, !3111, !DIExpression(), !3118)
  %5 = udiv i64 %2, 10, !dbg !3119
    #dbg_value(i64 %5, !3110, !DIExpression(), !3120)
  %.not = icmp samesign ult i64 %2, 10, !dbg !3114
  br i1 %.not, label %for.done, label %for.body, !dbg !3115

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %4, %for.body ], !dbg !3113
    #dbg_value(i64 %.lcssa, !3111, !DIExpression(), !3121)
  %6 = icmp eq i64 %.lcssa, 1, !dbg !3122
  %. = select i1 %6, i64 10, i64 %.lcssa, !dbg !3115
  ret i64 %., !dbg !3115
}
