define double @f_gold(double %a, double %b) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(double %a, !3108, !DIExpression(), !3111)
    #dbg_value(double %b, !3109, !DIExpression(), !3111)
    #dbg_value(double 0.000000e+00, !3110, !DIExpression(), !3112)
    #dbg_value(double %a, !3108, !DIExpression(), !3113)
  %0 = fcmp olt double %a, 0.000000e+00, !dbg !3114
  %1 = fneg double %a, !dbg !3115
  %2 = select i1 %0, double %1, double %a, !dbg !3115
    #dbg_value(double %b, !3109, !DIExpression(), !3116)
  %3 = fcmp olt double %b, 0.000000e+00, !dbg !3117
  %4 = fneg double %b, !dbg !3115
  %.ph = select i1 %3, double %4, double %b, !dbg !3115
    #dbg_value(double %2, !3110, !DIExpression(), !3118)
    #dbg_value(double %.ph, !3109, !DIExpression(), !3119)
  %5 = fcmp ult double %2, %.ph, !dbg !3120
  br i1 %5, label %for.done, label %for.body, !dbg !3115

for.body:                                         ; preds = %entry, %for.body
  %6 = phi double [ %7, %for.body ], [ %2, %entry ]
    #dbg_value(double %6, !3110, !DIExpression(), !3121)
    #dbg_value(double %.ph, !3109, !DIExpression(), !3122)
  %7 = fsub double %6, %.ph, !dbg !3123
    #dbg_value(double %7, !3110, !DIExpression(), !3118)
  %8 = fcmp ult double %7, %.ph, !dbg !3120
  br i1 %8, label %for.done, label %for.body, !dbg !3115

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi double [ %2, %entry ], [ %7, %for.body ], !dbg !3112
    #dbg_value(double %a, !3108, !DIExpression(), !3124)
  %9 = fneg double %.lcssa, !dbg !3115
  %common.ret.op = select i1 %0, double %9, double %.lcssa, !dbg !3115
  ret double %common.ret.op, !dbg !3115
}
