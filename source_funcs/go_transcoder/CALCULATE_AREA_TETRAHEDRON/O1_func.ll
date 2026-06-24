define double @f_gold(i64 %side) local_unnamed_addr #2 !dbg !3568 {
entry:
    #dbg_value(i64 %side, !3571, !DIExpression(), !3573)
    #dbg_value(i64 %side, !3571, !DIExpression(), !3574)
  %0 = sitofp i64 %side to double, !dbg !3575
  %1 = call fastcc double @math.Pow(double %0, double 3.000000e+00), !dbg !3576
  %2 = fdiv double %1, 0x4020F876CCDF6CDA, !dbg !3577
    #dbg_value(double %2, !3572, !DIExpression(), !3578)
    #dbg_value(double %2, !3572, !DIExpression(), !3579)
  ret double %2, !dbg !3580
}
