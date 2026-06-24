define i64 @f_gold(ptr nocapture readnone %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #10 !dbg !3021 {
entry:
    #dbg_value(ptr %a.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3032)
    #dbg_value(i64 %a.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3032)
    #dbg_value(i64 %a.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3032)
    #dbg_value(i64 %n, !3031, !DIExpression(), !3032)
    #dbg_value(i64 %n, !3031, !DIExpression(), !3033)
  %0 = shl i64 %n, 3, !dbg !3034
  %1 = or disjoint i64 %0, 1, !dbg !3035
  %2 = sitofp i64 %1 to double, !dbg !3036
    #dbg_value(double %2, !3037, !DIExpression(), !3043)
  %3 = tail call double @llvm.sqrt.f64(double %2), !dbg !3043
  %4 = fadd double %3, -1.000000e+00, !dbg !3045
  %5 = fmul double %4, 5.000000e-01, !dbg !3046
    #dbg_value(double %5, !3047, !DIExpression(), !3051)
  %6 = tail call double @llvm.floor.f64(double %5), !dbg !3051
  %abovemin = fcmp oge double %6, 0xC3E0000000000000, !dbg !3053
  %belowmax = fcmp ole double %6, 0x43DFFFFFFFFFFFFE, !dbg !3053
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3053
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3053
  %isnan = fcmp uno double %6, 0.000000e+00, !dbg !3053
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3053
  %normal = fptosi double %6 to i64, !dbg !3053
  %7 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3053
  ret i64 %7, !dbg !3054
}
