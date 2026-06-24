define float @f_gold(float %x1, float %y1, float %x2, float %y2) #0 !dbg !4927 {
entry:
    #dbg_value(float %x1, !4932, !DIExpression(), !4936)
    #dbg_value(float %y1, !4933, !DIExpression(), !4936)
    #dbg_value(float %x2, !4934, !DIExpression(), !4936)
    #dbg_value(float %y2, !4935, !DIExpression(), !4936)
    #dbg_value(float %y2, !4935, !DIExpression(), !4937)
    #dbg_value(float %y1, !4933, !DIExpression(), !4938)
  %0 = fsub float %y2, %y1, !dbg !4939
    #dbg_value(float %x2, !4934, !DIExpression(), !4940)
    #dbg_value(float %x1, !4932, !DIExpression(), !4941)
  %1 = fsub float %x2, %x1, !dbg !4942
  %2 = fdiv float %0, %1, !dbg !4943
  ret float %2, !dbg !4944
}
