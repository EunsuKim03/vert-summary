define i1 @f_gold(i64 %r, i64 %R, i64 %r1, i64 %x1, i64 %y1) local_unnamed_addr #10 !dbg !3105 {
entry:
    #dbg_value(i64 %r, !3110, !DIExpression(), !3116)
    #dbg_value(i64 %R, !3111, !DIExpression(), !3116)
    #dbg_value(i64 %r1, !3112, !DIExpression(), !3116)
    #dbg_value(i64 %x1, !3113, !DIExpression(), !3116)
    #dbg_value(i64 %y1, !3114, !DIExpression(), !3116)
    #dbg_value(i64 %x1, !3113, !DIExpression(), !3117)
    #dbg_value(i64 %x1, !3113, !DIExpression(), !3118)
  %0 = mul i64 %x1, %x1, !dbg !3119
    #dbg_value(i64 %y1, !3114, !DIExpression(), !3120)
    #dbg_value(i64 %y1, !3114, !DIExpression(), !3121)
  %1 = mul i64 %y1, %y1, !dbg !3122
  %2 = add i64 %1, %0, !dbg !3123
  %3 = sitofp i64 %2 to double, !dbg !3124
    #dbg_value(double %3, !3125, !DIExpression(), !3131)
  %4 = call double @llvm.sqrt.f64(double %3), !dbg !3131
  %abovemin = fcmp oge double %4, 0xC3E0000000000000, !dbg !3133
  %belowmax = fcmp ole double %4, 0x43DFFFFFFFFFFFFE, !dbg !3133
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3133
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3133
  %isnan = icmp slt i64 %2, 0, !dbg !3133
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3133
  %normal = fptosi double %4 to i64, !dbg !3133
  %5 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3133
    #dbg_value(i64 %5, !3115, !DIExpression(), !3134)
    #dbg_value(i64 %5, !3115, !DIExpression(), !3135)
    #dbg_value(i64 %r1, !3112, !DIExpression(), !3136)
  %6 = sub i64 %5, %r1, !dbg !3137
    #dbg_value(i64 %R, !3111, !DIExpression(), !3138)
  %.not = icmp sge i64 %6, %R, !dbg !3139
  %7 = add i64 %5, %r1, !dbg !3140
  %8 = icmp sle i64 %7, %r, !dbg !3140
  %9 = select i1 %.not, i1 %8, i1 false, !dbg !3140
  ret i1 %9, !dbg !3141
}
