define float @f_gold(i64 %a) #1 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %a, !4930, !DIExpression(), !4933)
  %0 = sitofp i64 %a to double, !dbg !4934
  %1 = fmul double 0x400921FB54442D18, %0, !dbg !4935
    #dbg_value(i64 %a, !4930, !DIExpression(), !4936)
  %2 = sitofp i64 %a to double, !dbg !4937
  %3 = fmul double %1, %2, !dbg !4938
  %4 = fdiv double %3, 4.000000e+00, !dbg !4939
  %5 = fptrunc double %4 to float, !dbg !4940
    #dbg_value(float %5, !4931, !DIExpression(), !4941)
    #dbg_value(float %5, !4931, !DIExpression(), !4942)
  ret float %5, !dbg !4943
}
