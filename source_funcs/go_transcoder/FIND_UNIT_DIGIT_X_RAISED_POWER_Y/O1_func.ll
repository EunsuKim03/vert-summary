define range(i64 -9, 10) i64 @f_gold(i64 %x, i64 %y) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3114)
    #dbg_value(i64 1, !3112, !DIExpression(), !3115)
    #dbg_value(i64 0, !3113, !DIExpression(), !3116)
  %0 = icmp sgt i64 %y, 0, !dbg !3117
  br i1 %0, label %for.body, label %for.done, !dbg !3118

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %5, %for.body ], [ 0, %entry ]
  %2 = phi i64 [ %4, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %1, !3113, !DIExpression(), !3119)
    #dbg_value(i64 %2, !3112, !DIExpression(), !3120)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3121)
  %3 = mul i64 %2, %x, !dbg !3122
  %4 = srem i64 %3, 10, !dbg !3123
    #dbg_value(i64 %4, !3112, !DIExpression(), !3124)
  %5 = add nuw nsw i64 %1, 1, !dbg !3125
    #dbg_value(i64 %5, !3113, !DIExpression(), !3119)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3126)
  %exitcond.not = icmp eq i64 %5, %y, !dbg !3117
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3118

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %4, %for.body ], !dbg !3115
    #dbg_value(i64 %.lcssa, !3112, !DIExpression(), !3127)
  ret i64 %.lcssa, !dbg !3128
}
