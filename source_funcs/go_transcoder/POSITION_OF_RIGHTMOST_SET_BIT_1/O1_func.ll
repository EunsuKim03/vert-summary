define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 1, !3111, !DIExpression(), !3114)
    #dbg_value(i64 1, !3112, !DIExpression(), !3115)
  %0 = and i64 %n, 1, !dbg !3116
  %1 = icmp eq i64 %0, 0, !dbg !3117
  br i1 %1, label %for.body, label %for.done, !dbg !3118

for.body:                                         ; preds = %entry, %for.body
  %2 = phi i64 [ %4, %for.body ], [ 1, %entry ]
  %3 = phi i64 [ %5, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %2, !3112, !DIExpression(), !3119)
  %4 = shl i64 %2, 1, !dbg !3120
    #dbg_value(i64 %4, !3112, !DIExpression(), !3121)
  %5 = add i64 %3, 1, !dbg !3122
    #dbg_value(i64 %5, !3111, !DIExpression(), !3122)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3123)
  %6 = and i64 %4, %n, !dbg !3116
  %7 = icmp eq i64 %6, 0, !dbg !3117
  br i1 %7, label %for.body, label %for.done, !dbg !3118

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %5, %for.body ], !dbg !3114
    #dbg_value(i64 %.lcssa, !3111, !DIExpression(), !3124)
  ret i64 %.lcssa, !dbg !3125
}
