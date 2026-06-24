define i64 @f_gold(i64 %x) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3112)
    #dbg_value(i64 1, !3111, !DIExpression(), !3113)
  %0 = and i64 %x, 1, !dbg !3114
  %.not2 = icmp eq i64 %0, 0, !dbg !3115
  br i1 %.not2, label %for.done, label %for.body, !dbg !3116

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %4, %for.body ], [ 1, %entry ]
  %2 = phi i64 [ %3, %for.body ], [ %x, %entry ]
    #dbg_value(i64 %2, !3110, !DIExpression(), !3117)
    #dbg_value(i64 %1, !3111, !DIExpression(), !3118)
  %3 = xor i64 %1, %2, !dbg !3119
    #dbg_value(i64 %3, !3110, !DIExpression(), !3120)
  %4 = shl i64 %1, 1, !dbg !3121
    #dbg_value(i64 %4, !3111, !DIExpression(), !3122)
  %5 = and i64 %4, %3, !dbg !3114
  %.not = icmp eq i64 %5, 0, !dbg !3115
  br i1 %.not, label %for.done, label %for.body, !dbg !3116

for.done:                                         ; preds = %for.body, %entry
  %.lcssa1 = phi i64 [ %x, %entry ], [ %3, %for.body ], !dbg !3123
  %.lcssa = phi i64 [ 1, %entry ], [ %4, %for.body ], !dbg !3113
    #dbg_value(i64 %.lcssa1, !3110, !DIExpression(), !3124)
    #dbg_value(i64 %.lcssa, !3111, !DIExpression(), !3125)
  %6 = xor i64 %.lcssa, %.lcssa1, !dbg !3126
    #dbg_value(i64 %6, !3110, !DIExpression(), !3127)
    #dbg_value(i64 %6, !3110, !DIExpression(), !3128)
  ret i64 %6, !dbg !3129
}
