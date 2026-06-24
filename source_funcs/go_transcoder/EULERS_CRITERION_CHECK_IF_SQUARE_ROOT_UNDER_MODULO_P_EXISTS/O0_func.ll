define i1 @f_gold(i64 %n, i64 %p) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4936, !DIExpression(), !4939)
    #dbg_value(i64 %p, !4937, !DIExpression(), !4939)
    #dbg_value(i64 %n, !4936, !DIExpression(), !4940)
    #dbg_value(i64 %p, !4937, !DIExpression(), !4941)
  %0 = icmp eq i64 %p, 0, !dbg !4942
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !4942

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %p, -1, !dbg !4942
  %2 = icmp eq i64 %n, -9223372036854775808, !dbg !4942
  %3 = and i1 %1, %2, !dbg !4942
  %4 = select i1 %3, i64 1, i64 %p, !dbg !4942
  %5 = srem i64 %n, %4, !dbg !4942
    #dbg_value(i64 %5, !4936, !DIExpression(), !4943)
    #dbg_value(i64 2, !4938, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %if.done, %divbyzero.next
  %6 = phi i64 [ 2, %divbyzero.next ], [ %16, %if.done ], !dbg !4944
    #dbg_value(i64 %6, !4938, !DIExpression(), !4946)
    #dbg_value(i64 %p, !4937, !DIExpression(), !4947)
  %7 = icmp slt i64 %6, %p, !dbg !4948
  br i1 %7, label %for.body, label %for.done, !dbg !4945

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %6, !4938, !DIExpression(), !4949)
    #dbg_value(i64 %6, !4938, !DIExpression(), !4950)
  %8 = mul i64 %6, %6, !dbg !4951
    #dbg_value(i64 %p, !4937, !DIExpression(), !4952)
  %9 = icmp eq i64 %p, 0, !dbg !4953
  br i1 %9, label %divbyzero.throw1, label %divbyzero.next2, !dbg !4953

divbyzero.next2:                                  ; preds = %for.body
  %10 = icmp eq i64 %p, -1, !dbg !4953
  %11 = icmp eq i64 %8, -9223372036854775808, !dbg !4953
  %12 = and i1 %10, %11, !dbg !4953
  %13 = select i1 %12, i64 1, i64 %p, !dbg !4953
  %14 = srem i64 %8, %13, !dbg !4953
    #dbg_value(i64 %5, !4936, !DIExpression(), !4954)
  %15 = icmp eq i64 %14, %5, !dbg !4955
  br i1 %15, label %if.then, label %if.done, !dbg !4945

if.then:                                          ; preds = %divbyzero.next2
  ret i1 true, !dbg !4956

if.done:                                          ; preds = %divbyzero.next2
  %16 = add i64 %6, 1, !dbg !4957
    #dbg_value(i64 %16, !4938, !DIExpression(), !4957)
  br label %for.loop, !dbg !4945

for.done:                                         ; preds = %for.loop
  ret i1 false, !dbg !4958

divbyzero.throw:                                  ; preds = %entry
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4942
  unreachable, !dbg !4942

divbyzero.throw1:                                 ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953
}
