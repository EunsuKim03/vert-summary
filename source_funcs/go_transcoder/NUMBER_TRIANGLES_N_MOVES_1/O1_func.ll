define i64 @f_gold(i64 %n) local_unnamed_addr #2 !dbg !3568 {
entry:
    #dbg_value(i64 %n, !3571, !DIExpression(), !3573)
    #dbg_value(i64 %n, !3571, !DIExpression(), !3574)
  %0 = sitofp i64 %n to double, !dbg !3575
  %1 = call fastcc double @math.Pow(double 3.000000e+00, double %0), !dbg !3576
  %2 = fmul double %1, 2.000000e+00, !dbg !3577
  %3 = fadd double %2, -1.000000e+00, !dbg !3578
  %abovemin = fcmp oge double %3, 0xC3E0000000000000, !dbg !3579
  %belowmax = fcmp ole double %3, 0x43DFFFFFFFFFFFFE, !dbg !3579
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3579
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3579
  %isnan = fcmp uno double %3, 0.000000e+00, !dbg !3579
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3579
  %normal = fptosi double %3 to i64, !dbg !3579
  %4 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3579
    #dbg_value(i64 %4, !3572, !DIExpression(), !3580)
    #dbg_value(i64 %4, !3572, !DIExpression(), !3581)
  ret i64 %4, !dbg !3582
}
