define i64 @f_gold(i64 %n, i64 %p) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4936, !DIExpression(), !4940)
    #dbg_value(i64 %p, !4937, !DIExpression(), !4940)
    #dbg_value(i64 %n, !4936, !DIExpression(), !4941)
    #dbg_value(i64 %p, !4937, !DIExpression(), !4942)
  %0 = icmp sge i64 %n, %p, !dbg !4943
  br i1 %0, label %if.then, label %if.done, !dbg !4944

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4945

if.done:                                          ; preds = %entry
    #dbg_value(i64 1, !4938, !DIExpression(), !4946)
    #dbg_value(i64 1, !4939, !DIExpression(), !4947)
  br label %for.loop, !dbg !4944

for.loop:                                         ; preds = %divbyzero.next, %if.done
  %1 = phi i64 [ 1, %if.done ], [ %10, %divbyzero.next ], !dbg !4946
  %2 = phi i64 [ 1, %if.done ], [ %11, %divbyzero.next ], !dbg !4947
    #dbg_value(i64 %2, !4939, !DIExpression(), !4948)
    #dbg_value(i64 %n, !4936, !DIExpression(), !4949)
  %3 = icmp sle i64 %2, %n, !dbg !4950
  br i1 %3, label %for.body, label %for.done, !dbg !4944

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4938, !DIExpression(), !4951)
    #dbg_value(i64 %2, !4939, !DIExpression(), !4952)
  %4 = mul i64 %1, %2, !dbg !4953
    #dbg_value(i64 %p, !4937, !DIExpression(), !4954)
  %5 = icmp eq i64 %p, 0, !dbg !4955
  br i1 %5, label %divbyzero.throw, label %divbyzero.next, !dbg !4955

divbyzero.next:                                   ; preds = %for.body
  %6 = icmp eq i64 %p, -1, !dbg !4955
  %7 = icmp eq i64 %4, -9223372036854775808, !dbg !4955
  %8 = and i1 %6, %7, !dbg !4955
  %9 = select i1 %8, i64 1, i64 %p, !dbg !4955
  %10 = srem i64 %4, %9, !dbg !4955
    #dbg_value(i64 %10, !4938, !DIExpression(), !4956)
  %11 = add i64 %2, 1, !dbg !4957
    #dbg_value(i64 %11, !4939, !DIExpression(), !4957)
  br label %for.loop, !dbg !4944

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4938, !DIExpression(), !4958)
  ret i64 %1, !dbg !4959

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4955
  unreachable, !dbg !4955
}
