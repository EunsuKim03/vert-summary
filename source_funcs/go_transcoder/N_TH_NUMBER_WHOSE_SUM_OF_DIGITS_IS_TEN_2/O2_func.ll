define i64 @f_gold(i64 %n) local_unnamed_addr #10 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
  %0 = mul i64 %n, 9, !dbg !3031
  %1 = add i64 %0, 10, !dbg !3032
    #dbg_value(i64 %1, !3027, !DIExpression(), !3033)
    #dbg_value(i64 %1, !3027, !DIExpression(), !3034)
  %2 = sitofp i64 %1 to double, !dbg !3035
    #dbg_value(double %2, !3036, !DIExpression(), !3042)
    #dbg_value(double %2, !3036, !DIExpression(), !3044)
    #dbg_value(double %2, !3045, !DIExpression(), !3048)
    #dbg_value(double %2, !3045, !DIExpression(), !3050)
    #dbg_value(double %2, !3051, !DIExpression(), !3055)
  %3 = tail call double @llvm.log.f64(double %2), !dbg !3055
  %4 = fmul double %3, 0x3FDBCB7B1526E50E, !dbg !3057
  %abovemin = fcmp oge double %4, 0xC3E0000000000000, !dbg !3058
  %belowmax = fcmp ole double %4, 0x43DFFFFFFFFFFFFE, !dbg !3058
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3058
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3058
  %isnan = fcmp uno double %4, 0.000000e+00, !dbg !3058
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3058
  %normal = fptosi double %4 to i64, !dbg !3058
  %5 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3058
    #dbg_value(i64 %5, !3028, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3059)
    #dbg_value(i64 %5, !3028, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3060)
  %6 = mul i64 %5, 9, !dbg !3061
  %7 = add i64 %0, 1, !dbg !3061
  %8 = add i64 %7, %6, !dbg !3062
    #dbg_value(i64 %8, !3027, !DIExpression(), !3062)
    #dbg_value(i64 %8, !3027, !DIExpression(), !3063)
  ret i64 %8, !dbg !3064
}
