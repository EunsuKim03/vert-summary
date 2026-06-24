define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 0, !4931, !DIExpression(), !4933)
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
  %4 = phi i64 [ %n, %entry ], [ %shift.result, %for.body ], [ %n, %cond.true ], !dbg !4944
  %5 = phi i64 [ 0, %entry ], [ %8, %for.body ], [ 0, %cond.true ], !dbg !4933
    #dbg_value(i64 %4, !4930, !DIExpression(), !4945)
  %6 = icmp ne i64 %4, 0, !dbg !4946
  br i1 %6, label %for.body, label %for.done, !dbg !4936

for.body:                                         ; preds = %for.loop
  %7 = lshr i64 %4, 1, !dbg !4947
  %shift.result = select i1 false, i64 0, i64 %7, !dbg !4947
    #dbg_value(i64 %shift.result, !4930, !DIExpression(), !4947)
  %8 = add i64 %5, 1, !dbg !4948
    #dbg_value(i64 %8, !4931, !DIExpression(), !4948)
  br label %for.loop, !dbg !4936

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4931, !DIExpression(), !4949)
  %shift.overflow = icmp uge i64 %5, 64, !dbg !4950
  %9 = shl i64 1, %5, !dbg !4950
  %shift.result1 = select i1 %shift.overflow, i64 0, i64 %9, !dbg !4950
  ret i64 %shift.result1, !dbg !4951
}
