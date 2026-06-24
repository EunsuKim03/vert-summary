define i64 @f_gold(i64 %n) local_unnamed_addr #10 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
  %0 = mul i64 %n, 9, !dbg !3115
  %1 = add i64 %0, 10, !dbg !3116
    #dbg_value(i64 %1, !3111, !DIExpression(), !3117)
    #dbg_value(i64 %1, !3111, !DIExpression(), !3118)
  %2 = sitofp i64 %1 to double, !dbg !3119
    #dbg_value(double %2, !3120, !DIExpression(), !3126)
    #dbg_value(double %2, !3120, !DIExpression(), !3128)
    #dbg_value(double %2, !3129, !DIExpression(), !3132)
    #dbg_value(double %2, !3129, !DIExpression(), !3134)
    #dbg_value(double %2, !3135, !DIExpression(), !3139)
  %3 = call double @llvm.log.f64(double %2), !dbg !3139
  %4 = fmul double %3, 0x3FDBCB7B1526E50E, !dbg !3141
  %abovemin = fcmp oge double %4, 0xC3E0000000000000, !dbg !3142
  %belowmax = fcmp ole double %4, 0x43DFFFFFFFFFFFFE, !dbg !3142
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3142
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3142
  %isnan = fcmp uno double %4, 0.000000e+00, !dbg !3142
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3142
  %normal = fptosi double %4 to i64, !dbg !3142
  %5 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3142
    #dbg_value(i64 %5, !3112, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3143)
    #dbg_value(i64 %5, !3112, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3144)
  %6 = mul i64 %5, 9, !dbg !3145
  %7 = add i64 %0, 1, !dbg !3145
  %8 = add i64 %7, %6, !dbg !3146
    #dbg_value(i64 %8, !3111, !DIExpression(), !3146)
    #dbg_value(i64 %8, !3111, !DIExpression(), !3147)
  ret i64 %8, !dbg !3148
}
