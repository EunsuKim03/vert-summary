define i64 @f_gold(i64 %x, i64 %y, i64 %z) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4932, !DIExpression(), !4936)
    #dbg_value(i64 %y, !4933, !DIExpression(), !4936)
    #dbg_value(i64 %z, !4934, !DIExpression(), !4936)
    #dbg_value(i64 0, !4935, !DIExpression(), !4937)
  br label %for.loop, !dbg !4938

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %x, %entry ], [ %7, %for.body ], !dbg !4939
  %1 = phi i64 [ %y, %entry ], [ %8, %for.body ], !dbg !4940
  %2 = phi i64 [ %z, %entry ], [ %9, %for.body ], !dbg !4941
  %3 = phi i64 [ 0, %entry ], [ %10, %for.body ], !dbg !4937
    #dbg_value(i64 %0, !4932, !DIExpression(), !4942)
  %4 = icmp ne i64 %0, 0, !dbg !4943
  br i1 %4, label %cond.true, label %for.done, !dbg !4938

cond.true:                                        ; preds = %for.loop
    #dbg_value(i64 %1, !4933, !DIExpression(), !4944)
  %5 = icmp ne i64 %1, 0, !dbg !4945
  br i1 %5, label %cond.true1, label %for.done, !dbg !4938

cond.true1:                                       ; preds = %cond.true
    #dbg_value(i64 %2, !4934, !DIExpression(), !4946)
  %6 = icmp ne i64 %2, 0, !dbg !4947
  br i1 %6, label %for.body, label %for.done, !dbg !4938

for.body:                                         ; preds = %cond.true1
  %7 = sub i64 %0, 1, !dbg !4948
    #dbg_value(i64 %7, !4932, !DIExpression(), !4948)
  %8 = sub i64 %1, 1, !dbg !4949
    #dbg_value(i64 %8, !4933, !DIExpression(), !4949)
  %9 = sub i64 %2, 1, !dbg !4950
    #dbg_value(i64 %9, !4934, !DIExpression(), !4950)
  %10 = add i64 %3, 1, !dbg !4951
    #dbg_value(i64 %10, !4935, !DIExpression(), !4951)
  br label %for.loop, !dbg !4938

for.done:                                         ; preds = %cond.true1, %cond.true, %for.loop
    #dbg_value(i64 %3, !4935, !DIExpression(), !4952)
  ret i64 %3, !dbg !4953
}
