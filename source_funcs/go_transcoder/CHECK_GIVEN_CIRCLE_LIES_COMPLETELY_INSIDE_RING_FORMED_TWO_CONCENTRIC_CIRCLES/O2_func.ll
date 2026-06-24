define i1 @f_gold(i64 %r, i64 %R, i64 %r1, i64 %x1, i64 %y1) local_unnamed_addr #10 !dbg !3021 {
entry:
    #dbg_value(i64 %r, !3026, !DIExpression(), !3032)
    #dbg_value(i64 %R, !3027, !DIExpression(), !3032)
    #dbg_value(i64 %r1, !3028, !DIExpression(), !3032)
    #dbg_value(i64 %x1, !3029, !DIExpression(), !3032)
    #dbg_value(i64 %y1, !3030, !DIExpression(), !3032)
    #dbg_value(i64 %x1, !3029, !DIExpression(), !3033)
    #dbg_value(i64 %x1, !3029, !DIExpression(), !3034)
  %0 = mul i64 %x1, %x1, !dbg !3035
    #dbg_value(i64 %y1, !3030, !DIExpression(), !3036)
    #dbg_value(i64 %y1, !3030, !DIExpression(), !3037)
  %1 = mul i64 %y1, %y1, !dbg !3038
  %2 = add i64 %1, %0, !dbg !3039
  %3 = sitofp i64 %2 to double, !dbg !3040
    #dbg_value(double %3, !3041, !DIExpression(), !3047)
  %4 = tail call double @llvm.sqrt.f64(double %3), !dbg !3047
  %abovemin = fcmp oge double %4, 0xC3E0000000000000, !dbg !3049
  %belowmax = fcmp ole double %4, 0x43DFFFFFFFFFFFFE, !dbg !3049
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3049
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3049
  %isnan = icmp slt i64 %2, 0, !dbg !3049
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3049
  %normal = fptosi double %4 to i64, !dbg !3049
  %5 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3049
    #dbg_value(i64 %5, !3031, !DIExpression(), !3050)
    #dbg_value(i64 %5, !3031, !DIExpression(), !3051)
    #dbg_value(i64 %r1, !3028, !DIExpression(), !3052)
  %6 = sub i64 %5, %r1, !dbg !3053
    #dbg_value(i64 %R, !3027, !DIExpression(), !3054)
  %.not = icmp sge i64 %6, %R, !dbg !3055
  %7 = add i64 %5, %r1, !dbg !3056
  %8 = icmp sle i64 %7, %r, !dbg !3056
  %9 = select i1 %.not, i1 %8, i1 false, !dbg !3056
  ret i1 %9, !dbg !3057
}
