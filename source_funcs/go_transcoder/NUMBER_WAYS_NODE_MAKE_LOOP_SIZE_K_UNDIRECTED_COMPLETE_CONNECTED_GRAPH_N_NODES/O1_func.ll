define i64 @f_gold(i64 %n, i64 %k) local_unnamed_addr #2 !dbg !3568 {
entry:
    #dbg_value(i64 %n, !3573, !DIExpression(), !3576)
    #dbg_value(i64 %k, !3574, !DIExpression(), !3576)
    #dbg_value(i64 1, !3575, !DIExpression(), !3577)
    #dbg_value(i64 %k, !3574, !DIExpression(), !3578)
  %0 = and i64 %k, 1, !dbg !3579
  %.not = icmp eq i64 %0, 0, !dbg !3579
    #dbg_value(i64 %n, !3573, !DIExpression(), !3580)
  %1 = add i64 %n, -1, !dbg !3581
  %2 = sitofp i64 %1 to double, !dbg !3582
    #dbg_value(i64 %k, !3574, !DIExpression(), !3583)
  %3 = sitofp i64 %k to double, !dbg !3584
  %4 = call fastcc double @math.Pow(double %2, double %3), !dbg !3585
    #dbg_value(i64 poison, !3575, !DIExpression(), !3586)
    #dbg_value(i64 %n, !3573, !DIExpression(), !3587)
  %5 = sub i64 1, %n, !dbg !3588
  %6 = select i1 %.not, i64 %1, i64 %5, !dbg !3588
  %7 = sitofp i64 %6 to double, !dbg !3589
  %8 = fadd double %7, %4, !dbg !3590
    #dbg_value(i64 %n, !3573, !DIExpression(), !3591)
  %9 = sitofp i64 %n to double, !dbg !3592
  %10 = fdiv double %8, %9, !dbg !3593
  %abovemin = fcmp oge double %10, 0xC3E0000000000000, !dbg !3594
  %belowmax = fcmp ole double %10, 0x43DFFFFFFFFFFFFE, !dbg !3594
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3594
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3594
  %isnan = fcmp uno double %10, 0.000000e+00, !dbg !3594
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3594
  %normal = fptosi double %10 to i64, !dbg !3594
  %11 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3594
  ret i64 %11, !dbg !3595
}
