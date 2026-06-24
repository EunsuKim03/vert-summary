define i64 @f_gold(i64 %s) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %s, !4930, !DIExpression(), !4933)
    #dbg_value(i64 0, !4931, !DIExpression(), !4934)
    #dbg_value(i64 1, !4932, !DIExpression(), !4935)
  br label %for.loop, !dbg !4936

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %4, %if.done ], !dbg !4934
  %1 = phi i64 [ 1, %entry ], [ %6, %if.done ], !dbg !4935
    #dbg_value(i64 %0, !4931, !DIExpression(), !4937)
    #dbg_value(i64 %s, !4930, !DIExpression(), !4938)
  %2 = icmp slt i64 %0, %s, !dbg !4939
  br i1 %2, label %for.body, label %for.done, !dbg !4936

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4932, !DIExpression(), !4940)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4941)
  %3 = mul i64 %1, %1, !dbg !4942
  %4 = add i64 %0, %3, !dbg !4943
    #dbg_value(i64 %4, !4931, !DIExpression(), !4943)
    #dbg_value(i64 %4, !4931, !DIExpression(), !4944)
    #dbg_value(i64 %s, !4930, !DIExpression(), !4945)
  %5 = icmp eq i64 %4, %s, !dbg !4946
  br i1 %5, label %if.then, label %if.done, !dbg !4936

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %1, !4932, !DIExpression(), !4947)
  ret i64 %1, !dbg !4948

if.done:                                          ; preds = %for.body
  %6 = add i64 %1, 1, !dbg !4949
    #dbg_value(i64 %6, !4932, !DIExpression(), !4949)
  br label %for.loop, !dbg !4936

for.done:                                         ; preds = %for.loop
  ret i64 -1, !dbg !4950
}
