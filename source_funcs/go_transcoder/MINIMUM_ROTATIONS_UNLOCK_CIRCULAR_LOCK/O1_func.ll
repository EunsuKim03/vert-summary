define i64 @f_gold(i64 %input, i64 %unlock_code) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %input, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %unlock_code, !3111, !DIExpression(), !3115)
    #dbg_value(i64 0, !3112, !DIExpression(), !3116)
    #dbg_value(i64 0, !3113, !DIExpression(), !3117)
    #dbg_value(i64 0, !3114, !DIExpression(), !3118)
  %.not2 = icmp eq i64 %input, 0, !dbg !3119
  %.not13 = icmp eq i64 %unlock_code, 0
  %or.cond4 = select i1 %.not2, i1 %.not13, i1 false, !dbg !3120
  br i1 %or.cond4, label %for.done, label %for.body, !dbg !3120

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %11, %for.body ], [ 0, %entry ]
  %1 = phi i64 [ %13, %for.body ], [ %unlock_code, %entry ]
  %2 = phi i64 [ %12, %for.body ], [ %input, %entry ]
    #dbg_value(i64 %1, !3111, !DIExpression(), !3121)
    #dbg_value(i64 %2, !3110, !DIExpression(), !3122)
  %3 = srem i64 %2, 10, !dbg !3123
    #dbg_value(i64 %3, !3113, !DIExpression(), !3124)
  %4 = srem i64 %1, 10, !dbg !3125
    #dbg_value(i64 %4, !3114, !DIExpression(), !3126)
  %5 = sub nsw i64 %3, %4, !dbg !3127
  %6 = sitofp i64 %5 to double, !dbg !3128
    #dbg_value(double %6, !3129, !DIExpression(), !3135)
  %7 = call double @llvm.fabs.f64(double %6), !dbg !3137
  %belowmax = fcmp ole double %7, 0x43DFFFFFFFFFFFFE, !dbg !3138
  %normal = fptosi double %7 to i64, !dbg !3138
  %8 = fsub double 1.000000e+01, %7, !dbg !3139
  %abovemin1 = fcmp oge double %8, 0xC3E0000000000000, !dbg !3140
  %belowmax2 = fcmp ole double %8, 0x43DFFFFFFFFFFFFE, !dbg !3140
  %normal7 = fptosi double %8 to i64, !dbg !3140
  %saturated4 = select i1 %belowmax2, i64 %normal7, i64 9223372036854775807, !dbg !3140
  %9 = select i1 %abovemin1, i64 %saturated4, i64 -9223372036854775808, !dbg !3140
    #dbg_value(i64 poison, !3141, !DIExpression(), !3145)
    #dbg_value(i64 %9, !3144, !DIExpression(), !3147)
  %10 = call i64 @llvm.smin.i64(i64 %normal, i64 %9), !dbg !3148
  %x.y.i = select i1 %belowmax, i64 %10, i64 %9, !dbg !3138
  %11 = add i64 %x.y.i, %0, !dbg !3149
    #dbg_value(i64 %11, !3112, !DIExpression(), !3149)
  %12 = sdiv i64 %2, 10, !dbg !3150
    #dbg_value(i64 %12, !3110, !DIExpression(), !3150)
  %13 = sdiv i64 %1, 10, !dbg !3151
    #dbg_value(i64 %13, !3111, !DIExpression(), !3151)
  %.off = add i64 %2, 9, !dbg !3119
  %.not = icmp ult i64 %.off, 19, !dbg !3119
  %.off5 = add i64 %1, 9
  %.not1 = icmp ult i64 %.off5, 19
  %or.cond = select i1 %.not, i1 %.not1, i1 false, !dbg !3120
  br i1 %or.cond, label %for.done, label %for.body, !dbg !3120

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %11, %for.body ], !dbg !3116
    #dbg_value(i64 %.lcssa, !3112, !DIExpression(), !3152)
  ret i64 %.lcssa, !dbg !3153
}
