define double @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(i64 10, !3111, !DIExpression(), !3115)
    #dbg_value(double 1.000000e+00, !3112, !DIExpression(), !3116)
    #dbg_value(i64 1, !3113, !DIExpression(), !3117)
  %.not1 = icmp slt i64 %n, 1, !dbg !3118
  br i1 %.not1, label %for.done, label %for.body, !dbg !3119

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %7, %for.body ], [ 1, %entry ]
  %1 = phi double [ %6, %for.body ], [ 1.000000e+00, %entry ]
    #dbg_value(i64 10, !3111, !DIExpression(), !3120)
    #dbg_value(i64 %0, !3113, !DIExpression(), !3121)
  %2 = add i64 %0, 9, !dbg !3122
  %3 = sitofp i64 %2 to double, !dbg !3123
  %4 = fmul double %1, %3, !dbg !3124
    #dbg_value(double %4, !3112, !DIExpression(), !3124)
  %5 = sitofp i64 %0 to double, !dbg !3125
  %6 = fdiv double %4, %5, !dbg !3126
    #dbg_value(double %6, !3112, !DIExpression(), !3126)
  %7 = add i64 %0, 1, !dbg !3127
    #dbg_value(i64 %7, !3113, !DIExpression(), !3128)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3129)
  %.not = icmp sgt i64 %7, %n, !dbg !3118
  br i1 %.not, label %for.done, label %for.body, !dbg !3119

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi double [ 1.000000e+00, %entry ], [ %6, %for.body ], !dbg !3116
    #dbg_value(double %.lcssa, !3112, !DIExpression(), !3130)
  ret double %.lcssa, !dbg !3131
}
