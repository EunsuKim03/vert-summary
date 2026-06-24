define i1 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 0, !4931, !DIExpression(), !4933)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
  %0 = icmp ne i64 %n, 0, !dbg !4935
  br i1 %0, label %cond.true, label %if.done1, !dbg !4936

cond.true:                                        ; preds = %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4937)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4938)
  %1 = sub i64 %n, 1, !dbg !4939
  %2 = and i64 %n, %1, !dbg !4940
  %3 = icmp eq i64 %2, 0, !dbg !4941
  br i1 %3, label %for.loop, label %if.done1, !dbg !4936

for.loop:                                         ; preds = %for.body, %cond.true
  %4 = phi i64 [ %n, %cond.true ], [ %shift.result, %for.body ], !dbg !4942
  %5 = phi i64 [ 0, %cond.true ], [ %8, %for.body ], !dbg !4933
    #dbg_value(i64 %4, !4930, !DIExpression(), !4943)
  %6 = icmp ugt i64 %4, 1, !dbg !4944
  br i1 %6, label %for.body, label %for.done, !dbg !4936

for.body:                                         ; preds = %for.loop
  %7 = lshr i64 %4, 1, !dbg !4945
  %shift.result = select i1 false, i64 0, i64 %7, !dbg !4945
    #dbg_value(i64 %shift.result, !4930, !DIExpression(), !4945)
  %8 = add i64 %5, 1, !dbg !4946
    #dbg_value(i64 %8, !4931, !DIExpression(), !4946)
  br label %for.loop, !dbg !4936

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4931, !DIExpression(), !4947)
  %9 = icmp eq i64 %5, -9223372036854775808, !dbg !4948
  %10 = and i1 false, %9, !dbg !4948
  %11 = select i1 %10, i64 1, i64 2, !dbg !4948
  %12 = srem i64 %5, %11, !dbg !4948
  %13 = icmp eq i64 %12, 0, !dbg !4949
  br i1 %13, label %if.then, label %if.done, !dbg !4936

if.then:                                          ; preds = %for.done
  ret i1 true, !dbg !4950

if.done:                                          ; preds = %for.done
  ret i1 false, !dbg !4951

if.done1:                                         ; preds = %cond.true, %entry
  ret i1 false, !dbg !4952
}
