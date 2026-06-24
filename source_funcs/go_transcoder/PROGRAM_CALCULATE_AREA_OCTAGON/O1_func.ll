define double @f_gold(double %side) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(double %side, !3110, !DIExpression(), !3111)
    #dbg_value(double %side, !3110, !DIExpression(), !3112)
  %0 = fmul double %side, 0x4013504F333F9DE6, !dbg !3113
    #dbg_value(double %side, !3110, !DIExpression(), !3114)
  %1 = fmul double %side, %0, !dbg !3115
  %2 = fptrunc double %1 to float, !dbg !3116
  %3 = fpext float %2 to double, !dbg !3117
  ret double %3, !dbg !3118
}
