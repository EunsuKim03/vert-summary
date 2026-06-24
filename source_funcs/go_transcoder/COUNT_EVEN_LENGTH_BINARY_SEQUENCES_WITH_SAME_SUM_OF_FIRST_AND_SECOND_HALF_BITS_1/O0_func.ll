define i64 @f_gold(i64 %n) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4934, !DIExpression(), !4938)
    #dbg_value(i64 1, !4935, !DIExpression(), !4939)
    #dbg_value(i64 1, !4936, !DIExpression(), !4940)
    #dbg_value(i64 1, !4937, !DIExpression(), !4941)
  br label %for.loop, !dbg !4942

for.loop:                                         ; preds = %divbyzero.next, %entry
  %0 = phi i64 [ 1, %entry ], [ %12, %divbyzero.next ], !dbg !4939
  %1 = phi i64 [ 1, %entry ], [ %14, %divbyzero.next ], !dbg !4940
  %2 = phi i64 [ 1, %entry ], [ %15, %divbyzero.next ], !dbg !4941
    #dbg_value(i64 %2, !4937, !DIExpression(), !4943)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4944)
  %3 = icmp sle i64 %2, %n, !dbg !4945
  br i1 %3, label %for.body, label %for.done, !dbg !4942

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4935, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4947)
  %4 = add i64 %n, 1, !dbg !4948
    #dbg_value(i64 %2, !4937, !DIExpression(), !4949)
  %5 = sub i64 %4, %2, !dbg !4950
  %6 = mul i64 %0, %5, !dbg !4951
    #dbg_value(i64 %2, !4937, !DIExpression(), !4952)
  %7 = icmp eq i64 %2, 0, !dbg !4953
  br i1 %7, label %divbyzero.throw, label %divbyzero.next, !dbg !4953

divbyzero.next:                                   ; preds = %for.body
  %8 = icmp eq i64 %2, -1, !dbg !4953
  %9 = icmp eq i64 %6, -9223372036854775808, !dbg !4953
  %10 = and i1 %8, %9, !dbg !4953
  %11 = select i1 %10, i64 1, i64 %2, !dbg !4953
  %12 = sdiv i64 %6, %11, !dbg !4953
    #dbg_value(i64 %12, !4935, !DIExpression(), !4954)
    #dbg_value(i64 %12, !4935, !DIExpression(), !4955)
    #dbg_value(i64 %12, !4935, !DIExpression(), !4956)
  %13 = mul i64 %12, %12, !dbg !4957
  %14 = add i64 %1, %13, !dbg !4958
    #dbg_value(i64 %14, !4936, !DIExpression(), !4958)
  %15 = add i64 %2, 1, !dbg !4959
    #dbg_value(i64 %15, !4937, !DIExpression(), !4959)
  br label %for.loop, !dbg !4942

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4936, !DIExpression(), !4960)
  ret i64 %1, !dbg !4961

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953
}
