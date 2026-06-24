define i64 @f_gold(i64 %low, i64 %high) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %low, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %high, !3111, !DIExpression(), !3115)
    #dbg_value(i64 1, !3112, !DIExpression(), !3116)
    #dbg_value(i64 1, !3113, !DIExpression(), !3117)
  %0 = icmp sgt i64 %low, 1, !dbg !3118
  br i1 %0, label %for.body, label %for.loop1.preheader, !dbg !3119

for.loop1.preheader:                              ; preds = %for.body, %entry
  %.lcssa5 = phi i64 [ 1, %entry ], [ %3, %for.body ], !dbg !3116
  %.lcssa4 = phi i64 [ 1, %entry ], [ %4, %for.body ], !dbg !3117
    #dbg_value(i64 %.lcssa5, !3112, !DIExpression(), !3120)
    #dbg_value(i64 %high, !3111, !DIExpression(), !3121)
  %.not7 = icmp sgt i64 %.lcssa5, %high, !dbg !3122
  br i1 %.not7, label %for.done3, label %for.body2, !dbg !3119

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %4, %for.body ], [ 1, %entry ]
  %2 = phi i64 [ %3, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %2, !3112, !DIExpression(), !3123)
    #dbg_value(i64 %1, !3113, !DIExpression(), !3124)
  %3 = mul i64 %1, %2, !dbg !3125
    #dbg_value(i64 %3, !3112, !DIExpression(), !3126)
  %4 = add i64 %1, 1, !dbg !3127
    #dbg_value(i64 %4, !3113, !DIExpression(), !3127)
    #dbg_value(i64 %low, !3110, !DIExpression(), !3128)
  %5 = icmp slt i64 %3, %low, !dbg !3118
  br i1 %5, label %for.body, label %for.loop1.preheader, !dbg !3119

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %6 = phi i64 [ %9, %for.body2 ], [ 0, %for.loop1.preheader ]
  %7 = phi i64 [ %11, %for.body2 ], [ %.lcssa4, %for.loop1.preheader ]
  %8 = phi i64 [ %10, %for.body2 ], [ %.lcssa5, %for.loop1.preheader ]
    #dbg_value(i64 %8, !3112, !DIExpression(), !3120)
  %9 = add i64 %6, 1, !dbg !3129
    #dbg_value(i64 %9, !3114, !DIExpression(), !3129)
    #dbg_value(i64 %7, !3113, !DIExpression(), !3130)
  %10 = mul i64 %7, %8, !dbg !3131
    #dbg_value(i64 %10, !3112, !DIExpression(), !3132)
  %11 = add i64 %7, 1, !dbg !3133
    #dbg_value(i64 %11, !3113, !DIExpression(), !3133)
    #dbg_value(i64 %high, !3111, !DIExpression(), !3121)
  %.not = icmp sgt i64 %10, %high, !dbg !3122
  br i1 %.not, label %for.done3, label %for.body2, !dbg !3119

for.done3:                                        ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ 0, %for.loop1.preheader ], [ %9, %for.body2 ], !dbg !3134
    #dbg_value(i64 %.lcssa, !3114, !DIExpression(), !3135)
  ret i64 %.lcssa, !dbg !3136
}
