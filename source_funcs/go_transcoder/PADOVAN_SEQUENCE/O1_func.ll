define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
    #dbg_value(i64 1, !3111, !DIExpression(), !3117)
    #dbg_value(i64 1, !3112, !DIExpression(), !3118)
    #dbg_value(i64 1, !3113, !DIExpression(), !3119)
    #dbg_value(i64 1, !3114, !DIExpression(), !3120)
    #dbg_value(i64 3, !3115, !DIExpression(), !3121)
  %.not1 = icmp slt i64 %n, 3, !dbg !3122
  br i1 %.not1, label %for.done, label %for.body, !dbg !3123

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %5, %for.body ], [ 3, %entry ]
  %1 = phi i64 [ %4, %for.body ], [ 1, %entry ]
  %2 = phi i64 [ %1, %for.body ], [ 1, %entry ]
  %3 = phi i64 [ %2, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %0, !3115, !DIExpression(), !3124)
    #dbg_value(i64 %3, !3111, !DIExpression(), !3125)
    #dbg_value(i64 %2, !3112, !DIExpression(), !3126)
  %4 = add i64 %2, %3, !dbg !3127
    #dbg_value(i64 %2, !3111, !DIExpression(), !3128)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3129)
    #dbg_value(i64 %4, !3114, !DIExpression(), !3130)
    #dbg_value(i64 %4, !3113, !DIExpression(), !3131)
  %5 = add i64 %0, 1, !dbg !3132
    #dbg_value(i64 %5, !3115, !DIExpression(), !3124)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3133)
  %.not = icmp sgt i64 %5, %n, !dbg !3122
  br i1 %.not, label %for.done, label %for.body, !dbg !3123

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %4, %for.body ], !dbg !3120
    #dbg_value(i64 %.lcssa, !3114, !DIExpression(), !3134)
  ret i64 %.lcssa, !dbg !3135
}
