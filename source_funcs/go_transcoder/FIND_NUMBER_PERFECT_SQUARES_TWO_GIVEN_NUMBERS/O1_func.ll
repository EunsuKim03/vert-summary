define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3115)
    #dbg_value(i64 0, !3112, !DIExpression(), !3116)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3117)
    #dbg_value(i64 %a, !3113, !DIExpression(), !3118)
  %.not5 = icmp sgt i64 %a, %b, !dbg !3119
  br i1 %.not5, label %for.done3, label %for.loop1.preheader, !dbg !3120

for.loop1.preheader:                              ; preds = %entry, %for.done
  %0 = phi i64 [ %9, %for.done ], [ %a, %entry ]
  %1 = phi i64 [ %.lcssa, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %0, !3113, !DIExpression(), !3121)
    #dbg_value(i64 1, !3114, !DIExpression(), !3122)
    #dbg_value(i64 1, !3114, !DIExpression(), !3123)
  %.not14 = icmp slt i64 %0, 1, !dbg !3124
  br i1 %.not14, label %for.done, label %for.body2, !dbg !3120

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %2 = phi i64 [ %8, %for.body2 ], [ 1, %for.loop1.preheader ]
  %3 = phi i64 [ %7, %for.body2 ], [ 1, %for.loop1.preheader ]
  %4 = phi i64 [ %spec.select, %for.body2 ], [ %1, %for.loop1.preheader ]
    #dbg_value(i64 %3, !3114, !DIExpression(), !3125)
    #dbg_value(i64 %0, !3113, !DIExpression(), !3126)
  %5 = icmp eq i64 %2, %0, !dbg !3127
  %6 = zext i1 %5 to i64, !dbg !3120
  %spec.select = add i64 %4, %6, !dbg !3120
  %7 = add i64 %3, 1, !dbg !3128
    #dbg_value(i64 %7, !3114, !DIExpression(), !3123)
  %8 = mul i64 %7, %7, !dbg !3129
  %.not1 = icmp sgt i64 %8, %0, !dbg !3124
  br i1 %.not1, label %for.done, label %for.body2, !dbg !3120

for.done:                                         ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ %1, %for.loop1.preheader ], [ %spec.select, %for.body2 ], !dbg !3116
  %9 = add i64 %0, 1, !dbg !3130
    #dbg_value(i64 %9, !3113, !DIExpression(), !3121)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3131)
  %.not = icmp sgt i64 %9, %b, !dbg !3119
  br i1 %.not, label %for.done3, label %for.loop1.preheader, !dbg !3120

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa3 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3116
    #dbg_value(i64 %.lcssa3, !3112, !DIExpression(), !3132)
  ret i64 %.lcssa3, !dbg !3133
}
