define i64 @f_gold(i64 %n) #1 !dbg !4980 {
entry:
    #dbg_value(i64 %n, !4983, !DIExpression(), !4985)
    #dbg_value(i64 %n, !4983, !DIExpression(), !4986)
  %0 = sitofp i64 %n to double, !dbg !4987
  %1 = call double @math.Log(double %0, ptr undef), !dbg !4988
  %2 = fmul double %1, 0x40009FEC13B9F128, !dbg !4989
  %3 = fadd double %2, 0x3FFAC1A47A9E2BD0, !dbg !4990
  %4 = fptrunc double %3 to float, !dbg !4991
    #dbg_value(float %4, !4984, !DIExpression(), !4992)
    #dbg_value(float %4, !4984, !DIExpression(), !4993)
  %5 = fpext float %4 to double, !dbg !4994
  %6 = call double @math.Round(double %5, ptr undef), !dbg !4995
  %abovemin = fcmp ole double 0xC3E0000000000000, %6, !dbg !4996
  %belowmax = fcmp ole double %6, 0x43DFFFFFFFFFFFFE, !dbg !4996
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4996
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4996
  %isnan = fcmp uno double %6, %6, !dbg !4996
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4996
  %normal = fptosi double %6 to i64, !dbg !4996
  %7 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4996
  ret i64 %7, !dbg !4997
}
