define float @f_gold(i64 %a) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3113)
  %0 = sitofp i64 %a to double, !dbg !3114
  %1 = fmul double %0, 0x400921FB54442D18, !dbg !3115
    #dbg_value(i64 %a, !3110, !DIExpression(), !3116)
  %2 = fmul double %0, %1, !dbg !3117
  %3 = fmul double %2, 2.500000e-01, !dbg !3118
  %4 = fptrunc double %3 to float, !dbg !3119
    #dbg_value(float %4, !3111, !DIExpression(), !3120)
    #dbg_value(float %4, !3111, !DIExpression(), !3121)
  ret float %4, !dbg !3122
}
