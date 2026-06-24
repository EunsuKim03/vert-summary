define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4935)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
  %0 = icmp sle i64 %n, 1, !dbg !4937
  br i1 %0, label %if.then, label %if.done, !dbg !4938

if.then:                                          ; preds = %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4939)
  ret i64 %n, !dbg !4940

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4931, !DIExpression(), !4941)
    #dbg_value(i64 1, !4932, !DIExpression(), !4942)
    #dbg_value(i64 1, !4933, !DIExpression(), !4943)
    #dbg_value(i64 1, !4934, !DIExpression(), !4944)
  br label %for.loop, !dbg !4938

for.loop:                                         ; preds = %for.body, %if.done
  %1 = phi i64 [ 0, %if.done ], [ %2, %for.body ], !dbg !4941
  %2 = phi i64 [ 1, %if.done ], [ %6, %for.body ], !dbg !4942
  %3 = phi i64 [ 1, %if.done ], [ %6, %for.body ], !dbg !4943
  %4 = phi i64 [ 1, %if.done ], [ %7, %for.body ], !dbg !4944
    #dbg_value(i64 %3, !4933, !DIExpression(), !4945)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4946)
  %5 = icmp slt i64 %3, %n, !dbg !4947
  br i1 %5, label %for.body, label %for.done, !dbg !4938

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4931, !DIExpression(), !4948)
    #dbg_value(i64 %2, !4932, !DIExpression(), !4949)
  %6 = add i64 %1, %2, !dbg !4950
    #dbg_value(i64 %6, !4933, !DIExpression(), !4951)
  %7 = add i64 %4, 1, !dbg !4952
    #dbg_value(i64 %7, !4934, !DIExpression(), !4952)
    #dbg_value(i64 %2, !4932, !DIExpression(), !4953)
    #dbg_value(i64 %2, !4931, !DIExpression(), !4954)
    #dbg_value(i64 %6, !4933, !DIExpression(), !4955)
    #dbg_value(i64 %6, !4932, !DIExpression(), !4956)
  br label %for.loop, !dbg !4938

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %4, !4934, !DIExpression(), !4957)
  ret i64 %4, !dbg !4958
}
