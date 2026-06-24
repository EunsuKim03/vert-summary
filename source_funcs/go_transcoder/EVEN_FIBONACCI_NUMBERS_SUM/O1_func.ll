define i64 @f_gold(i64 %limit) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %limit, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %limit, !3110, !DIExpression(), !3116)
  %0 = icmp slt i64 %limit, 2, !dbg !3117
  br i1 %0, label %common.ret, label %for.loop.preheader, !dbg !3118

for.loop.preheader:                               ; preds = %entry
  %1 = uitofp nneg i64 %limit to double
    #dbg_value(double 2.000000e+00, !3112, !DIExpression(), !3119)
    #dbg_value(i64 %limit, !3110, !DIExpression(), !3120)
  br label %for.body, !dbg !3118

common.ret:                                       ; preds = %entry, %for.done
  %common.ret.op = phi i64 [ %10, %for.done ], [ 0, %entry ]
  ret i64 %common.ret.op, !dbg !3118

for.body:                                         ; preds = %for.loop.preheader, %if.done1
  %2 = phi double [ %8, %if.done1 ], [ 2.000000e+00, %for.loop.preheader ]
  %3 = phi double [ %6, %if.done1 ], [ 2.000000e+00, %for.loop.preheader ]
  %4 = phi double [ %3, %if.done1 ], [ 0.000000e+00, %for.loop.preheader ]
    #dbg_value(double %3, !3112, !DIExpression(), !3119)
    #dbg_value(double %3, !3112, !DIExpression(), !3121)
  %5 = fmul double %3, 4.000000e+00, !dbg !3122
    #dbg_value(double %4, !3111, !DIExpression(), !3123)
  %6 = fadd double %4, %5, !dbg !3124
    #dbg_value(double %6, !3114, !DIExpression(), !3125)
    #dbg_value(double %6, !3114, !DIExpression(), !3126)
    #dbg_value(i64 %limit, !3110, !DIExpression(), !3127)
  %7 = fcmp ogt double %6, %1, !dbg !3128
  br i1 %7, label %for.done, label %if.done1, !dbg !3118

if.done1:                                         ; preds = %for.body
    #dbg_value(double %3, !3111, !DIExpression(), !3129)
    #dbg_value(double %6, !3114, !DIExpression(), !3130)
    #dbg_value(double %6, !3112, !DIExpression(), !3131)
  %8 = fadd double %2, %6, !dbg !3132
    #dbg_value(double %8, !3113, !DIExpression(), !3132)
    #dbg_value(i64 %limit, !3110, !DIExpression(), !3120)
  %9 = fcmp ugt double %6, %1, !dbg !3133
  br i1 %9, label %for.done, label %for.body, !dbg !3118

for.done:                                         ; preds = %if.done1, %for.body
  %.lcssa.ph = phi double [ %8, %if.done1 ], [ %2, %for.body ]
    #dbg_value(double %.lcssa.ph, !3113, !DIExpression(), !3134)
  %abovemin = fcmp oge double %.lcssa.ph, 0xC3E0000000000000, !dbg !3135
  %belowmax = fcmp ole double %.lcssa.ph, 0x43DFFFFFFFFFFFFE, !dbg !3135
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3135
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3135
  %isnan = fcmp uno double %.lcssa.ph, 0.000000e+00, !dbg !3135
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3135
  %normal = fptosi double %.lcssa.ph to i64, !dbg !3135
  %10 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3135
  br label %common.ret, !dbg !3136
}
