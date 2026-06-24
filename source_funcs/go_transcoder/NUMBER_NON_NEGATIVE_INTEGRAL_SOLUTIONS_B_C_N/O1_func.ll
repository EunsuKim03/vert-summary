define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
    #dbg_value(i64 0, !3111, !DIExpression(), !3116)
    #dbg_value(i64 0, !3112, !DIExpression(), !3117)
  %.not12 = icmp slt i64 %n, 0, !dbg !3118
  br i1 %.not12, label %for.done6, label %for.loop1.preheader, !dbg !3119

for.loop1.preheader:                              ; preds = %entry, %for.done5
  %0 = phi i64 [ %14, %for.done5 ], [ 0, %entry ]
  %1 = phi i64 [ %.lcssa7, %for.done5 ], [ 0, %entry ]
    #dbg_value(i64 %0, !3112, !DIExpression(), !3120)
  %2 = sub i64 %n, %0
    #dbg_value(i64 0, !3113, !DIExpression(), !3121)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3122)
    #dbg_value(i64 %0, !3112, !DIExpression(), !3123)
  %.not310 = icmp slt i64 %2, 0, !dbg !3124
  br i1 %.not310, label %for.done5, label %for.loop3.preheader, !dbg !3119

for.loop3.preheader:                              ; preds = %for.loop1.preheader, %for.done
  %3 = phi i64 [ %13, %for.done ], [ 0, %for.loop1.preheader ]
  %4 = phi i64 [ %.lcssa, %for.done ], [ %1, %for.loop1.preheader ]
    #dbg_value(i64 %3, !3113, !DIExpression(), !3121)
  %5 = add i64 %3, %0
  %6 = sub i64 %n, %5
    #dbg_value(i64 0, !3114, !DIExpression(), !3125)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3126)
    #dbg_value(i64 %0, !3112, !DIExpression(), !3127)
    #dbg_value(i64 %3, !3113, !DIExpression(), !3128)
  %.not49 = icmp slt i64 %6, 0, !dbg !3129
  br i1 %.not49, label %for.done, label %for.body4, !dbg !3119

for.body4:                                        ; preds = %for.loop3.preheader, %for.body4
  %7 = phi i64 [ %12, %for.body4 ], [ 0, %for.loop3.preheader ]
  %8 = phi i64 [ %spec.select, %for.body4 ], [ %4, %for.loop3.preheader ]
    #dbg_value(i64 %0, !3112, !DIExpression(), !3130)
    #dbg_value(i64 %3, !3113, !DIExpression(), !3131)
    #dbg_value(i64 %7, !3114, !DIExpression(), !3132)
  %9 = add i64 %7, %5, !dbg !3133
    #dbg_value(i64 %n, !3110, !DIExpression(), !3134)
  %10 = icmp eq i64 %9, %n, !dbg !3135
  %11 = zext i1 %10 to i64, !dbg !3119
  %spec.select = add i64 %8, %11, !dbg !3119
  %12 = add i64 %7, 1, !dbg !3136
    #dbg_value(i64 %12, !3114, !DIExpression(), !3125)
  %.not4 = icmp sgt i64 %12, %6, !dbg !3129
  br i1 %.not4, label %for.done, label %for.body4, !dbg !3119

for.done:                                         ; preds = %for.body4, %for.loop3.preheader
  %.lcssa = phi i64 [ %4, %for.loop3.preheader ], [ %spec.select, %for.body4 ], !dbg !3116
  %13 = add i64 %3, 1, !dbg !3137
    #dbg_value(i64 %13, !3113, !DIExpression(), !3121)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3122)
    #dbg_value(i64 %0, !3112, !DIExpression(), !3123)
  %.not3 = icmp sgt i64 %13, %2, !dbg !3124
  br i1 %.not3, label %for.done5, label %for.loop3.preheader, !dbg !3119

for.done5:                                        ; preds = %for.done, %for.loop1.preheader
  %.lcssa7 = phi i64 [ %1, %for.loop1.preheader ], [ %.lcssa, %for.done ], !dbg !3116
  %14 = add i64 %0, 1, !dbg !3138
    #dbg_value(i64 %14, !3112, !DIExpression(), !3120)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3139)
  %.not = icmp sgt i64 %14, %n, !dbg !3118
  br i1 %.not, label %for.done6, label %for.loop1.preheader, !dbg !3119

for.done6:                                        ; preds = %for.done5, %entry
  %.lcssa8 = phi i64 [ 0, %entry ], [ %.lcssa7, %for.done5 ], !dbg !3116
    #dbg_value(i64 %.lcssa8, !3111, !DIExpression(), !3140)
  ret i64 %.lcssa8, !dbg !3141
}
