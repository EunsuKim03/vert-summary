define i64 @f_gold(i64 %low, i64 %high) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %low, !4932, !DIExpression(), !4938)
    #dbg_value(i64 %high, !4933, !DIExpression(), !4938)
    #dbg_value(i64 0, !4934, !DIExpression(), !4939)
    #dbg_value(i64 1, !4935, !DIExpression(), !4940)
    #dbg_value(i64 1, !4936, !DIExpression(), !4941)
    #dbg_value(i64 0, !4937, !DIExpression(), !4942)
  br label %for.loop, !dbg !4943

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %1, %if.done ], !dbg !4939
  %1 = phi i64 [ 1, %entry ], [ %2, %if.done ], !dbg !4940
  %2 = phi i64 [ 1, %entry ], [ %8, %if.done ], !dbg !4941
  %3 = phi i64 [ 0, %entry ], [ %7, %if.done ], !dbg !4942
    #dbg_value(i64 %0, !4934, !DIExpression(), !4944)
    #dbg_value(i64 %high, !4933, !DIExpression(), !4945)
  %4 = icmp sle i64 %0, %high, !dbg !4946
  br i1 %4, label %for.body, label %for.done, !dbg !4943

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4934, !DIExpression(), !4947)
    #dbg_value(i64 %low, !4932, !DIExpression(), !4948)
  %5 = icmp sge i64 %0, %low, !dbg !4949
  br i1 %5, label %if.then, label %if.done, !dbg !4943

if.then:                                          ; preds = %for.body
  %6 = add i64 %3, 1, !dbg !4950
    #dbg_value(i64 %6, !4937, !DIExpression(), !4950)
  br label %if.done, !dbg !4943

if.done:                                          ; preds = %if.then, %for.body
  %7 = phi i64 [ %3, %for.body ], [ %6, %if.then ], !dbg !4942
    #dbg_value(i64 %1, !4935, !DIExpression(), !4951)
    #dbg_value(i64 %1, !4934, !DIExpression(), !4952)
    #dbg_value(i64 %2, !4936, !DIExpression(), !4953)
    #dbg_value(i64 %2, !4935, !DIExpression(), !4954)
    #dbg_value(i64 %1, !4934, !DIExpression(), !4955)
    #dbg_value(i64 %2, !4935, !DIExpression(), !4956)
  %8 = add i64 %1, %2, !dbg !4957
    #dbg_value(i64 %8, !4936, !DIExpression(), !4958)
  br label %for.loop, !dbg !4943

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4937, !DIExpression(), !4959)
  ret i64 %3, !dbg !4960
}
