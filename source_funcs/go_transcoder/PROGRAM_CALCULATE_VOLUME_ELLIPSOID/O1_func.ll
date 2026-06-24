define float @f_gold(float %r1, float %r2, float %r3) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(float %r1, !3110, !DIExpression(), !3114)
    #dbg_value(float %r2, !3111, !DIExpression(), !3114)
    #dbg_value(float %r3, !3112, !DIExpression(), !3114)
    #dbg_value(float 0x40091EB860000000, !3113, !DIExpression(), !3115)
    #dbg_value(float 0x40091EB860000000, !3113, !DIExpression(), !3116)
    #dbg_value(float %r1, !3110, !DIExpression(), !3117)
  %0 = fpext float %r1 to double, !dbg !3118
  %1 = fmul double %0, 0x4010B46DCF333333, !dbg !3119
    #dbg_value(float %r2, !3111, !DIExpression(), !3120)
  %2 = fpext float %r2 to double, !dbg !3121
  %3 = fmul double %1, %2, !dbg !3122
    #dbg_value(float %r3, !3112, !DIExpression(), !3123)
  %4 = fpext float %r3 to double, !dbg !3124
  %5 = fmul double %3, %4, !dbg !3125
  %6 = fptrunc double %5 to float, !dbg !3126
  ret float %6, !dbg !3127
}
