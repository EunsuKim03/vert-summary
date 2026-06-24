define i64 @f_gold(i64 %num, i64 %divisor) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %num, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %divisor, !4933, !DIExpression(), !4934)
  br label %for.loop, !dbg !4935

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %num, %entry ], [ %2, %for.body ], !dbg !4936
    #dbg_value(i64 %0, !4932, !DIExpression(), !4937)
    #dbg_value(i64 %divisor, !4933, !DIExpression(), !4938)
  %1 = icmp sge i64 %0, %divisor, !dbg !4939
  br i1 %1, label %for.body, label %for.done, !dbg !4935

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %divisor, !4933, !DIExpression(), !4940)
  %2 = sub i64 %0, %divisor, !dbg !4941
    #dbg_value(i64 %2, !4932, !DIExpression(), !4941)
  br label %for.loop, !dbg !4935

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4932, !DIExpression(), !4942)
  ret i64 %0, !dbg !4943
}
