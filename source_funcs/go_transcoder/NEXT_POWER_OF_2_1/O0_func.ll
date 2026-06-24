define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 1, !4931, !DIExpression(), !4933)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
  %0 = icmp ne i64 %n, 0, !dbg !4935
  br i1 %0, label %cond.true, label %for.loop, !dbg !4936

cond.true:                                        ; preds = %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4937)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4938)
  %1 = sub i64 %n, 1, !dbg !4939
  %2 = and i64 %n, %1, !dbg !4940
  %3 = icmp eq i64 %2, 0, !dbg !4941
  br i1 %3, label %if.then, label %for.loop, !dbg !4936

if.then:                                          ; preds = %cond.true
    #dbg_value(i64 %n, !4930, !DIExpression(), !4942)
  ret i64 %n, !dbg !4943

for.loop:                                         ; preds = %for.body, %cond.true, %entry
  %4 = phi i64 [ 1, %entry ], [ %shift.result, %for.body ], [ 1, %cond.true ], !dbg !4933
    #dbg_value(i64 %4, !4931, !DIExpression(), !4944)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4945)
  %5 = icmp ult i64 %4, %n, !dbg !4946
  br i1 %5, label %for.body, label %for.done, !dbg !4936

for.body:                                         ; preds = %for.loop
  %6 = shl i64 %4, 1, !dbg !4947
  %shift.result = select i1 false, i64 0, i64 %6, !dbg !4947
    #dbg_value(i64 %shift.result, !4931, !DIExpression(), !4947)
  br label %for.loop, !dbg !4936

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4931, !DIExpression(), !4948)
  ret i64 %4, !dbg !4949
}
