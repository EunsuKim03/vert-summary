define i64 @f_gold(i64 %n, i64 %k) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4932, !DIExpression(), !4939)
    #dbg_value(i64 %k, !4933, !DIExpression(), !4939)
    #dbg_value(i64 %k, !4933, !DIExpression(), !4940)
    #dbg_value(i64 %k, !4934, !DIExpression(), !4941)
    #dbg_value(i64 1000000007, !4935, !DIExpression(), !4942)
    #dbg_value(i64 0, !4936, !DIExpression(), !4943)
    #dbg_value(i64 %k, !4933, !DIExpression(), !4944)
    #dbg_value(i64 %k, !4937, !DIExpression(), !4945)
    #dbg_value(i64 2, !4938, !DIExpression(), !4946)
  br label %for.loop, !dbg !4947

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %k, %entry ], [ %14, %for.body ], !dbg !4941
  %1 = phi i64 [ %k, %entry ], [ %9, %for.body ], !dbg !4945
  %2 = phi i64 [ 2, %entry ], [ %15, %for.body ], !dbg !4946
    #dbg_value(i64 %2, !4938, !DIExpression(), !4948)
    #dbg_value(i64 %n, !4932, !DIExpression(), !4949)
  %3 = icmp sle i64 %2, %n, !dbg !4950
  br i1 %3, label %for.body, label %for.done, !dbg !4947

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4937, !DIExpression(), !4951)
    #dbg_value(i64 %1, !4936, !DIExpression(), !4952)
    #dbg_value(i64 %0, !4934, !DIExpression(), !4953)
    #dbg_value(i64 %k, !4933, !DIExpression(), !4954)
  %4 = sub i64 %k, 1, !dbg !4955
  %5 = mul i64 %0, %4, !dbg !4956
    #dbg_value(i64 %5, !4937, !DIExpression(), !4957)
    #dbg_value(i64 %5, !4937, !DIExpression(), !4958)
    #dbg_value(i64 1000000007, !4935, !DIExpression(), !4959)
  %6 = icmp eq i64 %5, -9223372036854775808, !dbg !4960
  %7 = and i1 false, %6, !dbg !4960
  %8 = select i1 %7, i64 1, i64 1000000007, !dbg !4960
  %9 = srem i64 %5, %8, !dbg !4960
    #dbg_value(i64 %9, !4937, !DIExpression(), !4961)
    #dbg_value(i64 %1, !4936, !DIExpression(), !4962)
    #dbg_value(i64 %9, !4937, !DIExpression(), !4963)
  %10 = add i64 %1, %9, !dbg !4964
    #dbg_value(i64 1000000007, !4935, !DIExpression(), !4965)
  %11 = icmp eq i64 %10, -9223372036854775808, !dbg !4966
  %12 = and i1 false, %11, !dbg !4966
  %13 = select i1 %12, i64 1, i64 1000000007, !dbg !4966
  %14 = srem i64 %10, %13, !dbg !4966
    #dbg_value(i64 %14, !4934, !DIExpression(), !4967)
  %15 = add i64 %2, 1, !dbg !4968
    #dbg_value(i64 %15, !4938, !DIExpression(), !4968)
  br label %for.loop, !dbg !4947

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4934, !DIExpression(), !4969)
  ret i64 %0, !dbg !4970
}
