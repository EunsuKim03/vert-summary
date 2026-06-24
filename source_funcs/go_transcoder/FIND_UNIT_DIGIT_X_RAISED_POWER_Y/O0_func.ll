define i64 @f_gold(i64 %x, i64 %y) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4932, !DIExpression(), !4936)
    #dbg_value(i64 %y, !4933, !DIExpression(), !4936)
    #dbg_value(i64 1, !4934, !DIExpression(), !4937)
    #dbg_value(i64 0, !4935, !DIExpression(), !4938)
  br label %for.loop, !dbg !4939

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ 1, %entry ], [ %7, %for.body ], !dbg !4937
  %1 = phi i64 [ 0, %entry ], [ %8, %for.body ], !dbg !4938
    #dbg_value(i64 %1, !4935, !DIExpression(), !4940)
    #dbg_value(i64 %y, !4933, !DIExpression(), !4941)
  %2 = icmp slt i64 %1, %y, !dbg !4942
  br i1 %2, label %for.body, label %for.done, !dbg !4939

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4934, !DIExpression(), !4943)
    #dbg_value(i64 %x, !4932, !DIExpression(), !4944)
  %3 = mul i64 %0, %x, !dbg !4945
  %4 = icmp eq i64 %3, -9223372036854775808, !dbg !4946
  %5 = and i1 false, %4, !dbg !4946
  %6 = select i1 %5, i64 1, i64 10, !dbg !4946
  %7 = srem i64 %3, %6, !dbg !4946
    #dbg_value(i64 %7, !4934, !DIExpression(), !4947)
  %8 = add i64 %1, 1, !dbg !4948
    #dbg_value(i64 %8, !4935, !DIExpression(), !4948)
  br label %for.loop, !dbg !4939

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4934, !DIExpression(), !4949)
  ret i64 %0, !dbg !4950
}
