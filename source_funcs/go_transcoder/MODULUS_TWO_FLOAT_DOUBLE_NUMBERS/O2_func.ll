define double @f_gold(double %a, double %b) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(double %b, !3025, !DIExpression(), !3027)
    #dbg_value(double 0.000000e+00, !3026, !DIExpression(), !3028)
    #dbg_value(double %a, !3024, !DIExpression(), !3029)
  %0 = fcmp olt double %a, 0.000000e+00, !dbg !3030
  %1 = fneg double %a, !dbg !3031
  %2 = select i1 %0, double %1, double %a, !dbg !3031
  %3 = fcmp olt double %b, 0.000000e+00, !dbg !3032
  %4 = fneg double %b, !dbg !3031
  %.ph = select i1 %3, double %4, double %b, !dbg !3031
    #dbg_value(double %2, !3026, !DIExpression(), !3033)
    #dbg_value(double %.ph, !3025, !DIExpression(), !3034)
  %5 = fcmp ult double %2, %.ph, !dbg !3035
  br i1 %5, label %for.done, label %for.body, !dbg !3031

for.body:                                         ; preds = %entry, %for.body
  %6 = phi double [ %7, %for.body ], [ %2, %entry ]
    #dbg_value(double %6, !3026, !DIExpression(), !3036)
    #dbg_value(double %.ph, !3025, !DIExpression(), !3037)
  %7 = fsub double %6, %.ph, !dbg !3038
    #dbg_value(double %7, !3026, !DIExpression(), !3033)
  %8 = fcmp ult double %7, %.ph, !dbg !3035
  br i1 %8, label %for.done, label %for.body, !dbg !3031

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi double [ %2, %entry ], [ %7, %for.body ], !dbg !3028
    #dbg_value(double %a, !3024, !DIExpression(), !3039)
  %9 = fneg double %.lcssa, !dbg !3031
  %common.ret.op = select i1 %0, double %9, double %.lcssa, !dbg !3031
  ret double %common.ret.op, !dbg !3031
}
