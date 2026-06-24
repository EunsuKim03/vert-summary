define i1 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i1 false, !4931, !DIExpression(), !4933)
  br label %for.loop, !dbg !4934

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %n, %entry ], [ %5, %for.body ], !dbg !4935
  %1 = phi i1 [ false, %entry ], [ %3, %for.body ], !dbg !4933
    #dbg_value(i64 %0, !4930, !DIExpression(), !4936)
  %2 = icmp ne i64 %0, 0, !dbg !4937
  br i1 %2, label %for.body, label %for.done, !dbg !4934

for.body:                                         ; preds = %for.loop
    #dbg_value(i1 %1, !4931, !DIExpression(), !4938)
  %3 = xor i1 %1, true, !dbg !4939
    #dbg_value(i1 %3, !4931, !DIExpression(), !4940)
    #dbg_value(i64 %0, !4930, !DIExpression(), !4941)
    #dbg_value(i64 %0, !4930, !DIExpression(), !4942)
  %4 = sub i64 %0, 1, !dbg !4943
  %5 = and i64 %0, %4, !dbg !4944
    #dbg_value(i64 %5, !4930, !DIExpression(), !4945)
  br label %for.loop, !dbg !4934

for.done:                                         ; preds = %for.loop
    #dbg_value(i1 %1, !4931, !DIExpression(), !4946)
  ret i1 %1, !dbg !4947
}
