define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4935)
    #dbg_value(i64 0, !4931, !DIExpression(), !4936)
    #dbg_value(i64 0, !4932, !DIExpression(), !4937)
    #dbg_value(i64 0, !4933, !DIExpression(), !4938)
    #dbg_value(i64 1, !4934, !DIExpression(), !4939)
  br label %for.loop, !dbg !4940

for.loop:                                         ; preds = %for.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %6, %for.done ], !dbg !4936
  %1 = phi i64 [ 0, %entry ], [ %7, %for.done ], !dbg !4937
  %2 = phi i64 [ 1, %entry ], [ %20, %for.done ], !dbg !4939
    #dbg_value(i64 %2, !4934, !DIExpression(), !4941)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4942)
  %3 = icmp sle i64 %2, %n, !dbg !4943
  br i1 %3, label %cond.true, label %for.done3, !dbg !4940

cond.true:                                        ; preds = %for.loop
    #dbg_value(i64 %1, !4932, !DIExpression(), !4944)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4945)
  %4 = icmp slt i64 %1, %n, !dbg !4946
  br i1 %4, label %for.body, label %for.done3, !dbg !4940

for.body:                                         ; preds = %cond.true
    #dbg_value(i64 %2, !4934, !DIExpression(), !4947)
  %5 = sub i64 %2, 1, !dbg !4948
    #dbg_value(i64 %5, !4932, !DIExpression(), !4949)
    #dbg_value(i64 1, !4933, !DIExpression(), !4950)
  br label %for.loop1, !dbg !4940

for.loop1:                                        ; preds = %if.done, %for.body
  %6 = phi i64 [ %0, %for.body ], [ %14, %if.done ], !dbg !4936
  %7 = phi i64 [ %5, %for.body ], [ %15, %if.done ], !dbg !4937
  %8 = phi i64 [ 1, %for.body ], [ %16, %if.done ], !dbg !4938
    #dbg_value(i64 %7, !4932, !DIExpression(), !4951)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4952)
  %9 = icmp slt i64 %7, %n, !dbg !4953
  br i1 %9, label %for.body2, label %for.done, !dbg !4940

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %7, !4932, !DIExpression(), !4954)
    #dbg_value(i64 %2, !4934, !DIExpression(), !4955)
  %10 = add i64 %7, %2, !dbg !4956
    #dbg_value(i64 %n, !4930, !DIExpression(), !4957)
  %11 = icmp sle i64 %10, %n, !dbg !4958
  br i1 %11, label %if.then, label %if.else, !dbg !4940

if.then:                                          ; preds = %for.body2
    #dbg_value(i64 %2, !4934, !DIExpression(), !4959)
    #dbg_value(i64 %8, !4933, !DIExpression(), !4960)
  %12 = mul i64 %2, %8, !dbg !4961
  %13 = add i64 %6, %12, !dbg !4962
    #dbg_value(i64 %13, !4931, !DIExpression(), !4962)
  br label %if.done, !dbg !4940

if.done:                                          ; preds = %if.else, %if.then
  %14 = phi i64 [ %13, %if.then ], [ %19, %if.else ], !dbg !4936
    #dbg_value(i64 %2, !4934, !DIExpression(), !4963)
  %15 = add i64 %7, %2, !dbg !4964
    #dbg_value(i64 %15, !4932, !DIExpression(), !4964)
  %16 = add i64 %8, 1, !dbg !4965
    #dbg_value(i64 %16, !4933, !DIExpression(), !4965)
  br label %for.loop1, !dbg !4940

if.else:                                          ; preds = %for.body2
    #dbg_value(i64 %n, !4930, !DIExpression(), !4966)
    #dbg_value(i64 %7, !4932, !DIExpression(), !4967)
  %17 = sub i64 %n, %7, !dbg !4968
    #dbg_value(i64 %8, !4933, !DIExpression(), !4969)
  %18 = mul i64 %17, %8, !dbg !4970
  %19 = add i64 %6, %18, !dbg !4971
    #dbg_value(i64 %19, !4931, !DIExpression(), !4971)
  br label %if.done, !dbg !4940

for.done:                                         ; preds = %for.loop1
  %20 = add i64 %2, 1, !dbg !4972
    #dbg_value(i64 %20, !4934, !DIExpression(), !4972)
  br label %for.loop, !dbg !4940

for.done3:                                        ; preds = %cond.true, %for.loop
    #dbg_value(i64 %0, !4931, !DIExpression(), !4973)
  ret i64 %0, !dbg !4974
}
