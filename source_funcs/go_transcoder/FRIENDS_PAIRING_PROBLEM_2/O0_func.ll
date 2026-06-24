define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4935)
    #dbg_value(i64 1, !4931, !DIExpression(), !4936)
    #dbg_value(i64 2, !4932, !DIExpression(), !4937)
    #dbg_value(i64 0, !4933, !DIExpression(), !4938)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4939)
  %0 = icmp sle i64 %n, 2, !dbg !4940
  br i1 %0, label %if.then, label %if.done, !dbg !4941

if.then:                                          ; preds = %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4942)
  ret i64 %n, !dbg !4943

if.done:                                          ; preds = %entry
    #dbg_value(i64 3, !4934, !DIExpression(), !4944)
  br label %for.loop, !dbg !4941

for.loop:                                         ; preds = %for.body, %if.done
  %1 = phi i64 [ 1, %if.done ], [ %2, %for.body ], !dbg !4936
  %2 = phi i64 [ 2, %if.done ], [ %8, %for.body ], !dbg !4937
  %3 = phi i64 [ 0, %if.done ], [ %8, %for.body ], !dbg !4938
  %4 = phi i64 [ 3, %if.done ], [ %9, %for.body ], !dbg !4944
    #dbg_value(i64 %4, !4934, !DIExpression(), !4945)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4946)
  %5 = icmp sle i64 %4, %n, !dbg !4947
  br i1 %5, label %for.body, label %for.done, !dbg !4941

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !4932, !DIExpression(), !4948)
    #dbg_value(i64 %4, !4934, !DIExpression(), !4949)
  %6 = sub i64 %4, 1, !dbg !4950
    #dbg_value(i64 %1, !4931, !DIExpression(), !4951)
  %7 = mul i64 %6, %1, !dbg !4952
  %8 = add i64 %2, %7, !dbg !4953
    #dbg_value(i64 %8, !4933, !DIExpression(), !4954)
    #dbg_value(i64 %2, !4932, !DIExpression(), !4955)
    #dbg_value(i64 %2, !4931, !DIExpression(), !4956)
    #dbg_value(i64 %8, !4933, !DIExpression(), !4957)
    #dbg_value(i64 %8, !4932, !DIExpression(), !4958)
  %9 = add i64 %4, 1, !dbg !4959
    #dbg_value(i64 %9, !4934, !DIExpression(), !4959)
  br label %for.loop, !dbg !4941

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4933, !DIExpression(), !4960)
  ret i64 %3, !dbg !4961
}
