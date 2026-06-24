define i1 @f_gold(i64 %x) #1 !dbg !5432 {
entry:
    #dbg_value(i64 %x, !5435, !DIExpression(), !5439)
    #dbg_value(i64 %x, !5435, !DIExpression(), !5440)
    #dbg_value(i64 %x, !5436, !DIExpression(), !5441)
    #dbg_value(i64 0, !5437, !DIExpression(), !5442)
  br label %for.loop, !dbg !5443

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %x, %entry ], [ %6, %for.body ], !dbg !5444
  %1 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !5442
    #dbg_value(i64 %0, !5435, !DIExpression(), !5445)
  %2 = icmp ne i64 %0, 0, !dbg !5446
  br i1 %2, label %for.body, label %for.done, !dbg !5443

for.body:                                         ; preds = %for.loop
  %3 = icmp eq i64 %0, -9223372036854775808, !dbg !5447
  %4 = and i1 false, %3, !dbg !5447
  %5 = select i1 %4, i64 1, i64 10, !dbg !5447
  %6 = sdiv i64 %0, %5, !dbg !5447
    #dbg_value(i64 %6, !5435, !DIExpression(), !5447)
  %7 = add i64 %1, 1, !dbg !5448
    #dbg_value(i64 %7, !5437, !DIExpression(), !5448)
  br label %for.loop, !dbg !5443

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %x, !5436, !DIExpression(), !5449)
    #dbg_value(i64 %x, !5435, !DIExpression(), !5450)
    #dbg_value(i64 0, !5438, !DIExpression(), !5451)
  br label %for.loop1, !dbg !5443

for.loop1:                                        ; preds = %for.body2, %for.done
  %8 = phi i64 [ %x, %for.done ], [ %23, %for.body2 ], !dbg !5444
  %9 = phi i64 [ 0, %for.done ], [ %19, %for.body2 ], !dbg !5451
    #dbg_value(i64 %8, !5435, !DIExpression(), !5452)
  %10 = icmp ne i64 %8, 0, !dbg !5453
  br i1 %10, label %for.body2, label %for.done3, !dbg !5443

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %8, !5435, !DIExpression(), !5454)
  %11 = icmp eq i64 %8, -9223372036854775808, !dbg !5455
  %12 = and i1 false, %11, !dbg !5455
  %13 = select i1 %12, i64 1, i64 10, !dbg !5455
  %14 = srem i64 %8, %13, !dbg !5455
  %15 = sitofp i64 %14 to double, !dbg !5456
    #dbg_value(i64 %1, !5437, !DIExpression(), !5457)
  %16 = sitofp i64 %1 to double, !dbg !5458
  %17 = call double @math.Pow(double %15, double %16, ptr undef), !dbg !5459
  %abovemin = fcmp ole double 0xC3E0000000000000, %17, !dbg !5460
  %belowmax = fcmp ole double %17, 0x43DFFFFFFFFFFFFE, !dbg !5460
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5460
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5460
  %isnan = fcmp uno double %17, %17, !dbg !5460
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5460
  %normal = fptosi double %17 to i64, !dbg !5460
  %18 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5460
  %19 = add i64 %9, %18, !dbg !5461
    #dbg_value(i64 %19, !5438, !DIExpression(), !5461)
  %20 = icmp eq i64 %8, -9223372036854775808, !dbg !5462
  %21 = and i1 false, %20, !dbg !5462
  %22 = select i1 %21, i64 1, i64 10, !dbg !5462
  %23 = sdiv i64 %8, %22, !dbg !5462
    #dbg_value(i64 %23, !5435, !DIExpression(), !5462)
  br label %for.loop1, !dbg !5443

for.done3:                                        ; preds = %for.loop1
    #dbg_value(i64 %9, !5438, !DIExpression(), !5463)
    #dbg_value(i64 %x, !5436, !DIExpression(), !5464)
  %24 = icmp eq i64 %9, %x, !dbg !5465
  ret i1 %24, !dbg !5466
}
