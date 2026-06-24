define double @f_gold(double %side) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(double %side, !3026, !DIExpression(), !3027)
    #dbg_value(double %side, !3026, !DIExpression(), !3028)
    #dbg_value(double %side, !3026, !DIExpression(), !3029)
  %0 = fmul double %side, %side, !dbg !3030
    #dbg_value(double %side, !3026, !DIExpression(), !3031)
  %1 = fmul double %side, %0, !dbg !3032
  %2 = fmul double %1, 0x3FDE2B7DDDFEFA67, !dbg !3033
  ret double %2, !dbg !3034
}
