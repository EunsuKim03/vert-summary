define float @f_gold(float %a) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(float %a, !3110, !DIExpression(), !3112)
    #dbg_value(float 0.000000e+00, !3111, !DIExpression(), !3113)
    #dbg_value(float %a, !3110, !DIExpression(), !3114)
  %0 = fpext float %a to double, !dbg !3115
  %1 = fmul double %0, 0x401B87134F909657, !dbg !3116
    #dbg_value(float %a, !3110, !DIExpression(), !3117)
  %2 = fmul double %0, %1, !dbg !3118
  %3 = fmul double %2, 2.500000e-01, !dbg !3119
  %4 = fptrunc double %3 to float, !dbg !3120
    #dbg_value(float %4, !3111, !DIExpression(), !3121)
    #dbg_value(float %4, !3111, !DIExpression(), !3122)
  ret float %4, !dbg !3123
}
