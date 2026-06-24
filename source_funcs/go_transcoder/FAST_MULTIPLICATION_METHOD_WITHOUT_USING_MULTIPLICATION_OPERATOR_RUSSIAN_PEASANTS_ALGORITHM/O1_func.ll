define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3113)
    #dbg_value(i64 0, !3112, !DIExpression(), !3114)
  %.not2 = icmp eq i64 %b, 0, !dbg !3115
  br i1 %.not2, label %for.done, label %for.body, !dbg !3116

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %spec.select, %for.body ], [ 0, %entry ]
  %1 = phi i64 [ %6, %for.body ], [ %b, %entry ]
  %2 = phi i64 [ %5, %for.body ], [ %a, %entry ]
    #dbg_value(i64 %1, !3111, !DIExpression(), !3117)
  %3 = and i64 %1, 1, !dbg !3118
  %.not1 = icmp eq i64 %3, 0, !dbg !3119
  %4 = select i1 %.not1, i64 0, i64 %2, !dbg !3116
  %spec.select = add i64 %4, %0, !dbg !3116
    #dbg_value(i64 %2, !3110, !DIExpression(), !3120)
  %5 = shl i64 %2, 1, !dbg !3121
    #dbg_value(i64 %5, !3110, !DIExpression(), !3122)
  %6 = lshr i64 %1, 1, !dbg !3123
    #dbg_value(i64 %6, !3111, !DIExpression(), !3124)
  %.not = icmp ult i64 %1, 2, !dbg !3115
  br i1 %.not, label %for.done, label %for.body, !dbg !3116

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !3114
    #dbg_value(i64 %.lcssa, !3112, !DIExpression(), !3125)
  ret i64 %.lcssa, !dbg !3126
}
