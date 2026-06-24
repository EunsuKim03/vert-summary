define double @f_gold(double %side) #1 !dbg !4932 {
entry:
    #dbg_value(double %side, !4935, !DIExpression(), !4936)
    #dbg_value(double %side, !4935, !DIExpression(), !4937)
    #dbg_value(double %side, !4935, !DIExpression(), !4938)
  %0 = fmul double %side, %side, !dbg !4939
    #dbg_value(double %side, !4935, !DIExpression(), !4940)
  %1 = fmul double %0, %side, !dbg !4941
  %2 = call double @math.Sqrt(double 2.000000e+00, ptr undef), !dbg !4942
  %3 = fdiv double %2, 3.000000e+00, !dbg !4943
  %4 = fmul double %1, %3, !dbg !4944
  ret double %4, !dbg !4945
}
