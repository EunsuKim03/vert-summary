define double @f_gold(double %s) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(double %s, !3026, !DIExpression(), !3027)
    #dbg_value(double %s, !3026, !DIExpression(), !3028)
    #dbg_value(double %s, !3026, !DIExpression(), !3029)
  %0 = fmul double %s, %s, !dbg !3030
  %1 = fmul double %0, 0x4014C8DC2E423980, !dbg !3031
  %2 = fmul double %1, 5.000000e-01, !dbg !3032
  ret double %2, !dbg !3033
}
