define noundef i1 @f_gold(double %a, double %b) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(double %a, !3108, !DIExpression(), !3111)
    #dbg_value(double %b, !3109, !DIExpression(), !3111)
    #dbg_value(double %a, !3108, !DIExpression(), !3112)
  %0 = fcmp oeq double %a, 0.000000e+00, !dbg !3113
    #dbg_value(double %b, !3109, !DIExpression(), !3114)
  %1 = fcmp oeq double %b, 0.000000e+00
  %or.cond = select i1 %0, i1 true, i1 %1, !dbg !3115
  br i1 %or.cond, label %common.ret, label %if.done, !dbg !3115

common.ret:                                       ; preds = %if.done, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ %4, %if.done ]
  ret i1 %common.ret.op, !dbg !3115

if.done:                                          ; preds = %entry
    #dbg_value(double %a, !3108, !DIExpression(), !3116)
    #dbg_value(double %b, !3109, !DIExpression(), !3117)
  %2 = fmul double %a, %b, !dbg !3118
    #dbg_value(double %2, !3110, !DIExpression(), !3119)
    #dbg_value(double %a, !3108, !DIExpression(), !3120)
    #dbg_value(double %2, !3110, !DIExpression(), !3121)
    #dbg_value(double %b, !3109, !DIExpression(), !3122)
  %3 = fdiv double %2, %b, !dbg !3123
  %4 = fcmp une double %a, %3, !dbg !3124
  br label %common.ret, !dbg !3115
}
