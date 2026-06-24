define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3117)
    #dbg_value(i64 %n, !3111, !DIExpression(), !3118)
    #dbg_value(i64 0, !3112, !DIExpression(), !3119)
    #dbg_value(i64 1, !3113, !DIExpression(), !3120)
    #dbg_value(i64 %n, !3111, !DIExpression(), !3121)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3122)
  %.not1 = icmp eq i64 %n, 0, !dbg !3123
  br i1 %.not1, label %for.done, label %for.body, !dbg !3124

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %4, %for.body ], [ %n, %entry ]
  %1 = phi i64 [ %7, %for.body ], [ 1, %entry ]
  %2 = phi i64 [ %6, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %0, !3114, !DIExpression(), !3125)
  %3 = srem i64 %0, 10, !dbg !3126
    #dbg_value(i64 %3, !3115, !DIExpression(), !3127)
  %4 = sdiv i64 %0, 10, !dbg !3128
    #dbg_value(i64 %4, !3114, !DIExpression(), !3129)
    #dbg_value(i64 %1, !3113, !DIExpression(), !3130)
  %5 = mul i64 %3, %1, !dbg !3131
  %6 = add i64 %5, %2, !dbg !3132
    #dbg_value(i64 %6, !3112, !DIExpression(), !3132)
  %7 = shl i64 %1, 1, !dbg !3133
    #dbg_value(i64 %7, !3113, !DIExpression(), !3134)
  %.off = add i64 %0, 9, !dbg !3123
  %.not = icmp ult i64 %.off, 19, !dbg !3123
  br i1 %.not, label %for.done, label %for.body, !dbg !3124

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %6, %for.body ], !dbg !3119
    #dbg_value(i64 %.lcssa, !3112, !DIExpression(), !3135)
  ret i64 %.lcssa, !dbg !3136
}
