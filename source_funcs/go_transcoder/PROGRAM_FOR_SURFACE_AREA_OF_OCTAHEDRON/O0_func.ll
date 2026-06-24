define double @f_gold(double %side) #1 !dbg !4932 {
entry:
    #dbg_value(double %side, !4935, !DIExpression(), !4936)
  %0 = call double @math.Sqrt(double 3.000000e+00, ptr undef), !dbg !4937
  %1 = fmul double %0, 2.000000e+00, !dbg !4938
    #dbg_value(double %side, !4935, !DIExpression(), !4939)
    #dbg_value(double %side, !4935, !DIExpression(), !4940)
  %2 = fmul double %side, %side, !dbg !4941
  %3 = fmul double %1, %2, !dbg !4942
  ret double %3, !dbg !4943
}
