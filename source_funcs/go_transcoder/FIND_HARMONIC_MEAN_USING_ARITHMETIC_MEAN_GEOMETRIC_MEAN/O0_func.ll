define double @f_gold(i64 %a, i64 %b) #1 !dbg !4932 {
entry:
    #dbg_value(i64 %a, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %b, !4938, !DIExpression(), !4942)
    #dbg_value(double 0.000000e+00, !4939, !DIExpression(), !4943)
    #dbg_value(double 0.000000e+00, !4940, !DIExpression(), !4944)
    #dbg_value(double 0.000000e+00, !4941, !DIExpression(), !4945)
    #dbg_value(i64 %a, !4937, !DIExpression(), !4946)
    #dbg_value(i64 %b, !4938, !DIExpression(), !4947)
  %0 = add i64 %a, %b, !dbg !4948
  %1 = icmp eq i64 %0, -9223372036854775808, !dbg !4949
  %2 = and i1 false, %1, !dbg !4949
  %3 = select i1 %2, i64 1, i64 2, !dbg !4949
  %4 = sdiv i64 %0, %3, !dbg !4949
  %5 = sitofp i64 %4 to double, !dbg !4950
    #dbg_value(double %5, !4939, !DIExpression(), !4951)
    #dbg_value(i64 %a, !4937, !DIExpression(), !4952)
    #dbg_value(i64 %b, !4938, !DIExpression(), !4953)
  %6 = mul i64 %a, %b, !dbg !4954
  %7 = sitofp i64 %6 to double, !dbg !4955
  %8 = call double @math.Sqrt(double %7, ptr undef), !dbg !4956
    #dbg_value(double %8, !4940, !DIExpression(), !4957)
    #dbg_value(double %8, !4940, !DIExpression(), !4958)
    #dbg_value(double %8, !4940, !DIExpression(), !4959)
  %9 = fmul double %8, %8, !dbg !4960
    #dbg_value(double %5, !4939, !DIExpression(), !4961)
  %10 = fdiv double %9, %5, !dbg !4962
    #dbg_value(double %10, !4941, !DIExpression(), !4963)
    #dbg_value(double %10, !4941, !DIExpression(), !4964)
  ret double %10, !dbg !4965
}
