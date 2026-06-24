define i64 @f_gold(i64 %N) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %N, !4930, !DIExpression(), !4937)
    #dbg_value(i64 %N, !4930, !DIExpression(), !4938)
  %0 = icmp eq i64 %N, 1, !dbg !4939
  br i1 %0, label %if.then, label %if.done, !dbg !4940

if.then:                                          ; preds = %entry
  ret i64 4, !dbg !4941

if.done:                                          ; preds = %entry
    #dbg_value(i64 1, !4931, !DIExpression(), !4942)
    #dbg_value(i64 1, !4932, !DIExpression(), !4943)
    #dbg_value(i64 0, !4933, !DIExpression(), !4944)
    #dbg_value(i64 0, !4934, !DIExpression(), !4945)
    #dbg_value(i64 2, !4935, !DIExpression(), !4946)
  br label %for.loop, !dbg !4940

for.loop:                                         ; preds = %for.body, %if.done
  %1 = phi i64 [ 1, %if.done ], [ %2, %for.body ], !dbg !4942
  %2 = phi i64 [ 1, %if.done ], [ %5, %for.body ], !dbg !4943
  %3 = phi i64 [ 2, %if.done ], [ %6, %for.body ], !dbg !4946
    #dbg_value(i64 %3, !4935, !DIExpression(), !4947)
    #dbg_value(i64 %N, !4930, !DIExpression(), !4948)
  %4 = icmp sle i64 %3, %N, !dbg !4949
  br i1 %4, label %for.body, label %for.done, !dbg !4940

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4931, !DIExpression(), !4950)
    #dbg_value(i64 %1, !4933, !DIExpression(), !4951)
    #dbg_value(i64 %2, !4932, !DIExpression(), !4952)
    #dbg_value(i64 %2, !4934, !DIExpression(), !4953)
    #dbg_value(i64 %1, !4933, !DIExpression(), !4954)
    #dbg_value(i64 %2, !4934, !DIExpression(), !4955)
  %5 = add i64 %1, %2, !dbg !4956
    #dbg_value(i64 %5, !4932, !DIExpression(), !4957)
    #dbg_value(i64 %2, !4934, !DIExpression(), !4958)
    #dbg_value(i64 %2, !4931, !DIExpression(), !4959)
  %6 = add i64 %3, 1, !dbg !4960
    #dbg_value(i64 %6, !4935, !DIExpression(), !4960)
  br label %for.loop, !dbg !4940

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !4932, !DIExpression(), !4961)
    #dbg_value(i64 %1, !4931, !DIExpression(), !4962)
  %7 = add i64 %2, %1, !dbg !4963
    #dbg_value(i64 %7, !4936, !DIExpression(), !4964)
    #dbg_value(i64 %7, !4936, !DIExpression(), !4965)
    #dbg_value(i64 %7, !4936, !DIExpression(), !4966)
  %8 = mul i64 %7, %7, !dbg !4967
  ret i64 %8, !dbg !4968
}
