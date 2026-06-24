define i64 @f_gold(ptr nocapture readnone %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #10 !dbg !3105 {
entry:
    #dbg_value(ptr %a.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3116)
    #dbg_value(i64 %a.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3116)
    #dbg_value(i64 %a.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3116)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3116)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3117)
  %0 = shl i64 %n, 3, !dbg !3118
  %1 = or disjoint i64 %0, 1, !dbg !3119
  %2 = sitofp i64 %1 to double, !dbg !3120
    #dbg_value(double %2, !3121, !DIExpression(), !3127)
  %3 = call double @llvm.sqrt.f64(double %2), !dbg !3127
  %4 = fadd double %3, -1.000000e+00, !dbg !3129
  %5 = fmul double %4, 5.000000e-01, !dbg !3130
    #dbg_value(double %5, !3131, !DIExpression(), !3135)
  %6 = call double @llvm.floor.f64(double %5), !dbg !3135
  %abovemin = fcmp oge double %6, 0xC3E0000000000000, !dbg !3137
  %belowmax = fcmp ole double %6, 0x43DFFFFFFFFFFFFE, !dbg !3137
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3137
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3137
  %isnan = fcmp uno double %6, 0.000000e+00, !dbg !3137
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3137
  %normal = fptosi double %6 to i64, !dbg !3137
  %7 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3137
  ret i64 %7, !dbg !3138
}
