define i64 @f_gold(i64 %n) local_unnamed_addr #2 !dbg !3568 {
entry:
    #dbg_value(i64 %n, !3571, !DIExpression(), !3572)
    #dbg_value(i64 %n, !3571, !DIExpression(), !3573)
  %0 = sitofp i64 %n to double, !dbg !3574
  %1 = call fastcc double @math.Pow(double 1.000000e+01, double %0), !dbg !3575
  %2 = fadd double %1, -1.000000e+00, !dbg !3576
  %3 = fmul double %2, 6.172000e-01, !dbg !3577
    #dbg_value(i64 %n, !3571, !DIExpression(), !3578)
  %4 = fmul double %0, 5.500000e-01, !dbg !3579
  %5 = fsub double %3, %4, !dbg !3580
  %abovemin = fcmp oge double %5, 0xC3E0000000000000, !dbg !3581
  %belowmax = fcmp ole double %5, 0x43DFFFFFFFFFFFFE, !dbg !3581
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3581
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3581
  %isnan = fcmp uno double %5, 0.000000e+00, !dbg !3581
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3581
  %normal = fptosi double %5 to i64, !dbg !3581
  %6 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3581
  ret i64 %6, !dbg !3582
}
