define i64 @f_gold(i64 %n) local_unnamed_addr #2 !dbg !3568 {
entry:
    #dbg_value(i64 %n, !3571, !DIExpression(), !3572)
    #dbg_value(i64 %n, !3571, !DIExpression(), !3573)
  %0 = sitofp i64 %n to double, !dbg !3574
  %1 = call fastcc double @math.Pow(double %0, double 2.000000e+00), !dbg !3575
  %abovemin = fcmp oge double %1, 0xC3E0000000000000, !dbg !3576
  %belowmax = fcmp ole double %1, 0x43DFFFFFFFFFFFFE, !dbg !3576
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3576
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3576
  %isnan = fcmp uno double %1, 0.000000e+00, !dbg !3576
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3576
  %normal = fptosi double %1 to i64, !dbg !3576
  %2 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3576
  ret i64 %2, !dbg !3577
}
