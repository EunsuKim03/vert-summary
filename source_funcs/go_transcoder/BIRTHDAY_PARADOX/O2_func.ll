define i64 @f_gold(double %p) local_unnamed_addr #10 !dbg !3021 {
entry:
    #dbg_value(double %p, !3026, !DIExpression(), !3027)
    #dbg_value(double %p, !3026, !DIExpression(), !3028)
  %0 = fsub double 1.000000e+00, %p, !dbg !3029
  %1 = fdiv double 1.000000e+00, %0, !dbg !3030
    #dbg_value(double %1, !3031, !DIExpression(), !3035)
  %2 = tail call double @llvm.log.f64(double %1), !dbg !3035
  %3 = fmul double %2, 7.300000e+02, !dbg !3037
    #dbg_value(double %3, !3038, !DIExpression(), !3042)
  %4 = tail call double @llvm.sqrt.f64(double %3), !dbg !3042
    #dbg_value(double %4, !3044, !DIExpression(), !3048)
  %5 = tail call double @llvm.ceil.f64(double %4), !dbg !3048
  %abovemin = fcmp oge double %5, 0xC3E0000000000000, !dbg !3050
  %belowmax = fcmp ole double %5, 0x43DFFFFFFFFFFFFE, !dbg !3050
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3050
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3050
  %isnan = fcmp uno double %5, 0.000000e+00, !dbg !3050
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3050
  %normal = fptosi double %5 to i64, !dbg !3050
  %6 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3050
  ret i64 %6, !dbg !3051
}
