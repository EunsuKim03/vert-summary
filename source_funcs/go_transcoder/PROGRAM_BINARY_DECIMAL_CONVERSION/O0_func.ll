define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4937)
    #dbg_value(i64 %n, !4931, !DIExpression(), !4938)
    #dbg_value(i64 0, !4932, !DIExpression(), !4939)
    #dbg_value(i64 1, !4933, !DIExpression(), !4940)
    #dbg_value(i64 %n, !4931, !DIExpression(), !4941)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4942)
  br label %for.loop, !dbg !4943

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ 0, %entry ], [ %13, %for.body ], !dbg !4939
  %1 = phi i64 [ 1, %entry ], [ %14, %for.body ], !dbg !4940
  %2 = phi i64 [ %n, %entry ], [ %11, %for.body ], !dbg !4942
    #dbg_value(i64 %2, !4934, !DIExpression(), !4944)
  %3 = icmp ne i64 %2, 0, !dbg !4945
  br i1 %3, label %for.body, label %for.done, !dbg !4943

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !4934, !DIExpression(), !4946)
  %4 = icmp eq i64 %2, -9223372036854775808, !dbg !4947
  %5 = and i1 false, %4, !dbg !4947
  %6 = select i1 %5, i64 1, i64 10, !dbg !4947
  %7 = srem i64 %2, %6, !dbg !4947
    #dbg_value(i64 %7, !4935, !DIExpression(), !4948)
    #dbg_value(i64 %2, !4934, !DIExpression(), !4949)
  %8 = icmp eq i64 %2, -9223372036854775808, !dbg !4950
  %9 = and i1 false, %8, !dbg !4950
  %10 = select i1 %9, i64 1, i64 10, !dbg !4950
  %11 = sdiv i64 %2, %10, !dbg !4950
    #dbg_value(i64 %11, !4934, !DIExpression(), !4951)
    #dbg_value(i64 %7, !4935, !DIExpression(), !4952)
    #dbg_value(i64 %1, !4933, !DIExpression(), !4953)
  %12 = mul i64 %7, %1, !dbg !4954
  %13 = add i64 %0, %12, !dbg !4955
    #dbg_value(i64 %13, !4932, !DIExpression(), !4955)
    #dbg_value(i64 %1, !4933, !DIExpression(), !4956)
  %14 = mul i64 %1, 2, !dbg !4957
    #dbg_value(i64 %14, !4933, !DIExpression(), !4958)
  br label %for.loop, !dbg !4943

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4932, !DIExpression(), !4959)
  ret i64 %0, !dbg !4960
}
