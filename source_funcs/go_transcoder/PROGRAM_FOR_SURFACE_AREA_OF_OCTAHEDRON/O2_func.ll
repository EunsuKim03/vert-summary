define double @f_gold(double %side) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(double %side, !3026, !DIExpression(), !3027)
    #dbg_value(double %side, !3026, !DIExpression(), !3028)
    #dbg_value(double %side, !3026, !DIExpression(), !3029)
  %0 = fmul double %side, %side, !dbg !3030
  %1 = fmul double %0, 0x400BB67AE8584CAA, !dbg !3031
  ret double %1, !dbg !3032
}
