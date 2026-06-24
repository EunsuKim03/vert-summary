define i1 @f_gold(i64 %x, i64 %y) local_unnamed_addr #10 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3114)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3115)
  %0 = sitofp i64 %y to double, !dbg !3116
    #dbg_value(double %0, !3117, !DIExpression(), !3123)
  %1 = call double @llvm.log.f64(double %0), !dbg !3123
    #dbg_value(i64 %x, !3110, !DIExpression(), !3125)
  %2 = sitofp i64 %x to double, !dbg !3126
    #dbg_value(double %2, !3117, !DIExpression(), !3127)
  %3 = call double @llvm.log.f64(double %2), !dbg !3127
  %4 = fdiv double %1, %3, !dbg !3129
  %abovemin = fcmp oge double %4, 0xC3E0000000000000, !dbg !3130
  %belowmax = fcmp ole double %4, 0x43DFFFFFFFFFFFFE, !dbg !3130
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3130
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3130
  %isnan = fcmp uno double %4, 0.000000e+00, !dbg !3130
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3130
  %normal = fptosi double %4 to i64, !dbg !3130
  %5 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3130
    #dbg_value(i64 %5, !3112, !DIExpression(), !3131)
    #dbg_value(i64 %y, !3111, !DIExpression(), !3132)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3133)
    #dbg_value(double %4, !3113, !DIExpression(), !3134)
    #dbg_value(i64 %5, !3112, !DIExpression(), !3135)
  %6 = sitofp i64 %5 to double, !dbg !3136
    #dbg_value(double %4, !3113, !DIExpression(), !3137)
  %7 = fcmp oeq double %4, %6, !dbg !3138
  ret i1 %7, !dbg !3139
}
