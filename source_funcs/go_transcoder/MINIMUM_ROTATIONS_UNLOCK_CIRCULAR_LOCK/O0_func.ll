define i64 @f_gold(i64 %input, i64 %unlock_code) #1 !dbg !4968 {
entry:
    #dbg_value(i64 %input, !4970, !DIExpression(), !4975)
    #dbg_value(i64 %unlock_code, !4971, !DIExpression(), !4975)
    #dbg_value(i64 0, !4972, !DIExpression(), !4976)
    #dbg_value(i64 0, !4973, !DIExpression(), !4977)
    #dbg_value(i64 0, !4974, !DIExpression(), !4978)
  br label %for.loop, !dbg !4979

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %input, %entry ], [ %26, %for.body ], !dbg !4980
  %1 = phi i64 [ %unlock_code, %entry ], [ %30, %for.body ], !dbg !4981
  %2 = phi i64 [ 0, %entry ], [ %22, %for.body ], !dbg !4976
    #dbg_value(i64 %0, !4970, !DIExpression(), !4982)
  %3 = icmp ne i64 %0, 0, !dbg !4983
  br i1 %3, label %for.body, label %cond.false, !dbg !4979

for.body:                                         ; preds = %cond.false, %for.loop
    #dbg_value(i64 %0, !4970, !DIExpression(), !4984)
  %4 = icmp eq i64 %0, -9223372036854775808, !dbg !4985
  %5 = and i1 false, %4, !dbg !4985
  %6 = select i1 %5, i64 1, i64 10, !dbg !4985
  %7 = srem i64 %0, %6, !dbg !4985
    #dbg_value(i64 %7, !4973, !DIExpression(), !4986)
    #dbg_value(i64 %1, !4971, !DIExpression(), !4987)
  %8 = icmp eq i64 %1, -9223372036854775808, !dbg !4988
  %9 = and i1 false, %8, !dbg !4988
  %10 = select i1 %9, i64 1, i64 10, !dbg !4988
  %11 = srem i64 %1, %10, !dbg !4988
    #dbg_value(i64 %11, !4974, !DIExpression(), !4989)
    #dbg_value(i64 %7, !4973, !DIExpression(), !4990)
    #dbg_value(i64 %11, !4974, !DIExpression(), !4991)
  %12 = sub i64 %7, %11, !dbg !4992
  %13 = sitofp i64 %12 to double, !dbg !4993
  %14 = call double @math.Abs(double %13, ptr undef), !dbg !4994
  %abovemin = fcmp ole double 0xC3E0000000000000, %14, !dbg !4995
  %belowmax = fcmp ole double %14, 0x43DFFFFFFFFFFFFE, !dbg !4995
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4995
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4995
  %isnan = fcmp uno double %14, %14, !dbg !4995
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4995
  %normal = fptosi double %14 to i64, !dbg !4995
  %15 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4995
    #dbg_value(i64 %7, !4973, !DIExpression(), !4996)
    #dbg_value(i64 %11, !4974, !DIExpression(), !4997)
  %16 = sub i64 %7, %11, !dbg !4998
  %17 = sitofp i64 %16 to double, !dbg !4999
  %18 = call double @math.Abs(double %17, ptr undef), !dbg !5000
  %19 = fsub double 1.000000e+01, %18, !dbg !5001
  %abovemin1 = fcmp ole double 0xC3E0000000000000, %19, !dbg !5002
  %belowmax2 = fcmp ole double %19, 0x43DFFFFFFFFFFFFE, !dbg !5002
  %inbounds3 = and i1 %abovemin1, %belowmax2, !dbg !5002
  %saturated4 = select i1 %abovemin1, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5002
  %isnan5 = fcmp uno double %19, %19, !dbg !5002
  %remapped6 = select i1 %isnan5, i64 0, i64 %saturated4, !dbg !5002
  %normal7 = fptosi double %19 to i64, !dbg !5002
  %20 = select i1 %inbounds3, i64 %normal7, i64 %remapped6, !dbg !5002
  %21 = call i64 @main.min(i64 %15, i64 %20, ptr undef), !dbg !5003
  %22 = add i64 %2, %21, !dbg !5004
    #dbg_value(i64 %22, !4972, !DIExpression(), !5004)
  %23 = icmp eq i64 %0, -9223372036854775808, !dbg !5005
  %24 = and i1 false, %23, !dbg !5005
  %25 = select i1 %24, i64 1, i64 10, !dbg !5005
  %26 = sdiv i64 %0, %25, !dbg !5005
    #dbg_value(i64 %26, !4970, !DIExpression(), !5005)
  %27 = icmp eq i64 %1, -9223372036854775808, !dbg !5006
  %28 = and i1 false, %27, !dbg !5006
  %29 = select i1 %28, i64 1, i64 10, !dbg !5006
  %30 = sdiv i64 %1, %29, !dbg !5006
    #dbg_value(i64 %30, !4971, !DIExpression(), !5006)
  br label %for.loop, !dbg !4979

cond.false:                                       ; preds = %for.loop
    #dbg_value(i64 %1, !4971, !DIExpression(), !5007)
  %31 = icmp ne i64 %1, 0, !dbg !5008
  br i1 %31, label %for.body, label %for.done, !dbg !4979

for.done:                                         ; preds = %cond.false
    #dbg_value(i64 %2, !4972, !DIExpression(), !5009)
  ret i64 %2, !dbg !5010
}
