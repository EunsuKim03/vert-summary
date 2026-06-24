define i64 @f_gold(double %p) #1 !dbg !4942 {
entry:
    #dbg_value(double %p, !4945, !DIExpression(), !4946)
    #dbg_value(double %p, !4945, !DIExpression(), !4947)
  %0 = fsub double 1.000000e+00, %p, !dbg !4948
  %1 = fdiv double 1.000000e+00, %0, !dbg !4949
  %2 = call double @math.Log(double %1, ptr undef), !dbg !4950
  %3 = fmul double %2, 7.300000e+02, !dbg !4951
  %4 = call double @math.Sqrt(double %3, ptr undef), !dbg !4952
  %5 = call double @math.Ceil(double %4, ptr undef), !dbg !4953
  %abovemin = fcmp ole double 0xC3E0000000000000, %5, !dbg !4954
  %belowmax = fcmp ole double %5, 0x43DFFFFFFFFFFFFE, !dbg !4954
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4954
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4954
  %isnan = fcmp uno double %5, %5, !dbg !4954
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4954
  %normal = fptosi double %5 to i64, !dbg !4954
  %6 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4954
  ret i64 %6, !dbg !4955
}
