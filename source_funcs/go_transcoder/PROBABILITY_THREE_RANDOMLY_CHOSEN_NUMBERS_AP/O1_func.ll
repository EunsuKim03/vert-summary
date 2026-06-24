define double @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
  %0 = sitofp i64 %n to double, !dbg !3113
  %1 = fmul double %0, 3.000000e+00, !dbg !3114
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
  %2 = mul i64 %n, %n, !dbg !3117
  %3 = sitofp i64 %2 to double, !dbg !3118
  %4 = fmul double %3, 4.000000e+00, !dbg !3119
  %5 = fadd double %4, -1.000000e+00, !dbg !3120
  %6 = fdiv double %1, %5, !dbg !3121
  ret double %6, !dbg !3122
}
