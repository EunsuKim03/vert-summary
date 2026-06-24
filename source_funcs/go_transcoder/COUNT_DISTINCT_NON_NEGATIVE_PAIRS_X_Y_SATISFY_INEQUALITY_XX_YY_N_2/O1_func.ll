define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(i64 0, !3111, !DIExpression(), !3115)
    #dbg_value(i64 0, !3112, !DIExpression(), !3116)
  %0 = icmp sgt i64 %n, 0, !dbg !3117
  br i1 %0, label %for.loop1.preheader, label %for.done3, !dbg !3118

for.loop1.preheader:                              ; preds = %entry, %for.done
  %1 = phi i64 [ %12, %for.done ], [ 0, %entry ]
  %2 = phi i64 [ %11, %for.done ], [ 0, %entry ]
  %3 = phi i64 [ %6, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %2, !3112, !DIExpression(), !3119)
    #dbg_value(i64 %2, !3112, !DIExpression(), !3120)
    #dbg_value(i64 %2, !3112, !DIExpression(), !3121)
    #dbg_value(i64 0, !3113, !DIExpression(), !3122)
    #dbg_value(i64 0, !3113, !DIExpression(), !3123)
  br label %for.body2, !dbg !3118

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %4 = phi i64 [ 0, %for.loop1.preheader ], [ %7, %for.body2 ]
  %5 = phi i64 [ %3, %for.loop1.preheader ], [ %6, %for.body2 ]
    #dbg_value(i64 %4, !3113, !DIExpression(), !3122)
  %6 = add i64 %5, 1, !dbg !3124
    #dbg_value(i64 %6, !3111, !DIExpression(), !3124)
  %7 = add i64 %4, 1, !dbg !3125
    #dbg_value(i64 %2, !3112, !DIExpression(), !3121)
    #dbg_value(i64 %7, !3113, !DIExpression(), !3123)
  %8 = mul i64 %7, %7, !dbg !3126
  %9 = add i64 %8, %1, !dbg !3127
    #dbg_value(i64 %n, !3110, !DIExpression(), !3128)
  %10 = icmp slt i64 %9, %n, !dbg !3129
  br i1 %10, label %for.body2, label %for.done, !dbg !3118

for.done:                                         ; preds = %for.body2
  %11 = add i64 %2, 1, !dbg !3130
    #dbg_value(i64 %11, !3112, !DIExpression(), !3131)
  %12 = mul i64 %11, %11, !dbg !3132
    #dbg_value(i64 %n, !3110, !DIExpression(), !3133)
  %13 = icmp slt i64 %12, %n, !dbg !3117
  br i1 %13, label %for.loop1.preheader, label %for.done3, !dbg !3118

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa1 = phi i64 [ 0, %entry ], [ %6, %for.done ], !dbg !3115
    #dbg_value(i64 %.lcssa1, !3111, !DIExpression(), !3134)
  ret i64 %.lcssa1, !dbg !3135
}
