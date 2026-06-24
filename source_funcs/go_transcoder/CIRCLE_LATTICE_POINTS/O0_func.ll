define i64 @f_gold(i64 %r) #1 !dbg !4932 {
entry:
    #dbg_value(i64 %r, !4935, !DIExpression(), !4940)
    #dbg_value(i64 %r, !4935, !DIExpression(), !4941)
  %0 = icmp sle i64 %r, 0, !dbg !4942
  br i1 %0, label %if.then, label %if.done, !dbg !4943

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4944

if.done:                                          ; preds = %entry
    #dbg_value(i64 4, !4936, !DIExpression(), !4945)
    #dbg_value(i64 1, !4937, !DIExpression(), !4946)
  br label %for.loop, !dbg !4943

for.loop:                                         ; preds = %if.done2, %if.done
  %1 = phi i64 [ 4, %if.done ], [ %13, %if.done2 ], !dbg !4945
  %2 = phi i64 [ 1, %if.done ], [ %14, %if.done2 ], !dbg !4946
    #dbg_value(i64 %2, !4937, !DIExpression(), !4947)
    #dbg_value(i64 %r, !4935, !DIExpression(), !4948)
  %3 = icmp slt i64 %2, %r, !dbg !4949
  br i1 %3, label %for.body, label %for.done, !dbg !4943

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %r, !4935, !DIExpression(), !4950)
    #dbg_value(i64 %r, !4935, !DIExpression(), !4951)
  %4 = mul i64 %r, %r, !dbg !4952
    #dbg_value(i64 %2, !4937, !DIExpression(), !4953)
    #dbg_value(i64 %2, !4937, !DIExpression(), !4954)
  %5 = mul i64 %2, %2, !dbg !4955
  %6 = sub i64 %4, %5, !dbg !4956
    #dbg_value(i64 %6, !4938, !DIExpression(), !4957)
    #dbg_value(i64 %6, !4938, !DIExpression(), !4958)
  %7 = sitofp i64 %6 to double, !dbg !4959
  %8 = call double @math.Sqrt(double %7, ptr undef), !dbg !4960
  %abovemin = fcmp ole double 0xC3E0000000000000, %8, !dbg !4961
  %belowmax = fcmp ole double %8, 0x43DFFFFFFFFFFFFE, !dbg !4961
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4961
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4961
  %isnan = fcmp uno double %8, %8, !dbg !4961
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4961
  %normal = fptosi double %8 to i64, !dbg !4961
  %9 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4961
    #dbg_value(i64 %9, !4939, !DIExpression(), !4962)
    #dbg_value(i64 %9, !4939, !DIExpression(), !4963)
    #dbg_value(i64 %9, !4939, !DIExpression(), !4964)
  %10 = mul i64 %9, %9, !dbg !4965
    #dbg_value(i64 %6, !4938, !DIExpression(), !4966)
  %11 = icmp eq i64 %10, %6, !dbg !4967
  br i1 %11, label %if.then1, label %if.done2, !dbg !4943

if.then1:                                         ; preds = %for.body
  %12 = add i64 %1, 4, !dbg !4968
    #dbg_value(i64 %12, !4936, !DIExpression(), !4968)
  br label %if.done2, !dbg !4943

if.done2:                                         ; preds = %if.then1, %for.body
  %13 = phi i64 [ %1, %for.body ], [ %12, %if.then1 ], !dbg !4945
  %14 = add i64 %2, 1, !dbg !4969
    #dbg_value(i64 %14, !4937, !DIExpression(), !4969)
  br label %for.loop, !dbg !4943

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4936, !DIExpression(), !4970)
  ret i64 %1, !dbg !4971
}
