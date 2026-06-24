define float @f_gold(float %r1, float %r2, float %r3) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(float %r1, !3026, !DIExpression(), !3030)
    #dbg_value(float %r2, !3027, !DIExpression(), !3030)
    #dbg_value(float %r3, !3028, !DIExpression(), !3030)
    #dbg_value(float 0x40091EB860000000, !3029, !DIExpression(), !3031)
    #dbg_value(float 0x40091EB860000000, !3029, !DIExpression(), !3032)
    #dbg_value(float %r1, !3026, !DIExpression(), !3033)
  %0 = fpext float %r1 to double, !dbg !3034
  %1 = fmul double %0, 0x4010B46DCF333333, !dbg !3035
    #dbg_value(float %r2, !3027, !DIExpression(), !3036)
  %2 = fpext float %r2 to double, !dbg !3037
  %3 = fmul double %1, %2, !dbg !3038
    #dbg_value(float %r3, !3028, !DIExpression(), !3039)
  %4 = fpext float %r3 to double, !dbg !3040
  %5 = fmul double %3, %4, !dbg !3041
  %6 = fptrunc double %5 to float, !dbg !3042
  ret float %6, !dbg !3043
}
