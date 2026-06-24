define i1 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
    #dbg_value(i64 0, !4931, !DIExpression(), !4934)
    #dbg_value(i64 1, !4932, !DIExpression(), !4935)
  br label %for.loop, !dbg !4936

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %3, %if.done ], !dbg !4934
  %1 = phi i64 [ 1, %entry ], [ %5, %if.done ], !dbg !4935
    #dbg_value(i64 %0, !4931, !DIExpression(), !4937)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4938)
  %2 = icmp slt i64 %0, %n, !dbg !4939
  br i1 %2, label %for.body, label %for.done, !dbg !4936

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4932, !DIExpression(), !4940)
  %3 = add i64 %0, %1, !dbg !4941
    #dbg_value(i64 %3, !4931, !DIExpression(), !4941)
    #dbg_value(i64 %3, !4931, !DIExpression(), !4942)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4943)
  %4 = icmp eq i64 %3, %n, !dbg !4944
  br i1 %4, label %if.then, label %if.done, !dbg !4936

if.then:                                          ; preds = %for.body
  ret i1 true, !dbg !4945

if.done:                                          ; preds = %for.body
  %5 = add i64 %1, 2, !dbg !4946
    #dbg_value(i64 %5, !4932, !DIExpression(), !4946)
  br label %for.loop, !dbg !4936

for.done:                                         ; preds = %for.loop
  ret i1 false, !dbg !4947
}
