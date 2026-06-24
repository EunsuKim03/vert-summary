define float @f_gold(float %a, float %b) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(float %a, !3108, !DIExpression(), !3110)
    #dbg_value(float %b, !3109, !DIExpression(), !3110)
    #dbg_value(float %a, !3108, !DIExpression(), !3111)
  %0 = fmul float %a, 2.000000e+00, !dbg !3112
    #dbg_value(float %b, !3109, !DIExpression(), !3113)
  %1 = fmul float %b, 2.000000e+00, !dbg !3114
  %2 = fadd float %0, %1, !dbg !3115
  ret float %2, !dbg !3116
}
