define noundef i1 @f_gold(double %a, double %b) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(double %a, !3024, !DIExpression(), !3027)
    #dbg_value(double %b, !3025, !DIExpression(), !3027)
    #dbg_value(double %a, !3024, !DIExpression(), !3028)
  %0 = fcmp oeq double %a, 0.000000e+00, !dbg !3029
    #dbg_value(double %b, !3025, !DIExpression(), !3030)
  %1 = fcmp oeq double %b, 0.000000e+00
  %or.cond = select i1 %0, i1 true, i1 %1, !dbg !3031
  br i1 %or.cond, label %common.ret, label %if.done, !dbg !3031

common.ret:                                       ; preds = %if.done, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ %4, %if.done ]
  ret i1 %common.ret.op, !dbg !3031

if.done:                                          ; preds = %entry
    #dbg_value(double %a, !3024, !DIExpression(), !3032)
    #dbg_value(double %b, !3025, !DIExpression(), !3033)
  %2 = fmul double %a, %b, !dbg !3034
    #dbg_value(double %2, !3026, !DIExpression(), !3035)
    #dbg_value(double %a, !3024, !DIExpression(), !3036)
    #dbg_value(double %2, !3026, !DIExpression(), !3037)
    #dbg_value(double %b, !3025, !DIExpression(), !3038)
  %3 = fdiv double %2, %b, !dbg !3039
  %4 = fcmp une double %a, %3, !dbg !3040
  br label %common.ret, !dbg !3031
}
