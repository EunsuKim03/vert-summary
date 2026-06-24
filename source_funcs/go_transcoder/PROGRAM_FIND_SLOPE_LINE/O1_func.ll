define float @f_gold(float %x1, float %y1, float %x2, float %y2) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(float %x1, !3110, !DIExpression(), !3114)
    #dbg_value(float %y1, !3111, !DIExpression(), !3114)
    #dbg_value(float %x2, !3112, !DIExpression(), !3114)
    #dbg_value(float %y2, !3113, !DIExpression(), !3114)
    #dbg_value(float %y2, !3113, !DIExpression(), !3115)
    #dbg_value(float %y1, !3111, !DIExpression(), !3116)
  %0 = fsub float %y2, %y1, !dbg !3117
    #dbg_value(float %x2, !3112, !DIExpression(), !3118)
    #dbg_value(float %x1, !3110, !DIExpression(), !3119)
  %1 = fsub float %x2, %x1, !dbg !3120
  %2 = fdiv float %0, %1, !dbg !3121
  ret float %2, !dbg !3122
}
