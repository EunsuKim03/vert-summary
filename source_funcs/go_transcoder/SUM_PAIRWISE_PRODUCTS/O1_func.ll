define double @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(double 0.000000e+00, !3111, !DIExpression(), !3115)
    #dbg_value(i64 1, !3112, !DIExpression(), !3116)
  %.not6 = icmp slt i64 %n, 1, !dbg !3117
  br i1 %.not6, label %for.done3, label %for.loop1.preheader, !dbg !3118

for.loop1.preheader:                              ; preds = %entry, %for.done
  %0 = phi i64 [ %8, %for.done ], [ 1, %entry ]
  %1 = phi double [ %6, %for.done ], [ 0.000000e+00, %entry ]
    #dbg_value(i64 %0, !3112, !DIExpression(), !3119)
    #dbg_value(i64 %0, !3113, !DIExpression(), !3120)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3121)
  br label %for.body2, !dbg !3118

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %2 = phi i64 [ %0, %for.loop1.preheader ], [ %7, %for.body2 ]
  %3 = phi double [ %1, %for.loop1.preheader ], [ %6, %for.body2 ]
    #dbg_value(double %3, !3111, !DIExpression(), !3122)
    #dbg_value(i64 %0, !3112, !DIExpression(), !3123)
    #dbg_value(i64 %2, !3113, !DIExpression(), !3124)
  %4 = mul i64 %2, %0, !dbg !3125
  %5 = sitofp i64 %4 to double, !dbg !3126
  %6 = fadd double %3, %5, !dbg !3127
    #dbg_value(double %6, !3111, !DIExpression(), !3128)
  %7 = add i64 %2, 1, !dbg !3129
    #dbg_value(i64 %7, !3113, !DIExpression(), !3120)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3121)
  %.not2 = icmp sgt i64 %7, %n, !dbg !3130
  br i1 %.not2, label %for.done, label %for.body2, !dbg !3118

for.done:                                         ; preds = %for.body2
  %8 = add i64 %0, 1, !dbg !3131
    #dbg_value(i64 %8, !3112, !DIExpression(), !3119)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3132)
  %.not = icmp sgt i64 %8, %n, !dbg !3117
  br i1 %.not, label %for.done3, label %for.loop1.preheader, !dbg !3118

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa5 = phi double [ 0.000000e+00, %entry ], [ %6, %for.done ], !dbg !3115
    #dbg_value(double %.lcssa5, !3111, !DIExpression(), !3133)
  ret double %.lcssa5, !dbg !3134
}
