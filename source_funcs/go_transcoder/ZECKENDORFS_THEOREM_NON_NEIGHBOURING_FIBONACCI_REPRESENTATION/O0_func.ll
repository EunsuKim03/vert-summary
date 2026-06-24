define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4935)
  %0 = icmp eq i64 %n, 0, !dbg !4936
  br i1 %0, label %if.then, label %cond.false, !dbg !4937

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4938)
  ret i64 %n, !dbg !4939

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4940)
  %1 = icmp eq i64 %n, 1, !dbg !4941
  br i1 %1, label %if.then, label %if.done, !dbg !4937

if.done:                                          ; preds = %cond.false
    #dbg_value(i64 0, !4931, !DIExpression(), !4942)
    #dbg_value(i64 1, !4932, !DIExpression(), !4943)
    #dbg_value(i64 1, !4933, !DIExpression(), !4944)
  br label %for.loop, !dbg !4937

for.loop:                                         ; preds = %for.body, %if.done
  %2 = phi i64 [ 1, %if.done ], [ %3, %for.body ], !dbg !4943
  %3 = phi i64 [ 1, %if.done ], [ %5, %for.body ], !dbg !4944
    #dbg_value(i64 %3, !4933, !DIExpression(), !4945)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4946)
  %4 = icmp sle i64 %3, %n, !dbg !4947
  br i1 %4, label %for.body, label %for.done, !dbg !4937

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !4932, !DIExpression(), !4948)
    #dbg_value(i64 %2, !4931, !DIExpression(), !4949)
    #dbg_value(i64 %3, !4933, !DIExpression(), !4950)
    #dbg_value(i64 %3, !4932, !DIExpression(), !4951)
    #dbg_value(i64 %2, !4931, !DIExpression(), !4952)
    #dbg_value(i64 %3, !4932, !DIExpression(), !4953)
  %5 = add i64 %2, %3, !dbg !4954
    #dbg_value(i64 %5, !4933, !DIExpression(), !4955)
  br label %for.loop, !dbg !4937

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !4932, !DIExpression(), !4956)
  ret i64 %2, !dbg !4957
}
