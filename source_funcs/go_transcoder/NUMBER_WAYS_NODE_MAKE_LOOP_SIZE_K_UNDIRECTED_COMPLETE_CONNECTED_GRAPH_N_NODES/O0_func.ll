define i64 @f_gold(i64 %n, i64 %k) #1 !dbg !5432 {
entry:
    #dbg_value(i64 %n, !5437, !DIExpression(), !5440)
    #dbg_value(i64 %k, !5438, !DIExpression(), !5440)
    #dbg_value(i64 1, !5439, !DIExpression(), !5441)
    #dbg_value(i64 %k, !5438, !DIExpression(), !5442)
  %0 = icmp eq i64 %k, -9223372036854775808, !dbg !5443
  %1 = and i1 false, %0, !dbg !5443
  %2 = select i1 %1, i64 1, i64 2, !dbg !5443
  %3 = srem i64 %k, %2, !dbg !5443
  %4 = icmp ne i64 %3, 0, !dbg !5444
  br i1 %4, label %if.then, label %if.done, !dbg !5445

if.then:                                          ; preds = %entry
    #dbg_value(i64 -1, !5439, !DIExpression(), !5446)
  br label %if.done, !dbg !5445

if.done:                                          ; preds = %if.then, %entry
  %5 = phi i64 [ 1, %entry ], [ -1, %if.then ], !dbg !5441
    #dbg_value(i64 %n, !5437, !DIExpression(), !5447)
  %6 = sub i64 %n, 1, !dbg !5448
  %7 = sitofp i64 %6 to double, !dbg !5449
    #dbg_value(i64 %k, !5438, !DIExpression(), !5450)
  %8 = sitofp i64 %k to double, !dbg !5451
  %9 = call double @math.Pow(double %7, double %8, ptr undef), !dbg !5452
    #dbg_value(i64 %5, !5439, !DIExpression(), !5453)
    #dbg_value(i64 %n, !5437, !DIExpression(), !5454)
  %10 = sub i64 %n, 1, !dbg !5455
  %11 = mul i64 %5, %10, !dbg !5456
  %12 = sitofp i64 %11 to double, !dbg !5457
  %13 = fadd double %9, %12, !dbg !5458
    #dbg_value(i64 %n, !5437, !DIExpression(), !5459)
  %14 = sitofp i64 %n to double, !dbg !5460
  %15 = fdiv double %13, %14, !dbg !5461
  %abovemin = fcmp ole double 0xC3E0000000000000, %15, !dbg !5462
  %belowmax = fcmp ole double %15, 0x43DFFFFFFFFFFFFE, !dbg !5462
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5462
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5462
  %isnan = fcmp uno double %15, %15, !dbg !5462
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5462
  %normal = fptosi double %15 to i64, !dbg !5462
  %16 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5462
  ret i64 %16, !dbg !5463
}
