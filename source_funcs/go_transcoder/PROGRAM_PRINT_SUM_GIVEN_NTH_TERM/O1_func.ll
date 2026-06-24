define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 0, !3111, !DIExpression(), !3114)
    #dbg_value(i64 1, !3112, !DIExpression(), !3115)
  %.not1 = icmp slt i64 %n, 1, !dbg !3116
  br i1 %.not1, label %for.done, label %for.body, !dbg !3117

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %3, %for.body ], [ 1, %entry ]
  %1 = phi i64 [ %2, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %0, !3112, !DIExpression(), !3118)
  %reass.add = shl i64 %0, 1, !dbg !3119
  %add = add i64 %1, -1, !dbg !3119
  %2 = add i64 %add, %reass.add, !dbg !3120
    #dbg_value(i64 %2, !3111, !DIExpression(), !3120)
  %3 = add i64 %0, 1, !dbg !3121
    #dbg_value(i64 %3, !3112, !DIExpression(), !3122)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3123)
  %.not = icmp sgt i64 %3, %n, !dbg !3116
  br i1 %.not, label %for.done, label %for.body, !dbg !3117

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %2, %for.body ], !dbg !3114
    #dbg_value(i64 %.lcssa, !3111, !DIExpression(), !3124)
  ret i64 %.lcssa, !dbg !3125
}
