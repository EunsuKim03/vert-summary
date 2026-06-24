define float @f_gold(i64 %n) local_unnamed_addr #2 !dbg !3568 {
entry:
    #dbg_value(i64 %n, !3571, !DIExpression(), !3572)
    #dbg_value(i64 %n, !3571, !DIExpression(), !3573)
  %0 = sitofp i64 %n to double, !dbg !3574
  %1 = call fastcc double @math.Pow(double 1.000000e+01, double %0), !dbg !3575
  %2 = fdiv double 1.000000e+00, %1, !dbg !3576
  %3 = fsub double 1.000000e+00, %2, !dbg !3577
  %4 = fmul double %3, 6.660000e-01, !dbg !3578
  %5 = fptrunc double %4 to float, !dbg !3579
  ret float %5, !dbg !3580
}
