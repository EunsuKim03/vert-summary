define double @f_gold(double %s) #1 !dbg !4932 {
entry:
    #dbg_value(double %s, !4935, !DIExpression(), !4936)
  %0 = call double @math.Sqrt(double 3.000000e+00, ptr undef), !dbg !4937
  %1 = fmul double %0, 3.000000e+00, !dbg !4938
    #dbg_value(double %s, !4935, !DIExpression(), !4939)
    #dbg_value(double %s, !4935, !DIExpression(), !4940)
  %2 = fmul double %s, %s, !dbg !4941
  %3 = fmul double %1, %2, !dbg !4942
  %4 = fdiv double %3, 2.000000e+00, !dbg !4943
  ret double %4, !dbg !4944
}
