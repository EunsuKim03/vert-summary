define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(i64 0, !3111, !DIExpression(), !3115)
    #dbg_value(i64 0, !3112, !DIExpression(), !3116)
    #dbg_value(i64 0, !3113, !DIExpression(), !3117)
    #dbg_value(i64 0, !3112, !DIExpression(), !3118)
  br label %for.loop, !dbg !3119

for.loop:                                         ; preds = %for.loop, %entry
  %0 = phi i64 [ 0, %entry ], [ %3, %for.loop ], !dbg !3116
    #dbg_value(i64 %0, !3112, !DIExpression(), !3120)
    #dbg_value(i64 %0, !3112, !DIExpression(), !3121)
  %1 = mul i64 %0, %0, !dbg !3122
    #dbg_value(i64 %n, !3110, !DIExpression(), !3123)
  %2 = icmp slt i64 %1, %n, !dbg !3124
  %3 = add i64 %0, 1, !dbg !3125
    #dbg_value(i64 %3, !3112, !DIExpression(), !3125)
  br i1 %2, label %for.loop, label %for.loop1.preheader, !dbg !3119

for.loop1.preheader:                              ; preds = %for.loop
    #dbg_value(i64 %0, !3112, !DIExpression(), !3126)
  %.not7 = icmp eq i64 %0, 0, !dbg !3127
  br i1 %.not7, label %for.done, label %for.body2, !dbg !3119

for.loop1.loopexit:                               ; preds = %for.loop3, %cond.true
  %.ph = phi i64 [ %10, %cond.true ], [ 0, %for.loop3 ]
    #dbg_value(i64 %.ph, !3112, !DIExpression(), !3126)
  %.not = icmp eq i64 %.ph, 0, !dbg !3127
  br i1 %.not, label %for.done, label %for.body2, !dbg !3119

for.body2:                                        ; preds = %for.loop1.preheader, %for.loop1.loopexit
  %4 = phi i64 [ %7, %for.loop1.loopexit ], [ 0, %for.loop1.preheader ]
  %5 = phi i64 [ %.ph, %for.loop1.loopexit ], [ %0, %for.loop1.preheader ]
  %6 = phi i64 [ %8, %for.loop1.loopexit ], [ 0, %for.loop1.preheader ]
    #dbg_value(i64 %5, !3112, !DIExpression(), !3126)
    #dbg_value(i64 %5, !3112, !DIExpression(), !3128)
  %7 = add i64 %4, %5, !dbg !3129
    #dbg_value(i64 %7, !3113, !DIExpression(), !3129)
  %8 = add i64 %6, 1, !dbg !3130
    #dbg_value(i64 %8, !3111, !DIExpression(), !3130)
  %9 = mul i64 %8, %8, !dbg !3131
  br label %for.loop3, !dbg !3119

for.loop3:                                        ; preds = %cond.true, %for.body2
  %10 = phi i64 [ %5, %for.body2 ], [ %11, %cond.true ], !dbg !3116
    #dbg_value(i64 %10, !3112, !DIExpression(), !3132)
  %.not2 = icmp eq i64 %10, 0, !dbg !3133
  br i1 %.not2, label %for.loop1.loopexit, label %cond.true, !dbg !3119

cond.true:                                        ; preds = %for.loop3
    #dbg_value(i64 %8, !3111, !DIExpression(), !3134)
    #dbg_value(i64 %8, !3111, !DIExpression(), !3135)
    #dbg_value(i64 %10, !3112, !DIExpression(), !3136)
  %11 = add i64 %10, -1, !dbg !3137
    #dbg_value(i64 %10, !3112, !DIExpression(), !3138)
  %12 = mul i64 %11, %11, !dbg !3139
  %13 = add i64 %12, %9, !dbg !3140
    #dbg_value(i64 %n, !3110, !DIExpression(), !3141)
  %.not3 = icmp slt i64 %13, %n, !dbg !3142
  br i1 %.not3, label %for.loop1.loopexit, label %for.loop3, !dbg !3119

for.done:                                         ; preds = %for.loop1.loopexit, %for.loop1.preheader
  %.lcssa = phi i64 [ 0, %for.loop1.preheader ], [ %7, %for.loop1.loopexit ], !dbg !3117
    #dbg_value(i64 %.lcssa, !3113, !DIExpression(), !3143)
  ret i64 %.lcssa, !dbg !3144
}
