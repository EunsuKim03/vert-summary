define float @f_gold(float %r1, float %r2, float %r3) #0 !dbg !4927 {
entry:
    #dbg_value(float %r1, !4932, !DIExpression(), !4936)
    #dbg_value(float %r2, !4933, !DIExpression(), !4936)
    #dbg_value(float %r3, !4934, !DIExpression(), !4936)
    #dbg_value(float 0x40091EB860000000, !4935, !DIExpression(), !4937)
    #dbg_value(float 0x40091EB860000000, !4935, !DIExpression(), !4938)
    #dbg_value(float %r1, !4932, !DIExpression(), !4939)
  %0 = fpext float %r1 to double, !dbg !4940
  %1 = fmul double 0x4010B46DCF333333, %0, !dbg !4941
    #dbg_value(float %r2, !4933, !DIExpression(), !4942)
  %2 = fpext float %r2 to double, !dbg !4943
  %3 = fmul double %1, %2, !dbg !4944
    #dbg_value(float %r3, !4934, !DIExpression(), !4945)
  %4 = fpext float %r3 to double, !dbg !4946
  %5 = fmul double %3, %4, !dbg !4947
  %6 = fptrunc double %5 to float, !dbg !4948
  ret float %6, !dbg !4949
}
