define i64 @f_gold(i64 %n) local_unnamed_addr #12 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(i64 0, !3111, !DIExpression(), !3115)
    #dbg_value(i64 1, !3112, !DIExpression(), !3116)
  %0 = sitofp i64 %n to double
  %1 = call double @llvm.sqrt.f64(double %0)
    #dbg_value(i64 1, !3112, !DIExpression(), !3117)
  %2 = fcmp ult double %1, 1.000000e+00, !dbg !3118
  br i1 %2, label %for.done3, label %for.loop1.preheader, !dbg !3119

for.loop1.preheader:                              ; preds = %entry, %for.done
  %3 = phi i64 [ %11, %for.done ], [ 1, %entry ]
  %4 = phi i64 [ %.lcssa, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %3, !3112, !DIExpression(), !3117)
    #dbg_value(i64 %3, !3113, !DIExpression(), !3120)
    #dbg_value(i64 %3, !3112, !DIExpression(), !3121)
  %5 = mul i64 %3, %3, !dbg !3122
  %.not2 = icmp sgt i64 %5, %n, !dbg !3123
  br i1 %.not2, label %for.done, label %for.body2, !dbg !3119

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %6 = phi i64 [ %9, %for.body2 ], [ %3, %for.loop1.preheader ]
  %7 = phi i64 [ %8, %for.body2 ], [ %4, %for.loop1.preheader ]
    #dbg_value(i64 %6, !3113, !DIExpression(), !3120)
    #dbg_value(i64 %6, !3112, !DIExpression(), !3121)
  %8 = add i64 %7, 1, !dbg !3124
    #dbg_value(i64 %8, !3111, !DIExpression(), !3124)
  %9 = add i64 %6, 1, !dbg !3125
    #dbg_value(i64 %9, !3113, !DIExpression(), !3120)
    #dbg_value(i64 %3, !3112, !DIExpression(), !3121)
  %10 = mul i64 %9, %3, !dbg !3122
    #dbg_value(i64 %n, !3110, !DIExpression(), !3126)
  %.not = icmp sgt i64 %10, %n, !dbg !3123
  br i1 %.not, label %for.done, label %for.body2, !dbg !3119

for.done:                                         ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ %4, %for.loop1.preheader ], [ %8, %for.body2 ], !dbg !3115
  %11 = add i64 %3, 1, !dbg !3127
    #dbg_value(i64 %11, !3112, !DIExpression(), !3117)
  %12 = sitofp i64 %11 to double, !dbg !3128
    #dbg_value(i64 %n, !3110, !DIExpression(), !3129)
  %13 = fcmp ult double %1, %12, !dbg !3118
  br i1 %13, label %for.done3, label %for.loop1.preheader, !dbg !3119

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa1 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3115
    #dbg_value(i64 %.lcssa1, !3111, !DIExpression(), !3130)
  ret i64 %.lcssa1, !dbg !3131
}
