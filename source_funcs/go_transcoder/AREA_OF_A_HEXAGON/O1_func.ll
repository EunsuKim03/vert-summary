define double @f_gold(double %s) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(double %s, !3110, !DIExpression(), !3111)
    #dbg_value(double %s, !3110, !DIExpression(), !3112)
    #dbg_value(double %s, !3110, !DIExpression(), !3113)
  %0 = fmul double %s, %s, !dbg !3114
  %1 = fmul double %0, 0x4014C8DC2E423980, !dbg !3115
  %2 = fmul double %1, 5.000000e-01, !dbg !3116
  ret double %2, !dbg !3117
}
