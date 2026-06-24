define i64 @f_gold(i64 %x, i64 %y) #1 !dbg !5432 {
entry:
    #dbg_value(i64 %x, !5437, !DIExpression(), !5439)
    #dbg_value(i64 %y, !5438, !DIExpression(), !5439)
    #dbg_value(i64 %x, !5437, !DIExpression(), !5440)
  %0 = icmp eq i64 %x, -9223372036854775808, !dbg !5441
  %1 = and i1 false, %0, !dbg !5441
  %2 = select i1 %1, i64 1, i64 10, !dbg !5441
  %3 = srem i64 %x, %2, !dbg !5441
    #dbg_value(i64 %3, !5437, !DIExpression(), !5442)
    #dbg_value(i64 %y, !5438, !DIExpression(), !5443)
  %4 = icmp ne i64 %y, 0, !dbg !5444
  br i1 %4, label %if.then, label %if.done, !dbg !5445

if.then:                                          ; preds = %entry
    #dbg_value(i64 %y, !5438, !DIExpression(), !5446)
  %5 = icmp eq i64 %y, -9223372036854775808, !dbg !5447
  %6 = and i1 false, %5, !dbg !5447
  %7 = select i1 %6, i64 1, i64 4, !dbg !5447
  %8 = srem i64 %y, %7, !dbg !5447
  %9 = add i64 %8, 4, !dbg !5448
    #dbg_value(i64 %9, !5438, !DIExpression(), !5449)
  br label %if.done, !dbg !5445

if.done:                                          ; preds = %if.then, %entry
  %10 = phi i64 [ %y, %entry ], [ %9, %if.then ], !dbg !5450
    #dbg_value(i64 %3, !5437, !DIExpression(), !5451)
  %11 = sitofp i64 %3 to double, !dbg !5452
    #dbg_value(i64 %10, !5438, !DIExpression(), !5453)
  %12 = sitofp i64 %10 to double, !dbg !5454
  %13 = call double @math.Pow(double %11, double %12, ptr undef), !dbg !5455
  %abovemin = fcmp ole double 0xC3E0000000000000, %13, !dbg !5456
  %belowmax = fcmp ole double %13, 0x43DFFFFFFFFFFFFE, !dbg !5456
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5456
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5456
  %isnan = fcmp uno double %13, %13, !dbg !5456
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5456
  %normal = fptosi double %13 to i64, !dbg !5456
  %14 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5456
  %15 = icmp eq i64 %14, -9223372036854775808, !dbg !5457
  %16 = and i1 false, %15, !dbg !5457
  %17 = select i1 %16, i64 1, i64 10, !dbg !5457
  %18 = srem i64 %14, %17, !dbg !5457
  ret i64 %18, !dbg !5458
}
