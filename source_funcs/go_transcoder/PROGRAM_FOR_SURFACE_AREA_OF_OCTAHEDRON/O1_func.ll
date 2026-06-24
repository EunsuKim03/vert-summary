define double @f_gold(double %side) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(double %side, !3110, !DIExpression(), !3111)
    #dbg_value(double %side, !3110, !DIExpression(), !3112)
    #dbg_value(double %side, !3110, !DIExpression(), !3113)
  %0 = fmul double %side, %side, !dbg !3114
  %1 = fmul double %0, 0x400BB67AE8584CAA, !dbg !3115
  ret double %1, !dbg !3116
}
