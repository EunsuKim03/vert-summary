define i64 @f_gold(double %p) local_unnamed_addr #10 !dbg !3105 {
entry:
    #dbg_value(double %p, !3110, !DIExpression(), !3111)
    #dbg_value(double %p, !3110, !DIExpression(), !3112)
  %0 = fsub double 1.000000e+00, %p, !dbg !3113
  %1 = fdiv double 1.000000e+00, %0, !dbg !3114
    #dbg_value(double %1, !3115, !DIExpression(), !3119)
  %2 = call double @llvm.log.f64(double %1), !dbg !3119
  %3 = fmul double %2, 7.300000e+02, !dbg !3121
    #dbg_value(double %3, !3122, !DIExpression(), !3126)
  %4 = call double @llvm.sqrt.f64(double %3), !dbg !3126
    #dbg_value(double %4, !3128, !DIExpression(), !3132)
  %5 = call double @llvm.ceil.f64(double %4), !dbg !3132
  %abovemin = fcmp oge double %5, 0xC3E0000000000000, !dbg !3134
  %belowmax = fcmp ole double %5, 0x43DFFFFFFFFFFFFE, !dbg !3134
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3134
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3134
  %isnan = fcmp uno double %5, 0.000000e+00, !dbg !3134
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3134
  %normal = fptosi double %5 to i64, !dbg !3134
  %6 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3134
  ret i64 %6, !dbg !3135
}
