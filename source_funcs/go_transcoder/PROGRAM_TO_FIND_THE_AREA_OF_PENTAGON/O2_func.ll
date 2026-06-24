define float @f_gold(float %a) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(float %a, !3026, !DIExpression(), !3028)
    #dbg_value(float 0.000000e+00, !3027, !DIExpression(), !3029)
    #dbg_value(float %a, !3026, !DIExpression(), !3030)
  %0 = fpext float %a to double, !dbg !3031
  %1 = fmul double %0, 0x401B87134F909657, !dbg !3032
    #dbg_value(float %a, !3026, !DIExpression(), !3033)
  %2 = fmul double %0, %1, !dbg !3034
  %3 = fmul double %2, 2.500000e-01, !dbg !3035
  %4 = fptrunc double %3 to float, !dbg !3036
    #dbg_value(float %4, !3027, !DIExpression(), !3037)
    #dbg_value(float %4, !3027, !DIExpression(), !3038)
  ret float %4, !dbg !3039
}
