define i64 @f_gold(i64 %n, i64 %p) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4936, !DIExpression(), !4940)
    #dbg_value(i64 %p, !4937, !DIExpression(), !4940)
    #dbg_value(i64 0, !4938, !DIExpression(), !4941)
    #dbg_value(i64 %p, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %p, !4939, !DIExpression(), !4943)
  br label %for.loop, !dbg !4944

for.loop:                                         ; preds = %divbyzero.next, %entry
  %0 = phi i64 [ 0, %entry ], [ %9, %divbyzero.next ], !dbg !4941
  %1 = phi i64 [ %p, %entry ], [ %10, %divbyzero.next ], !dbg !4943
    #dbg_value(i64 %1, !4939, !DIExpression(), !4945)
    #dbg_value(i64 %n, !4936, !DIExpression(), !4946)
  %2 = icmp sle i64 %1, %n, !dbg !4947
  br i1 %2, label %for.body, label %for.done, !dbg !4944

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %n, !4936, !DIExpression(), !4948)
    #dbg_value(i64 %1, !4939, !DIExpression(), !4949)
  %3 = icmp eq i64 %1, 0, !dbg !4950
  br i1 %3, label %divbyzero.throw, label %divbyzero.next, !dbg !4950

divbyzero.next:                                   ; preds = %for.body
  %4 = icmp eq i64 %1, -1, !dbg !4950
  %5 = icmp eq i64 %n, -9223372036854775808, !dbg !4950
  %6 = and i1 %4, %5, !dbg !4950
  %7 = select i1 %6, i64 1, i64 %1, !dbg !4950
  %8 = sdiv i64 %n, %7, !dbg !4950
  %9 = add i64 %0, %8, !dbg !4951
    #dbg_value(i64 %9, !4938, !DIExpression(), !4951)
    #dbg_value(i64 %1, !4939, !DIExpression(), !4952)
    #dbg_value(i64 %p, !4937, !DIExpression(), !4953)
  %10 = mul i64 %1, %p, !dbg !4954
    #dbg_value(i64 %10, !4939, !DIExpression(), !4955)
  br label %for.loop, !dbg !4944

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4938, !DIExpression(), !4956)
  ret i64 %0, !dbg !4957

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4950
  unreachable, !dbg !4950
}
