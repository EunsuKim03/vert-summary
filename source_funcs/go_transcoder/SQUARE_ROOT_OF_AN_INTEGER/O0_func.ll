define i64 @f_gold(i64 %x) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4930, !DIExpression(), !4933)
    #dbg_value(i64 %x, !4930, !DIExpression(), !4934)
  %0 = icmp eq i64 %x, 0, !dbg !4935
  br i1 %0, label %if.then, label %cond.false, !dbg !4936

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value(i64 %x, !4930, !DIExpression(), !4937)
  ret i64 %x, !dbg !4938

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %x, !4930, !DIExpression(), !4939)
  %1 = icmp eq i64 %x, 1, !dbg !4940
  br i1 %1, label %if.then, label %if.done, !dbg !4936

if.done:                                          ; preds = %cond.false
    #dbg_value(i64 1, !4931, !DIExpression(), !4941)
    #dbg_value(i64 1, !4932, !DIExpression(), !4942)
  br label %for.loop, !dbg !4936

for.loop:                                         ; preds = %for.body, %if.done
  %2 = phi i64 [ 1, %if.done ], [ %5, %for.body ], !dbg !4941
  %3 = phi i64 [ 1, %if.done ], [ %6, %for.body ], !dbg !4942
    #dbg_value(i64 %3, !4932, !DIExpression(), !4943)
    #dbg_value(i64 %x, !4930, !DIExpression(), !4944)
  %4 = icmp sle i64 %3, %x, !dbg !4945
  br i1 %4, label %for.body, label %for.done, !dbg !4936

for.body:                                         ; preds = %for.loop
  %5 = add i64 %2, 1, !dbg !4946
    #dbg_value(i64 %5, !4931, !DIExpression(), !4946)
    #dbg_value(i64 %5, !4931, !DIExpression(), !4947)
    #dbg_value(i64 %5, !4931, !DIExpression(), !4948)
  %6 = mul i64 %5, %5, !dbg !4949
    #dbg_value(i64 %6, !4932, !DIExpression(), !4950)
  br label %for.loop, !dbg !4936

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !4931, !DIExpression(), !4951)
  %7 = sub i64 %2, 1, !dbg !4952
  ret i64 %7, !dbg !4953
}
