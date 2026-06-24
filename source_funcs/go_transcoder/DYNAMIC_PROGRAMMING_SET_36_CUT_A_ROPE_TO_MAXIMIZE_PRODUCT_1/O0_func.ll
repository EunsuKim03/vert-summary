define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
  %0 = icmp eq i64 %n, 2, !dbg !4934
  br i1 %0, label %if.then, label %cond.false, !dbg !4935

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
  %1 = sub i64 %n, 1, !dbg !4937
  ret i64 %1, !dbg !4938

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4939)
  %2 = icmp eq i64 %n, 3, !dbg !4940
  br i1 %2, label %if.then, label %if.done, !dbg !4935

if.done:                                          ; preds = %cond.false
    #dbg_value(i64 1, !4931, !DIExpression(), !4941)
  br label %for.loop, !dbg !4935

for.loop:                                         ; preds = %for.body, %if.done
  %3 = phi i64 [ %n, %if.done ], [ %6, %for.body ], !dbg !4942
  %4 = phi i64 [ 1, %if.done ], [ %7, %for.body ], !dbg !4941
    #dbg_value(i64 %3, !4930, !DIExpression(), !4943)
  %5 = icmp sgt i64 %3, 4, !dbg !4944
  br i1 %5, label %for.body, label %for.done, !dbg !4935

for.body:                                         ; preds = %for.loop
  %6 = sub i64 %3, 3, !dbg !4945
    #dbg_value(i64 %6, !4930, !DIExpression(), !4945)
  %7 = mul i64 %4, 3, !dbg !4946
    #dbg_value(i64 %7, !4931, !DIExpression(), !4946)
  br label %for.loop, !dbg !4935

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4930, !DIExpression(), !4947)
    #dbg_value(i64 %4, !4931, !DIExpression(), !4948)
  %8 = mul i64 %3, %4, !dbg !4949
  ret i64 %8, !dbg !4950
}
