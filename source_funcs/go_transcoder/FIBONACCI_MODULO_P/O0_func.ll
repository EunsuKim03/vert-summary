define i64 @f_gold(i64 %p) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %p, !4934, !DIExpression(), !4939)
    #dbg_value(i64 1, !4935, !DIExpression(), !4940)
    #dbg_value(i64 1, !4936, !DIExpression(), !4941)
    #dbg_value(i64 2, !4937, !DIExpression(), !4942)
    #dbg_value(i64 1, !4938, !DIExpression(), !4943)
  br label %for.loop, !dbg !4944

for.loop:                                         ; preds = %divbyzero.next, %entry
  %0 = phi i64 [ 1, %entry ], [ %1, %divbyzero.next ], !dbg !4940
  %1 = phi i64 [ 1, %entry ], [ %11, %divbyzero.next ], !dbg !4941
  %2 = phi i64 [ 2, %entry ], [ %12, %divbyzero.next ], !dbg !4942
  %3 = phi i64 [ 1, %entry ], [ %11, %divbyzero.next ], !dbg !4943
    #dbg_value(i64 %3, !4938, !DIExpression(), !4945)
  %4 = icmp ne i64 %3, 0, !dbg !4946
  br i1 %4, label %for.body, label %for.done, !dbg !4944

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4935, !DIExpression(), !4947)
    #dbg_value(i64 %1, !4936, !DIExpression(), !4948)
  %5 = add i64 %0, %1, !dbg !4949
    #dbg_value(i64 %p, !4934, !DIExpression(), !4950)
  %6 = icmp eq i64 %p, 0, !dbg !4951
  br i1 %6, label %divbyzero.throw, label %divbyzero.next, !dbg !4951

divbyzero.next:                                   ; preds = %for.body
  %7 = icmp eq i64 %p, -1, !dbg !4951
  %8 = icmp eq i64 %5, -9223372036854775808, !dbg !4951
  %9 = and i1 %7, %8, !dbg !4951
  %10 = select i1 %9, i64 1, i64 %p, !dbg !4951
  %11 = srem i64 %5, %10, !dbg !4951
    #dbg_value(i64 %11, !4938, !DIExpression(), !4952)
    #dbg_value(i64 %1, !4936, !DIExpression(), !4953)
    #dbg_value(i64 %1, !4935, !DIExpression(), !4954)
    #dbg_value(i64 %11, !4938, !DIExpression(), !4955)
    #dbg_value(i64 %11, !4936, !DIExpression(), !4956)
  %12 = add i64 %2, 1, !dbg !4957
    #dbg_value(i64 %12, !4937, !DIExpression(), !4957)
  br label %for.loop, !dbg !4944

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !4937, !DIExpression(), !4958)
  ret i64 %2, !dbg !4959

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951
}
