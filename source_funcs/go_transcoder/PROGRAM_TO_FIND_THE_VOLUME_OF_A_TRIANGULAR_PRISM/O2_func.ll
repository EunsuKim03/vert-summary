define float @f_gold(float %l, float %b, float %h) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(float %l, !3026, !DIExpression(), !3030)
    #dbg_value(float %b, !3027, !DIExpression(), !3030)
    #dbg_value(float %h, !3028, !DIExpression(), !3030)
    #dbg_value(float %l, !3026, !DIExpression(), !3031)
    #dbg_value(float %b, !3027, !DIExpression(), !3032)
  %0 = fmul float %l, %b, !dbg !3033
    #dbg_value(float %h, !3028, !DIExpression(), !3034)
  %1 = fmul float %0, %h, !dbg !3035
  %2 = fmul float %1, 5.000000e-01, !dbg !3036
    #dbg_value(float %2, !3029, !DIExpression(), !3037)
    #dbg_value(float %2, !3029, !DIExpression(), !3038)
  ret float %2, !dbg !3039
}
