define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 1, !3111, !DIExpression(), !3114)
    #dbg_value(i64 0, !3112, !DIExpression(), !3115)
    #dbg_value(i64 2, !3112, !DIExpression(), !3116)
  %.not1 = icmp slt i64 %n, 2, !dbg !3117
  br i1 %.not1, label %for.done, label %for.body, !dbg !3118

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %3, %for.body ], [ 2, %entry ]
  %1 = phi i64 [ %2, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %0, !3112, !DIExpression(), !3119)
  %2 = mul i64 %0, %1, !dbg !3120
    #dbg_value(i64 %2, !3111, !DIExpression(), !3120)
  %3 = add i64 %0, 1, !dbg !3121
    #dbg_value(i64 %3, !3112, !DIExpression(), !3122)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3123)
  %.not = icmp sgt i64 %3, %n, !dbg !3117
  br i1 %.not, label %for.done, label %for.body, !dbg !3118

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %2, %for.body ], !dbg !3114
    #dbg_value(i64 %.lcssa, !3111, !DIExpression(), !3124)
  ret i64 %.lcssa, !dbg !3125
}
