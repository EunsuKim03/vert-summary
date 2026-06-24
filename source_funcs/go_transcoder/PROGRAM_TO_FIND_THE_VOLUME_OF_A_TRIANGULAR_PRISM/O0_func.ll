define float @f_gold(float %l, float %b, float %h) #0 !dbg !4927 {
entry:
    #dbg_value(float %l, !4932, !DIExpression(), !4936)
    #dbg_value(float %b, !4933, !DIExpression(), !4936)
    #dbg_value(float %h, !4934, !DIExpression(), !4936)
    #dbg_value(float %l, !4932, !DIExpression(), !4937)
    #dbg_value(float %b, !4933, !DIExpression(), !4938)
  %0 = fmul float %l, %b, !dbg !4939
    #dbg_value(float %h, !4934, !DIExpression(), !4940)
  %1 = fmul float %0, %h, !dbg !4941
  %2 = fdiv float %1, 2.000000e+00, !dbg !4942
    #dbg_value(float %2, !4935, !DIExpression(), !4943)
    #dbg_value(float %2, !4935, !DIExpression(), !4944)
  ret float %2, !dbg !4945
}
