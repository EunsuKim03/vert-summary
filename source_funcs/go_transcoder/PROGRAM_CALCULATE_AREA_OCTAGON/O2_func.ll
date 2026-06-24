define double @f_gold(double %side) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(double %side, !3026, !DIExpression(), !3027)
    #dbg_value(double %side, !3026, !DIExpression(), !3028)
  %0 = fmul double %side, 0x4013504F333F9DE6, !dbg !3029
    #dbg_value(double %side, !3026, !DIExpression(), !3030)
  %1 = fmul double %side, %0, !dbg !3031
  %2 = fptrunc double %1 to float, !dbg !3032
  %3 = fpext float %2 to double, !dbg !3033
  ret double %3, !dbg !3034
}
