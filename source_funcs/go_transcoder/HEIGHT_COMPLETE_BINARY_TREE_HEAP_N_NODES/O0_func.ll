define i64 @f_gold(i64 %N) #1 !dbg !5102 {
entry:
    #dbg_value(i64 %N, !5105, !DIExpression(), !5106)
    #dbg_value(i64 %N, !5105, !DIExpression(), !5107)
  %0 = add i64 %N, 1, !dbg !5108
  %1 = sitofp i64 %0 to double, !dbg !5109
  %2 = call double @math.Log2(double %1, ptr undef), !dbg !5110
  %3 = call double @math.Ceil(double %2, ptr undef), !dbg !5111
  %4 = fsub double %3, 1.000000e+00, !dbg !5112
  %abovemin = fcmp ole double 0xC3E0000000000000, %4, !dbg !5113
  %belowmax = fcmp ole double %4, 0x43DFFFFFFFFFFFFE, !dbg !5113
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5113
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5113
  %isnan = fcmp uno double %4, %4, !dbg !5113
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5113
  %normal = fptosi double %4 to i64, !dbg !5113
  %5 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5113
  ret i64 %5, !dbg !5114
}
