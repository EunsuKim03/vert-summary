define i64 @f_gold(i64 %a, i64 %b, i64 %k) #1 !dbg !5432 {
entry:
    #dbg_value(i64 %a, !5437, !DIExpression(), !5443)
    #dbg_value(i64 %b, !5438, !DIExpression(), !5443)
    #dbg_value(i64 %k, !5439, !DIExpression(), !5443)
    #dbg_value(i64 %a, !5437, !DIExpression(), !5444)
  %0 = sitofp i64 %a to double, !dbg !5445
    #dbg_value(i64 %b, !5438, !DIExpression(), !5446)
  %1 = sitofp i64 %b to double, !dbg !5447
  %2 = call double @math.Pow(double %0, double %1, ptr undef), !dbg !5448
  %abovemin = fcmp ole double 0xC3E0000000000000, %2, !dbg !5449
  %belowmax = fcmp ole double %2, 0x43DFFFFFFFFFFFFE, !dbg !5449
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5449
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5449
  %isnan = fcmp uno double %2, %2, !dbg !5449
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5449
  %normal = fptosi double %2 to i64, !dbg !5449
  %3 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5449
    #dbg_value(i64 %3, !5440, !DIExpression(), !5450)
    #dbg_value(i64 0, !5441, !DIExpression(), !5451)
  br label %for.loop, !dbg !5452

for.loop:                                         ; preds = %if.done, %entry
  %4 = phi i64 [ %3, %entry ], [ %17, %if.done ], !dbg !5450
  %5 = phi i64 [ 0, %entry ], [ %12, %if.done ], !dbg !5451
    #dbg_value(i64 %4, !5440, !DIExpression(), !5453)
  %6 = icmp sgt i64 %4, 0, !dbg !5454
  br i1 %6, label %cond.true, label %for.done, !dbg !5452

cond.true:                                        ; preds = %for.loop
    #dbg_value(i64 %5, !5441, !DIExpression(), !5455)
    #dbg_value(i64 %k, !5439, !DIExpression(), !5456)
  %7 = icmp slt i64 %5, %k, !dbg !5457
  br i1 %7, label %for.body, label %for.done, !dbg !5452

for.body:                                         ; preds = %cond.true
    #dbg_value(i64 %4, !5440, !DIExpression(), !5458)
  %8 = icmp eq i64 %4, -9223372036854775808, !dbg !5459
  %9 = and i1 false, %8, !dbg !5459
  %10 = select i1 %9, i64 1, i64 10, !dbg !5459
  %11 = srem i64 %4, %10, !dbg !5459
    #dbg_value(i64 %11, !5442, !DIExpression(), !5460)
  %12 = add i64 %5, 1, !dbg !5461
    #dbg_value(i64 %12, !5441, !DIExpression(), !5461)
    #dbg_value(i64 %12, !5441, !DIExpression(), !5462)
    #dbg_value(i64 %k, !5439, !DIExpression(), !5463)
  %13 = icmp eq i64 %12, %k, !dbg !5464
  br i1 %13, label %if.then, label %if.done, !dbg !5452

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %11, !5442, !DIExpression(), !5465)
  ret i64 %11, !dbg !5466

if.done:                                          ; preds = %for.body
    #dbg_value(i64 %4, !5440, !DIExpression(), !5467)
  %14 = icmp eq i64 %4, -9223372036854775808, !dbg !5468
  %15 = and i1 false, %14, !dbg !5468
  %16 = select i1 %15, i64 1, i64 10, !dbg !5468
  %17 = sdiv i64 %4, %16, !dbg !5468
    #dbg_value(i64 %17, !5440, !DIExpression(), !5469)
  br label %for.loop, !dbg !5452

for.done:                                         ; preds = %cond.true, %for.loop
  ret i64 0, !dbg !5470
}
