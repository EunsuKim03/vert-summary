define i1 @f_gold(i64 %x, i64 %y) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %y, !4933, !DIExpression(), !4935)
    #dbg_value(i64 %x, !4932, !DIExpression(), !4936)
  %0 = icmp eq i64 %x, 1, !dbg !4937
  br i1 %0, label %if.then, label %if.done, !dbg !4938

if.then:                                          ; preds = %entry
    #dbg_value(i64 %y, !4933, !DIExpression(), !4939)
  %1 = icmp eq i64 %y, 1, !dbg !4940
  ret i1 %1, !dbg !4941

if.done:                                          ; preds = %entry
    #dbg_value(i64 1, !4934, !DIExpression(), !4942)
  br label %for.loop, !dbg !4938

for.loop:                                         ; preds = %for.body, %if.done
  %2 = phi i64 [ 1, %if.done ], [ %4, %for.body ], !dbg !4942
    #dbg_value(i64 %2, !4934, !DIExpression(), !4943)
    #dbg_value(i64 %y, !4933, !DIExpression(), !4944)
  %3 = icmp slt i64 %2, %y, !dbg !4945
  br i1 %3, label %for.body, label %for.done, !dbg !4938

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %x, !4932, !DIExpression(), !4946)
  %4 = mul i64 %2, %x, !dbg !4947
    #dbg_value(i64 %4, !4934, !DIExpression(), !4947)
  br label %for.loop, !dbg !4938

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !4934, !DIExpression(), !4948)
    #dbg_value(i64 %y, !4933, !DIExpression(), !4949)
  %5 = icmp eq i64 %2, %y, !dbg !4950
  ret i1 %5, !dbg !4951
}
