define i1 @f_gold(i64 %n) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4934, !DIExpression(), !4936)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4937)
  %0 = icmp sle i64 %n, 1, !dbg !4938
  br i1 %0, label %if.then, label %if.done, !dbg !4939

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4940

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !4934, !DIExpression(), !4941)
  %1 = icmp sle i64 %n, 3, !dbg !4942
  br i1 %1, label %if.then1, label %if.done2, !dbg !4939

if.then1:                                         ; preds = %if.done
  ret i1 false, !dbg !4943

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %n, !4934, !DIExpression(), !4944)
  %2 = icmp eq i64 %n, -9223372036854775808, !dbg !4945
  %3 = and i1 false, %2, !dbg !4945
  %4 = select i1 %3, i64 1, i64 2, !dbg !4945
  %5 = srem i64 %n, %4, !dbg !4945
  %6 = icmp eq i64 %5, 0, !dbg !4946
  br i1 %6, label %if.then3, label %cond.false, !dbg !4939

if.then3:                                         ; preds = %cond.false, %if.done2
  ret i1 true, !dbg !4947

cond.false:                                       ; preds = %if.done2
    #dbg_value(i64 %n, !4934, !DIExpression(), !4948)
  %7 = icmp eq i64 %n, -9223372036854775808, !dbg !4949
  %8 = and i1 false, %7, !dbg !4949
  %9 = select i1 %8, i64 1, i64 3, !dbg !4949
  %10 = srem i64 %n, %9, !dbg !4949
  %11 = icmp eq i64 %10, 0, !dbg !4950
  br i1 %11, label %if.then3, label %if.done4, !dbg !4939

if.done4:                                         ; preds = %cond.false
    #dbg_value(i64 5, !4935, !DIExpression(), !4951)
  br label %for.loop, !dbg !4939

for.loop:                                         ; preds = %if.done7, %if.done4
  %12 = phi i64 [ 5, %if.done4 ], [ %30, %if.done7 ], !dbg !4951
    #dbg_value(i64 %12, !4935, !DIExpression(), !4952)
    #dbg_value(i64 %12, !4935, !DIExpression(), !4953)
  %13 = mul i64 %12, %12, !dbg !4954
    #dbg_value(i64 %n, !4934, !DIExpression(), !4955)
  %14 = icmp sle i64 %13, %n, !dbg !4956
  br i1 %14, label %for.body, label %for.done, !dbg !4939

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %n, !4934, !DIExpression(), !4957)
    #dbg_value(i64 %12, !4935, !DIExpression(), !4958)
  %15 = icmp eq i64 %12, 0, !dbg !4959
  br i1 %15, label %divbyzero.throw, label %divbyzero.next, !dbg !4959

divbyzero.next:                                   ; preds = %for.body
  %16 = icmp eq i64 %12, -1, !dbg !4959
  %17 = icmp eq i64 %n, -9223372036854775808, !dbg !4959
  %18 = and i1 %16, %17, !dbg !4959
  %19 = select i1 %18, i64 1, i64 %12, !dbg !4959
  %20 = srem i64 %n, %19, !dbg !4959
  %21 = icmp eq i64 %20, 0, !dbg !4960
  br i1 %21, label %if.then5, label %cond.false6, !dbg !4939

if.then5:                                         ; preds = %divbyzero.next9, %divbyzero.next
  ret i1 true, !dbg !4961

cond.false6:                                      ; preds = %divbyzero.next
    #dbg_value(i64 %n, !4934, !DIExpression(), !4962)
    #dbg_value(i64 %12, !4935, !DIExpression(), !4963)
  %22 = add i64 %12, 2, !dbg !4964
  %23 = icmp eq i64 %22, 0, !dbg !4965
  br i1 %23, label %divbyzero.throw8, label %divbyzero.next9, !dbg !4965

divbyzero.next9:                                  ; preds = %cond.false6
  %24 = icmp eq i64 %22, -1, !dbg !4965
  %25 = icmp eq i64 %n, -9223372036854775808, !dbg !4965
  %26 = and i1 %24, %25, !dbg !4965
  %27 = select i1 %26, i64 1, i64 %22, !dbg !4965
  %28 = srem i64 %n, %27, !dbg !4965
  %29 = icmp eq i64 %28, 0, !dbg !4966
  br i1 %29, label %if.then5, label %if.done7, !dbg !4939

if.done7:                                         ; preds = %divbyzero.next9
    #dbg_value(i64 %12, !4935, !DIExpression(), !4967)
  %30 = add i64 %12, 6, !dbg !4968
    #dbg_value(i64 %30, !4935, !DIExpression(), !4969)
  br label %for.loop, !dbg !4939

for.done:                                         ; preds = %for.loop
  ret i1 false, !dbg !4970

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959

divbyzero.throw8:                                 ; preds = %cond.false6
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4965
  unreachable, !dbg !4965
}
