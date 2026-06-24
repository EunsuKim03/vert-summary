define float @f_gold(float %x1, float %y1, float %x2, float %y2) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(float %x1, !3026, !DIExpression(), !3030)
    #dbg_value(float %y1, !3027, !DIExpression(), !3030)
    #dbg_value(float %x2, !3028, !DIExpression(), !3030)
    #dbg_value(float %y2, !3029, !DIExpression(), !3030)
    #dbg_value(float %y2, !3029, !DIExpression(), !3031)
    #dbg_value(float %y1, !3027, !DIExpression(), !3032)
  %0 = fsub float %y2, %y1, !dbg !3033
    #dbg_value(float %x2, !3028, !DIExpression(), !3034)
    #dbg_value(float %x1, !3026, !DIExpression(), !3035)
  %1 = fsub float %x2, %x1, !dbg !3036
  %2 = fdiv float %0, %1, !dbg !3037
  ret float %2, !dbg !3038
}
