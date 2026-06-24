define i64 @f_gold(i64 %n) #1 !dbg !5432 {
entry:
    #dbg_value(i64 %n, !5435, !DIExpression(), !5437)
    #dbg_value(i64 %n, !5435, !DIExpression(), !5438)
  %0 = sitofp i64 %n to double, !dbg !5439
  %1 = call double @math.Pow(double 3.000000e+00, double %0, ptr undef), !dbg !5440
  %2 = fmul double %1, 2.000000e+00, !dbg !5441
  %3 = fsub double %2, 1.000000e+00, !dbg !5442
  %abovemin = fcmp ole double 0xC3E0000000000000, %3, !dbg !5443
  %belowmax = fcmp ole double %3, 0x43DFFFFFFFFFFFFE, !dbg !5443
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5443
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5443
  %isnan = fcmp uno double %3, %3, !dbg !5443
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5443
  %normal = fptosi double %3 to i64, !dbg !5443
  %4 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5443
    #dbg_value(i64 %4, !5436, !DIExpression(), !5444)
    #dbg_value(i64 %4, !5436, !DIExpression(), !5445)
  ret i64 %4, !dbg !5446
}
