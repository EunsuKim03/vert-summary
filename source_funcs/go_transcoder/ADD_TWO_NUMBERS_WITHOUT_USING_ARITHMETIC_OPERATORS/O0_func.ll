define i64 @f_gold(i64 %x, i64 %y) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %y, !4933, !DIExpression(), !4935)
  br label %for.loop, !dbg !4936

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %x, %entry ], [ %4, %for.body ], !dbg !4937
  %1 = phi i64 [ %y, %entry ], [ %shift.result, %for.body ], !dbg !4938
    #dbg_value(i64 %1, !4933, !DIExpression(), !4939)
  %2 = icmp ne i64 %1, 0, !dbg !4940
  br i1 %2, label %for.body, label %for.done, !dbg !4936

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4932, !DIExpression(), !4941)
    #dbg_value(i64 %1, !4933, !DIExpression(), !4942)
  %3 = and i64 %0, %1, !dbg !4943
    #dbg_value(i64 %3, !4934, !DIExpression(), !4944)
    #dbg_value(i64 %0, !4932, !DIExpression(), !4945)
    #dbg_value(i64 %1, !4933, !DIExpression(), !4946)
  %4 = xor i64 %0, %1, !dbg !4947
    #dbg_value(i64 %4, !4932, !DIExpression(), !4948)
    #dbg_value(i64 %3, !4934, !DIExpression(), !4949)
  %5 = shl i64 %3, 1, !dbg !4950
  %shift.result = select i1 false, i64 0, i64 %5, !dbg !4950
    #dbg_value(i64 %shift.result, !4933, !DIExpression(), !4951)
  br label %for.loop, !dbg !4936

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4932, !DIExpression(), !4952)
  ret i64 %0, !dbg !4953
}
