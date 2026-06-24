define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
    #dbg_value(i64 1, !4931, !DIExpression(), !4937)
    #dbg_value(i64 1, !4932, !DIExpression(), !4938)
    #dbg_value(i64 1, !4933, !DIExpression(), !4939)
    #dbg_value(i64 1, !4934, !DIExpression(), !4940)
    #dbg_value(i64 3, !4935, !DIExpression(), !4941)
  br label %for.loop, !dbg !4942

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ 1, %entry ], [ %1, %for.body ], !dbg !4937
  %1 = phi i64 [ 1, %entry ], [ %2, %for.body ], !dbg !4938
  %2 = phi i64 [ 1, %entry ], [ %6, %for.body ], !dbg !4939
  %3 = phi i64 [ 1, %entry ], [ %6, %for.body ], !dbg !4940
  %4 = phi i64 [ 3, %entry ], [ %7, %for.body ], !dbg !4941
    #dbg_value(i64 %4, !4935, !DIExpression(), !4943)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4944)
  %5 = icmp sle i64 %4, %n, !dbg !4945
  br i1 %5, label %for.body, label %for.done, !dbg !4942

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4931, !DIExpression(), !4946)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4947)
  %6 = add i64 %0, %1, !dbg !4948
    #dbg_value(i64 %6, !4934, !DIExpression(), !4949)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4950)
    #dbg_value(i64 %1, !4931, !DIExpression(), !4951)
    #dbg_value(i64 %2, !4933, !DIExpression(), !4952)
    #dbg_value(i64 %2, !4932, !DIExpression(), !4953)
    #dbg_value(i64 %6, !4934, !DIExpression(), !4954)
    #dbg_value(i64 %6, !4933, !DIExpression(), !4955)
  %7 = add i64 %4, 1, !dbg !4956
    #dbg_value(i64 %7, !4935, !DIExpression(), !4956)
  br label %for.loop, !dbg !4942

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4934, !DIExpression(), !4957)
  ret i64 %3, !dbg !4958
}
