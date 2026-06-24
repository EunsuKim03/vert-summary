define double @f_gold(double %side) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(double %side, !3110, !DIExpression(), !3111)
    #dbg_value(double %side, !3110, !DIExpression(), !3112)
    #dbg_value(double %side, !3110, !DIExpression(), !3113)
  %0 = fmul double %side, %side, !dbg !3114
    #dbg_value(double %side, !3110, !DIExpression(), !3115)
  %1 = fmul double %side, %0, !dbg !3116
  %2 = fmul double %1, 0x3FDE2B7DDDFEFA67, !dbg !3117
  ret double %2, !dbg !3118
}
