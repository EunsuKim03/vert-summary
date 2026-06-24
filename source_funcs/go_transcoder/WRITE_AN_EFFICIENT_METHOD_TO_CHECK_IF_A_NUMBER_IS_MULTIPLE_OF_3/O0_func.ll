define i64 @f_gold(i64 %n) #1 !dbg !4952 {
entry:
    #dbg_value(i64 %n, !4955, !DIExpression(), !4958)
    #dbg_value(i64 0, !4956, !DIExpression(), !4959)
    #dbg_value(i64 0, !4957, !DIExpression(), !4960)
    #dbg_value(i64 %n, !4955, !DIExpression(), !4961)
  %0 = icmp slt i64 %n, 0, !dbg !4962
  br i1 %0, label %if.then, label %if.done, !dbg !4963

if.then:                                          ; preds = %entry
    #dbg_value(i64 %n, !4955, !DIExpression(), !4964)
  %1 = sub i64 0, %n, !dbg !4965
    #dbg_value(i64 %1, !4955, !DIExpression(), !4966)
  br label %if.done, !dbg !4963

if.done:                                          ; preds = %if.then, %entry
  %2 = phi i64 [ %n, %entry ], [ %1, %if.then ], !dbg !4967
    #dbg_value(i64 %2, !4955, !DIExpression(), !4968)
  %3 = icmp eq i64 %2, 0, !dbg !4969
  br i1 %3, label %if.then1, label %if.done2, !dbg !4963

if.then1:                                         ; preds = %if.done
  ret i64 1, !dbg !4970

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %2, !4955, !DIExpression(), !4971)
  %4 = icmp eq i64 %2, 1, !dbg !4972
  br i1 %4, label %if.then3, label %for.loop, !dbg !4963

if.then3:                                         ; preds = %if.done2
  ret i64 0, !dbg !4973

for.loop:                                         ; preds = %if.done7, %if.done2
  %5 = phi i64 [ %2, %if.done2 ], [ %17, %if.done7 ], !dbg !4967
  %6 = phi i64 [ 0, %if.done2 ], [ %12, %if.done7 ], !dbg !4959
  %7 = phi i64 [ 0, %if.done2 ], [ %16, %if.done7 ], !dbg !4960
    #dbg_value(i64 %5, !4955, !DIExpression(), !4974)
  %8 = icmp ne i64 %5, 0, !dbg !4975
  br i1 %8, label %for.body, label %for.done, !dbg !4963

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4955, !DIExpression(), !4976)
  %9 = and i64 %5, 1, !dbg !4977
  %10 = icmp ne i64 %9, 0, !dbg !4978
  br i1 %10, label %if.then4, label %if.done5, !dbg !4963

if.then4:                                         ; preds = %for.body
  %11 = add i64 %6, 1, !dbg !4979
    #dbg_value(i64 %11, !4956, !DIExpression(), !4979)
  br label %if.done5, !dbg !4963

if.done5:                                         ; preds = %if.then4, %for.body
  %12 = phi i64 [ %6, %for.body ], [ %11, %if.then4 ], !dbg !4959
    #dbg_value(i64 %5, !4955, !DIExpression(), !4980)
  %13 = and i64 %5, 2, !dbg !4981
  %14 = icmp ne i64 %13, 0, !dbg !4982
  br i1 %14, label %if.then6, label %if.done7, !dbg !4963

if.then6:                                         ; preds = %if.done5
  %15 = add i64 %7, 1, !dbg !4983
    #dbg_value(i64 %15, !4957, !DIExpression(), !4983)
  br label %if.done7, !dbg !4963

if.done7:                                         ; preds = %if.then6, %if.done5
  %16 = phi i64 [ %7, %if.done5 ], [ %15, %if.then6 ], !dbg !4960
    #dbg_value(i64 %5, !4955, !DIExpression(), !4984)
  %17 = ashr i64 %5, 2, !dbg !4985
    #dbg_value(i64 %17, !4955, !DIExpression(), !4986)
  br label %for.loop, !dbg !4963

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !4956, !DIExpression(), !4987)
    #dbg_value(i64 %7, !4957, !DIExpression(), !4988)
  %18 = sub i64 %6, %7, !dbg !4989
  %19 = sitofp i64 %18 to double, !dbg !4990
  %20 = call double @math.Abs(double %19, ptr undef), !dbg !4991
  %abovemin = fcmp ole double 0xC3E0000000000000, %20, !dbg !4992
  %belowmax = fcmp ole double %20, 0x43DFFFFFFFFFFFFE, !dbg !4992
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4992
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4992
  %isnan = fcmp uno double %20, %20, !dbg !4992
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4992
  %normal = fptosi double %20 to i64, !dbg !4992
  %21 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4992
  %22 = call i64 @f_gold(i64 %21), !dbg !4993
  ret i64 %22, !dbg !4994
}
