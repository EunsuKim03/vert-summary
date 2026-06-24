define i64 @f_gold(i64 %low, i64 %high) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %low, !3110, !DIExpression(), !3116)
    #dbg_value(i64 %high, !3111, !DIExpression(), !3116)
    #dbg_value(i64 0, !3112, !DIExpression(), !3117)
    #dbg_value(i64 1, !3113, !DIExpression(), !3118)
    #dbg_value(i64 1, !3114, !DIExpression(), !3119)
    #dbg_value(i64 0, !3115, !DIExpression(), !3120)
  %.not2 = icmp slt i64 %high, 0, !dbg !3121
  br i1 %.not2, label %for.done, label %for.body, !dbg !3122

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %spec.select, %for.body ], [ 0, %entry ]
  %1 = phi i64 [ %5, %for.body ], [ 1, %entry ]
  %2 = phi i64 [ %1, %for.body ], [ 1, %entry ]
  %3 = phi i64 [ %2, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %3, !3112, !DIExpression(), !3123)
    #dbg_value(i64 %low, !3110, !DIExpression(), !3124)
  %.not1 = icmp sge i64 %3, %low, !dbg !3125
  %4 = zext i1 %.not1 to i64, !dbg !3122
  %spec.select = add i64 %0, %4, !dbg !3122
    #dbg_value(i64 %1, !3114, !DIExpression(), !3126)
    #dbg_value(i64 %2, !3112, !DIExpression(), !3127)
    #dbg_value(i64 %1, !3113, !DIExpression(), !3128)
  %5 = add i64 %1, %2, !dbg !3129
    #dbg_value(i64 %5, !3114, !DIExpression(), !3130)
    #dbg_value(i64 %high, !3111, !DIExpression(), !3131)
  %.not = icmp sgt i64 %2, %high, !dbg !3121
  br i1 %.not, label %for.done, label %for.body, !dbg !3122

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !3120
    #dbg_value(i64 %.lcssa, !3115, !DIExpression(), !3132)
  ret i64 %.lcssa, !dbg !3133
}
