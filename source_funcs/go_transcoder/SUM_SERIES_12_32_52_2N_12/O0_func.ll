define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
    #dbg_value(i64 0, !4931, !DIExpression(), !4934)
    #dbg_value(i64 1, !4932, !DIExpression(), !4935)
  br label %for.loop, !dbg !4936

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ 0, %entry ], [ %8, %for.body ], !dbg !4934
  %1 = phi i64 [ 1, %entry ], [ %9, %for.body ], !dbg !4935
    #dbg_value(i64 %1, !4932, !DIExpression(), !4937)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4938)
  %2 = icmp sle i64 %1, %n, !dbg !4939
  br i1 %2, label %for.body, label %for.done, !dbg !4936

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4931, !DIExpression(), !4940)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4941)
  %3 = mul i64 %1, 2, !dbg !4942
  %4 = sub i64 %3, 1, !dbg !4943
    #dbg_value(i64 %1, !4932, !DIExpression(), !4944)
  %5 = mul i64 %1, 2, !dbg !4945
  %6 = sub i64 %5, 1, !dbg !4946
  %7 = mul i64 %4, %6, !dbg !4947
  %8 = add i64 %0, %7, !dbg !4948
    #dbg_value(i64 %8, !4931, !DIExpression(), !4949)
  %9 = add i64 %1, 1, !dbg !4950
    #dbg_value(i64 %9, !4932, !DIExpression(), !4950)
  br label %for.loop, !dbg !4936

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4931, !DIExpression(), !4951)
  ret i64 %0, !dbg !4952
}
