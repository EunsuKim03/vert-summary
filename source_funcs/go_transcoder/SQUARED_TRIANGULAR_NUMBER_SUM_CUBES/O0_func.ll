define i64 @f_gold(i64 %s) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %s, !4930, !DIExpression(), !4933)
    #dbg_value(i64 0, !4931, !DIExpression(), !4934)
    #dbg_value(i64 1, !4932, !DIExpression(), !4935)
  br label %for.loop, !dbg !4936

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %5, %if.done ], !dbg !4934
  %1 = phi i64 [ 1, %entry ], [ %7, %if.done ], !dbg !4935
    #dbg_value(i64 %0, !4931, !DIExpression(), !4937)
    #dbg_value(i64 %s, !4930, !DIExpression(), !4938)
  %2 = icmp slt i64 %0, %s, !dbg !4939
  br i1 %2, label %for.body, label %for.done, !dbg !4936

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4932, !DIExpression(), !4940)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4941)
  %3 = mul i64 %1, %1, !dbg !4942
    #dbg_value(i64 %1, !4932, !DIExpression(), !4943)
  %4 = mul i64 %3, %1, !dbg !4944
  %5 = add i64 %0, %4, !dbg !4945
    #dbg_value(i64 %5, !4931, !DIExpression(), !4945)
    #dbg_value(i64 %5, !4931, !DIExpression(), !4946)
    #dbg_value(i64 %s, !4930, !DIExpression(), !4947)
  %6 = icmp eq i64 %5, %s, !dbg !4948
  br i1 %6, label %if.then, label %if.done, !dbg !4936

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %1, !4932, !DIExpression(), !4949)
  ret i64 %1, !dbg !4950

if.done:                                          ; preds = %for.body
  %7 = add i64 %1, 1, !dbg !4951
    #dbg_value(i64 %7, !4932, !DIExpression(), !4951)
  br label %for.loop, !dbg !4936

for.done:                                         ; preds = %for.loop
  ret i64 -1, !dbg !4952
}
