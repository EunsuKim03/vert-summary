define i64 @f_gold(i64 %n) #1 !dbg !5432 {
entry:
    #dbg_value(i64 %n, !5435, !DIExpression(), !5436)
    #dbg_value(i64 %n, !5435, !DIExpression(), !5437)
  %0 = sitofp i64 %n to double, !dbg !5438
  %1 = call double @math.Pow(double %0, double 2.000000e+00, ptr undef), !dbg !5439
  %abovemin = fcmp ole double 0xC3E0000000000000, %1, !dbg !5440
  %belowmax = fcmp ole double %1, 0x43DFFFFFFFFFFFFE, !dbg !5440
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5440
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5440
  %isnan = fcmp uno double %1, %1, !dbg !5440
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5440
  %normal = fptosi double %1 to i64, !dbg !5440
  %2 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5440
  ret i64 %2, !dbg !5441
}
