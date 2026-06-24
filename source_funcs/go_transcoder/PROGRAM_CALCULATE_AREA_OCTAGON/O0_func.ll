define double @f_gold(double %side) #1 !dbg !4932 {
entry:
    #dbg_value(double %side, !4935, !DIExpression(), !4936)
  %0 = call double @math.Sqrt(double 2.000000e+00, ptr undef), !dbg !4937
  %1 = fadd double %0, 1.000000e+00, !dbg !4938
  %2 = fmul double %1, 2.000000e+00, !dbg !4939
    #dbg_value(double %side, !4935, !DIExpression(), !4940)
  %3 = fmul double %2, %side, !dbg !4941
    #dbg_value(double %side, !4935, !DIExpression(), !4942)
  %4 = fmul double %3, %side, !dbg !4943
  %5 = fptrunc double %4 to float, !dbg !4944
  %6 = fpext float %5 to double, !dbg !4945
  ret double %6, !dbg !4946
}
