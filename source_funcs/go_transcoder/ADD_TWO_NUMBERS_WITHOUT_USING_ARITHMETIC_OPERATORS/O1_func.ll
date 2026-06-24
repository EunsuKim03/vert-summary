define i64 @f_gold(i64 %x, i64 %y) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3113)
  %.not1 = icmp eq i64 %y, 0, !dbg !3114
  br i1 %.not1, label %for.done, label %for.body, !dbg !3115

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %4, %for.body ], [ %y, %entry ]
  %1 = phi i64 [ %3, %for.body ], [ %x, %entry ]
    #dbg_value(i64 %1, !3110, !DIExpression(), !3116)
    #dbg_value(i64 %0, !3111, !DIExpression(), !3117)
  %2 = and i64 %0, %1, !dbg !3118
    #dbg_value(i64 %2, !3112, !DIExpression(), !3119)
  %3 = xor i64 %0, %1, !dbg !3120
    #dbg_value(i64 %3, !3110, !DIExpression(), !3121)
  %4 = shl i64 %2, 1, !dbg !3122
    #dbg_value(i64 %4, !3111, !DIExpression(), !3123)
  %.not = icmp eq i64 %4, 0, !dbg !3114
  br i1 %.not, label %for.done, label %for.body, !dbg !3115

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ %x, %entry ], [ %3, %for.body ], !dbg !3124
    #dbg_value(i64 %.lcssa, !3110, !DIExpression(), !3125)
  ret i64 %.lcssa, !dbg !3126
}
