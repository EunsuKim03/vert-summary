define i64 @f_gold(i64 %a, i64 %b) #1 !dbg !4952 {
entry:
    #dbg_value(i64 %a, !4957, !DIExpression(), !4961)
    #dbg_value(i64 %b, !4958, !DIExpression(), !4961)
    #dbg_value(i64 0, !4959, !DIExpression(), !4962)
    #dbg_value(i64 %a, !4957, !DIExpression(), !4963)
    #dbg_value(i64 %b, !4958, !DIExpression(), !4964)
  %0 = mul i64 %a, %b, !dbg !4965
  %1 = sitofp i64 %0 to double, !dbg !4966
  %2 = call double @math.Abs(double %1, ptr undef), !dbg !4967
  %abovemin = fcmp ole double 0xC3E0000000000000, %2, !dbg !4968
  %belowmax = fcmp ole double %2, 0x43DFFFFFFFFFFFFE, !dbg !4968
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4968
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4968
  %isnan = fcmp uno double %2, %2, !dbg !4968
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4968
  %normal = fptosi double %2 to i64, !dbg !4968
  %3 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4968
    #dbg_value(i64 %3, !4960, !DIExpression(), !4969)
    #dbg_value(i64 %3, !4960, !DIExpression(), !4970)
  %4 = icmp eq i64 %3, 0, !dbg !4971
  br i1 %4, label %if.then, label %for.loop, !dbg !4972

if.then:                                          ; preds = %entry
  ret i64 1, !dbg !4973

for.loop:                                         ; preds = %for.body, %entry
  %5 = phi i64 [ 0, %entry ], [ %8, %for.body ], !dbg !4962
  %6 = phi i64 [ %3, %entry ], [ %12, %for.body ], !dbg !4969
    #dbg_value(i64 %6, !4960, !DIExpression(), !4974)
  %7 = icmp sgt i64 %6, 0, !dbg !4975
  br i1 %7, label %for.body, label %for.done, !dbg !4972

for.body:                                         ; preds = %for.loop
  %8 = add i64 %5, 1, !dbg !4976
    #dbg_value(i64 %8, !4959, !DIExpression(), !4976)
    #dbg_value(i64 %6, !4960, !DIExpression(), !4977)
  %9 = icmp eq i64 %6, -9223372036854775808, !dbg !4978
  %10 = and i1 false, %9, !dbg !4978
  %11 = select i1 %10, i64 1, i64 10, !dbg !4978
  %12 = sdiv i64 %6, %11, !dbg !4978
    #dbg_value(i64 %12, !4960, !DIExpression(), !4979)
  br label %for.loop, !dbg !4972

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4959, !DIExpression(), !4980)
  ret i64 %5, !dbg !4981
}
