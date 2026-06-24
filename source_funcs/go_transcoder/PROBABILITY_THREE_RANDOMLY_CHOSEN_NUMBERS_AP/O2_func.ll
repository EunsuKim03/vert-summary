define double @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
  %0 = sitofp i64 %n to double, !dbg !3029
  %1 = fmul double %0, 3.000000e+00, !dbg !3030
    #dbg_value(i64 %n, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
  %2 = mul i64 %n, %n, !dbg !3033
  %3 = sitofp i64 %2 to double, !dbg !3034
  %4 = fmul double %3, 4.000000e+00, !dbg !3035
  %5 = fadd double %4, -1.000000e+00, !dbg !3036
  %6 = fdiv double %1, %5, !dbg !3037
  ret double %6, !dbg !3038
}
