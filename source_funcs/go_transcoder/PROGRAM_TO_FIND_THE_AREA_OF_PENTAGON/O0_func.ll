define float @f_gold(float %a) #1 !dbg !4932 {
entry:
    #dbg_value(float %a, !4935, !DIExpression(), !4937)
    #dbg_value(float 0.000000e+00, !4936, !DIExpression(), !4938)
  %0 = call double @math.Sqrt(double 5.000000e+00, ptr undef), !dbg !4939
  %1 = fmul double %0, 2.000000e+00, !dbg !4940
  %2 = fadd double %1, 5.000000e+00, !dbg !4941
  %3 = fmul double %2, 5.000000e+00, !dbg !4942
  %4 = call double @math.Sqrt(double %3, ptr undef), !dbg !4943
    #dbg_value(float %a, !4935, !DIExpression(), !4944)
  %5 = fpext float %a to double, !dbg !4945
  %6 = fmul double %4, %5, !dbg !4946
    #dbg_value(float %a, !4935, !DIExpression(), !4947)
  %7 = fpext float %a to double, !dbg !4948
  %8 = fmul double %6, %7, !dbg !4949
  %9 = fdiv double %8, 4.000000e+00, !dbg !4950
  %10 = fptrunc double %9 to float, !dbg !4951
    #dbg_value(float %10, !4936, !DIExpression(), !4952)
    #dbg_value(float %10, !4936, !DIExpression(), !4953)
  ret float %10, !dbg !4954
}
