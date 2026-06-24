define i1 @f_gold(i64 %x, i64 %y) #1 !dbg !4932 {
entry:
    #dbg_value(i64 %x, !4937, !DIExpression(), !4941)
    #dbg_value(i64 %y, !4938, !DIExpression(), !4941)
    #dbg_value(i64 %y, !4938, !DIExpression(), !4942)
  %0 = sitofp i64 %y to double, !dbg !4943
  %1 = call double @math.Log(double %0, ptr undef), !dbg !4944
    #dbg_value(i64 %x, !4937, !DIExpression(), !4945)
  %2 = sitofp i64 %x to double, !dbg !4946
  %3 = call double @math.Log(double %2, ptr undef), !dbg !4947
  %4 = fdiv double %1, %3, !dbg !4948
  %abovemin = fcmp ole double 0xC3E0000000000000, %4, !dbg !4949
  %belowmax = fcmp ole double %4, 0x43DFFFFFFFFFFFFE, !dbg !4949
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4949
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4949
  %isnan = fcmp uno double %4, %4, !dbg !4949
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4949
  %normal = fptosi double %4 to i64, !dbg !4949
  %5 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4949
    #dbg_value(i64 %5, !4939, !DIExpression(), !4950)
    #dbg_value(i64 %y, !4938, !DIExpression(), !4951)
  %6 = sitofp i64 %y to double, !dbg !4952
  %7 = call double @math.Log(double %6, ptr undef), !dbg !4953
    #dbg_value(i64 %x, !4937, !DIExpression(), !4954)
  %8 = sitofp i64 %x to double, !dbg !4955
  %9 = call double @math.Log(double %8, ptr undef), !dbg !4956
  %10 = fdiv double %7, %9, !dbg !4957
    #dbg_value(double %10, !4940, !DIExpression(), !4958)
    #dbg_value(i64 %5, !4939, !DIExpression(), !4959)
  %11 = sitofp i64 %5 to double, !dbg !4960
    #dbg_value(double %10, !4940, !DIExpression(), !4961)
  %12 = fcmp oeq double %11, %10, !dbg !4962
  ret i1 %12, !dbg !4963
}
