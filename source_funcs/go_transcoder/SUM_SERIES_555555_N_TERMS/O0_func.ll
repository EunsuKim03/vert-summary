define i64 @f_gold(i64 %n) #1 !dbg !5432 {
entry:
    #dbg_value(i64 %n, !5435, !DIExpression(), !5436)
    #dbg_value(i64 %n, !5435, !DIExpression(), !5437)
  %0 = sitofp i64 %n to double, !dbg !5438
  %1 = call double @math.Pow(double 1.000000e+01, double %0, ptr undef), !dbg !5439
  %2 = fsub double %1, 1.000000e+00, !dbg !5440
  %3 = fmul double %2, 6.172000e-01, !dbg !5441
    #dbg_value(i64 %n, !5435, !DIExpression(), !5442)
  %4 = sitofp i64 %n to double, !dbg !5443
  %5 = fmul double %4, 5.500000e-01, !dbg !5444
  %6 = fsub double %3, %5, !dbg !5445
  %abovemin = fcmp ole double 0xC3E0000000000000, %6, !dbg !5446
  %belowmax = fcmp ole double %6, 0x43DFFFFFFFFFFFFE, !dbg !5446
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5446
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5446
  %isnan = fcmp uno double %6, %6, !dbg !5446
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5446
  %normal = fptosi double %6 to i64, !dbg !5446
  %7 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5446
  ret i64 %7, !dbg !5447
}
