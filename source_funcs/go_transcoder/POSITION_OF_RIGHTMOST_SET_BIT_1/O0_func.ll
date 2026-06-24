define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
    #dbg_value(i64 1, !4931, !DIExpression(), !4934)
    #dbg_value(i64 1, !4932, !DIExpression(), !4935)
  br label %for.loop, !dbg !4936

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ 1, %entry ], [ %5, %for.body ], !dbg !4934
  %1 = phi i64 [ 1, %entry ], [ %shift.result, %for.body ], !dbg !4935
    #dbg_value(i64 %n, !4930, !DIExpression(), !4937)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4938)
  %2 = and i64 %n, %1, !dbg !4939
  %3 = icmp eq i64 %2, 0, !dbg !4940
  br i1 %3, label %for.body, label %for.done, !dbg !4936

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4932, !DIExpression(), !4941)
  %4 = shl i64 %1, 1, !dbg !4942
  %shift.result = select i1 false, i64 0, i64 %4, !dbg !4942
    #dbg_value(i64 %shift.result, !4932, !DIExpression(), !4943)
  %5 = add i64 %0, 1, !dbg !4944
    #dbg_value(i64 %5, !4931, !DIExpression(), !4944)
  br label %for.loop, !dbg !4936

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4931, !DIExpression(), !4945)
  ret i64 %0, !dbg !4946
}
