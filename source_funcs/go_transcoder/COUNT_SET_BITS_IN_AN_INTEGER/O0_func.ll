define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 0, !4931, !DIExpression(), !4933)
  br label %for.loop, !dbg !4934

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %n, %entry ], [ %shift.result, %for.body ], !dbg !4935
  %1 = phi i64 [ 0, %entry ], [ %4, %for.body ], !dbg !4933
    #dbg_value(i64 %0, !4930, !DIExpression(), !4936)
  %2 = icmp ne i64 %0, 0, !dbg !4937
  br i1 %2, label %for.body, label %for.done, !dbg !4934

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4930, !DIExpression(), !4938)
  %3 = and i64 %0, 1, !dbg !4939
  %4 = add i64 %1, %3, !dbg !4940
    #dbg_value(i64 %4, !4931, !DIExpression(), !4940)
  %5 = lshr i64 %0, 1, !dbg !4941
  %shift.result = select i1 false, i64 0, i64 %5, !dbg !4941
    #dbg_value(i64 %shift.result, !4930, !DIExpression(), !4941)
  br label %for.loop, !dbg !4934

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4931, !DIExpression(), !4942)
  ret i64 %1, !dbg !4943
}
