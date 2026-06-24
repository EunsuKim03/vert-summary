define double @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
  %0 = add i64 %n, 1, !dbg !3117
  %1 = mul i64 %0, %n, !dbg !3118
  %2 = sdiv i64 %1, 2, !dbg !3119
  %3 = sitofp i64 %2 to double, !dbg !3120
    #dbg_value(double %3, !3111, !DIExpression(), !3121)
    #dbg_value(double %3, !3111, !DIExpression(), !3122)
    #dbg_value(double %3, !3112, !DIExpression(), !3123)
    #dbg_value(i64 2, !3113, !DIExpression(), !3124)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3125)
  %.not1 = icmp slt i64 %n, 2, !dbg !3126
  br i1 %.not1, label %for.done, label %for.body, !dbg !3127

for.body:                                         ; preds = %entry, %for.body
  %4 = phi i64 [ %13, %for.body ], [ 2, %entry ]
  %5 = phi double [ %12, %for.body ], [ %3, %entry ]
  %6 = phi double [ %9, %for.body ], [ %3, %entry ]
    #dbg_value(double %6, !3111, !DIExpression(), !3128)
    #dbg_value(i64 %4, !3113, !DIExpression(), !3129)
  %7 = add i64 %4, -1, !dbg !3130
  %8 = sitofp i64 %7 to double, !dbg !3131
  %9 = fsub double %6, %8, !dbg !3132
    #dbg_value(double %5, !3112, !DIExpression(), !3133)
    #dbg_value(double %9, !3111, !DIExpression(), !3134)
  %10 = sitofp i64 %4 to double, !dbg !3135
  %11 = fmul double %9, %10, !dbg !3136
  %12 = fadd double %5, %11, !dbg !3137
    #dbg_value(double %12, !3112, !DIExpression(), !3138)
  %13 = add i64 %4, 1, !dbg !3139
    #dbg_value(i64 %13, !3113, !DIExpression(), !3140)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3125)
  %.not = icmp sgt i64 %13, %n, !dbg !3126
  br i1 %.not, label %for.done, label %for.body, !dbg !3127

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi double [ %3, %entry ], [ %12, %for.body ], !dbg !3123
    #dbg_value(double %.lcssa, !3112, !DIExpression(), !3141)
  ret double %.lcssa, !dbg !3142
}
