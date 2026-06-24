define i64 @f_gold(i64 %N, i64 %K) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %N, !4936, !DIExpression(), !4940)
    #dbg_value(i64 %K, !4937, !DIExpression(), !4940)
    #dbg_value(i64 0, !4938, !DIExpression(), !4941)
    #dbg_value(i64 1, !4939, !DIExpression(), !4942)
  br label %for.loop, !dbg !4943

for.loop:                                         ; preds = %divbyzero.next, %entry
  %0 = phi i64 [ 0, %entry ], [ %9, %divbyzero.next ], !dbg !4941
  %1 = phi i64 [ 1, %entry ], [ %10, %divbyzero.next ], !dbg !4942
    #dbg_value(i64 %1, !4939, !DIExpression(), !4944)
    #dbg_value(i64 %N, !4936, !DIExpression(), !4945)
  %2 = icmp sle i64 %1, %N, !dbg !4946
  br i1 %2, label %for.body, label %for.done, !dbg !4943

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4939, !DIExpression(), !4947)
    #dbg_value(i64 %K, !4937, !DIExpression(), !4948)
  %3 = icmp eq i64 %K, 0, !dbg !4949
  br i1 %3, label %divbyzero.throw, label %divbyzero.next, !dbg !4949

divbyzero.next:                                   ; preds = %for.body
  %4 = icmp eq i64 %K, -1, !dbg !4949
  %5 = icmp eq i64 %1, -9223372036854775808, !dbg !4949
  %6 = and i1 %4, %5, !dbg !4949
  %7 = select i1 %6, i64 1, i64 %K, !dbg !4949
  %8 = srem i64 %1, %7, !dbg !4949
  %9 = add i64 %0, %8, !dbg !4950
    #dbg_value(i64 %9, !4938, !DIExpression(), !4950)
  %10 = add i64 %1, 1, !dbg !4951
    #dbg_value(i64 %10, !4939, !DIExpression(), !4951)
  br label %for.loop, !dbg !4943

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4938, !DIExpression(), !4952)
  ret i64 %0, !dbg !4953

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4949
  unreachable, !dbg !4949
}
