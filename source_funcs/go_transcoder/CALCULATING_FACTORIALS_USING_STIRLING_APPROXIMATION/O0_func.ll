define i64 @f_gold(i64 %n) #1 !dbg !5432 {
entry:
    #dbg_value(i64 %n, !5435, !DIExpression(), !5438)
    #dbg_value(i64 %n, !5435, !DIExpression(), !5439)
  %0 = icmp eq i64 %n, 1, !dbg !5440
  br i1 %0, label %if.then, label %if.done, !dbg !5441

if.then:                                          ; preds = %entry
  ret i64 1, !dbg !5442

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !5436, !DIExpression(), !5443)
    #dbg_value(float 0x4005AE1480000000, !5437, !DIExpression(), !5444)
    #dbg_value(i64 %n, !5435, !DIExpression(), !5445)
  %1 = sitofp i64 %n to double, !dbg !5446
  %2 = fmul double %1, 6.280000e+00, !dbg !5447
  %3 = call double @math.Sqrt(double %2, ptr undef), !dbg !5448
    #dbg_value(i64 %n, !5435, !DIExpression(), !5449)
  %4 = sitofp i64 %n to float, !dbg !5450
    #dbg_value(float 0x4005AE1480000000, !5437, !DIExpression(), !5451)
  %5 = fdiv float %4, 0x4005AE1480000000, !dbg !5452
  %6 = fpext float %5 to double, !dbg !5453
    #dbg_value(i64 %n, !5435, !DIExpression(), !5454)
  %7 = sitofp i64 %n to double, !dbg !5455
  %8 = call double @math.Pow(double %6, double %7, ptr undef), !dbg !5456
  %9 = fmul double %3, %8, !dbg !5457
  %abovemin = fcmp ole double 0xC3E0000000000000, %9, !dbg !5458
  %belowmax = fcmp ole double %9, 0x43DFFFFFFFFFFFFE, !dbg !5458
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5458
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5458
  %isnan = fcmp uno double %9, %9, !dbg !5458
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5458
  %normal = fptosi double %9 to i64, !dbg !5458
  %10 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5458
    #dbg_value(i64 %10, !5436, !DIExpression(), !5459)
    #dbg_value(i64 %10, !5436, !DIExpression(), !5460)
  ret i64 %10, !dbg !5461
}
