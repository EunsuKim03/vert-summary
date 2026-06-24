define i1 @f_gold(i64 %x, i64 %y) local_unnamed_addr #10 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %y, !3027, !DIExpression(), !3030)
    #dbg_value(i64 %y, !3027, !DIExpression(), !3031)
  %0 = sitofp i64 %y to double, !dbg !3032
    #dbg_value(double %0, !3033, !DIExpression(), !3039)
  %1 = tail call double @llvm.log.f64(double %0), !dbg !3039
    #dbg_value(i64 %x, !3026, !DIExpression(), !3041)
  %2 = sitofp i64 %x to double, !dbg !3042
    #dbg_value(double %2, !3033, !DIExpression(), !3043)
  %3 = tail call double @llvm.log.f64(double %2), !dbg !3043
  %4 = fdiv double %1, %3, !dbg !3045
  %abovemin = fcmp oge double %4, 0xC3E0000000000000, !dbg !3046
  %belowmax = fcmp ole double %4, 0x43DFFFFFFFFFFFFE, !dbg !3046
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3046
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3046
  %isnan = fcmp uno double %4, 0.000000e+00, !dbg !3046
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3046
  %normal = fptosi double %4 to i64, !dbg !3046
  %5 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3046
    #dbg_value(i64 %5, !3028, !DIExpression(), !3047)
    #dbg_value(i64 %y, !3027, !DIExpression(), !3048)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3049)
    #dbg_value(double %4, !3029, !DIExpression(), !3050)
    #dbg_value(i64 %5, !3028, !DIExpression(), !3051)
  %6 = sitofp i64 %5 to double, !dbg !3052
    #dbg_value(double %4, !3029, !DIExpression(), !3053)
  %7 = fcmp oeq double %4, %6, !dbg !3054
  ret i1 %7, !dbg !3055
}
