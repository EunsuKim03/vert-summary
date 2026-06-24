define float @f_gold(float %a, float %b) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(float %a, !3024, !DIExpression(), !3026)
    #dbg_value(float %b, !3025, !DIExpression(), !3026)
    #dbg_value(float %a, !3024, !DIExpression(), !3027)
  %0 = fmul float %a, 2.000000e+00, !dbg !3028
    #dbg_value(float %b, !3025, !DIExpression(), !3029)
  %1 = fmul float %b, 2.000000e+00, !dbg !3030
  %2 = fadd float %0, %1, !dbg !3031
  ret float %2, !dbg !3032
}
