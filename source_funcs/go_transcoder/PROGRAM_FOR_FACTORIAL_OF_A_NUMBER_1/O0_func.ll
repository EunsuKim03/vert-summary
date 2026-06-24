define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
    #dbg_value(i64 1, !4931, !DIExpression(), !4934)
    #dbg_value(i64 0, !4932, !DIExpression(), !4935)
    #dbg_value(i64 2, !4932, !DIExpression(), !4936)
  br label %for.loop, !dbg !4937

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ 1, %entry ], [ %3, %for.body ], !dbg !4934
  %1 = phi i64 [ 2, %entry ], [ %4, %for.body ], !dbg !4935
    #dbg_value(i64 %1, !4932, !DIExpression(), !4938)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4939)
  %2 = icmp sle i64 %1, %n, !dbg !4940
  br i1 %2, label %for.body, label %for.done, !dbg !4937

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4932, !DIExpression(), !4941)
  %3 = mul i64 %0, %1, !dbg !4942
    #dbg_value(i64 %3, !4931, !DIExpression(), !4942)
  %4 = add i64 %1, 1, !dbg !4943
    #dbg_value(i64 %4, !4932, !DIExpression(), !4943)
  br label %for.loop, !dbg !4937

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4931, !DIExpression(), !4944)
  ret i64 %0, !dbg !4945
}
