define float @f_gold(i64 %a) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3029)
  %0 = sitofp i64 %a to double, !dbg !3030
  %1 = fmul double %0, 0x400921FB54442D18, !dbg !3031
    #dbg_value(i64 %a, !3026, !DIExpression(), !3032)
  %2 = fmul double %0, %1, !dbg !3033
  %3 = fmul double %2, 2.500000e-01, !dbg !3034
  %4 = fptrunc double %3 to float, !dbg !3035
    #dbg_value(float %4, !3027, !DIExpression(), !3036)
    #dbg_value(float %4, !3027, !DIExpression(), !3037)
  ret float %4, !dbg !3038
}
