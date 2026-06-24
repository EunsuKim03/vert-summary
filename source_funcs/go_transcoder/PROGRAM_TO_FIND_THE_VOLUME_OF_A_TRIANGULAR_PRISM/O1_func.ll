define float @f_gold(float %l, float %b, float %h) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(float %l, !3110, !DIExpression(), !3114)
    #dbg_value(float %b, !3111, !DIExpression(), !3114)
    #dbg_value(float %h, !3112, !DIExpression(), !3114)
    #dbg_value(float %l, !3110, !DIExpression(), !3115)
    #dbg_value(float %b, !3111, !DIExpression(), !3116)
  %0 = fmul float %l, %b, !dbg !3117
    #dbg_value(float %h, !3112, !DIExpression(), !3118)
  %1 = fmul float %0, %h, !dbg !3119
  %2 = fmul float %1, 5.000000e-01, !dbg !3120
    #dbg_value(float %2, !3113, !DIExpression(), !3121)
    #dbg_value(float %2, !3113, !DIExpression(), !3122)
  ret float %2, !dbg !3123
}
