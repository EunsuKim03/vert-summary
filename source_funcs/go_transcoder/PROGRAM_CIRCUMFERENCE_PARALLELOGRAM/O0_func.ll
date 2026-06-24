define float @f_gold(float %a, float %b) #0 !dbg !4927 {
entry:
    #dbg_value(float %a, !4930, !DIExpression(), !4932)
    #dbg_value(float %b, !4931, !DIExpression(), !4932)
    #dbg_value(float %a, !4930, !DIExpression(), !4933)
  %0 = fmul float %a, 2.000000e+00, !dbg !4934
    #dbg_value(float %b, !4931, !DIExpression(), !4935)
  %1 = fmul float %b, 2.000000e+00, !dbg !4936
  %2 = fadd float %0, %1, !dbg !4937
  ret float %2, !dbg !4938
}
