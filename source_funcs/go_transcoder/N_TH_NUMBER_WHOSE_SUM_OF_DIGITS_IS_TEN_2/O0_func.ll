define i64 @f_gold(i64 %n) #1 !dbg !4957 {
entry:
    #dbg_value(i64 %n, !4960, !DIExpression(), !4963)
    #dbg_value(i64 %n, !4960, !DIExpression(), !4964)
  %0 = sub i64 %n, 1, !dbg !4965
  %1 = mul i64 %0, 9, !dbg !4966
  %2 = add i64 %1, 19, !dbg !4967
    #dbg_value(i64 %2, !4961, !DIExpression(), !4968)
    #dbg_value(i64 %2, !4961, !DIExpression(), !4969)
  %3 = sitofp i64 %2 to double, !dbg !4970
  %4 = call double @math.Log10(double %3, ptr undef), !dbg !4971
  %abovemin = fcmp ole double 0xC3E0000000000000, %4, !dbg !4972
  %belowmax = fcmp ole double %4, 0x43DFFFFFFFFFFFFE, !dbg !4972
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4972
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4972
  %isnan = fcmp uno double %4, %4, !dbg !4972
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4972
  %normal = fptosi double %4 to i64, !dbg !4972
  %5 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4972
  %6 = sub i64 %5, 1, !dbg !4973
    #dbg_value(i64 %6, !4962, !DIExpression(), !4974)
    #dbg_value(i64 %6, !4962, !DIExpression(), !4975)
  %7 = mul i64 %6, 9, !dbg !4976
  %8 = add i64 %2, %7, !dbg !4977
    #dbg_value(i64 %8, !4961, !DIExpression(), !4977)
    #dbg_value(i64 %8, !4961, !DIExpression(), !4978)
  ret i64 %8, !dbg !4979
}
