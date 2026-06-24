define i64 @f_gold(i64 %n) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4934, !DIExpression(), !4937)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4938)
  %0 = icmp slt i64 %n, 3, !dbg !4939
  br i1 %0, label %if.then, label %if.done, !dbg !4940

if.then:                                          ; preds = %entry
    #dbg_value(i64 %n, !4934, !DIExpression(), !4941)
  ret i64 %n, !dbg !4942

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !4934, !DIExpression(), !4943)
  %1 = icmp sge i64 %n, 3, !dbg !4944
  br i1 %1, label %cond.true, label %if.done2, !dbg !4940

cond.true:                                        ; preds = %if.done
    #dbg_value(i64 %n, !4934, !DIExpression(), !4945)
  %2 = icmp slt i64 %n, 10, !dbg !4946
  br i1 %2, label %if.then1, label %if.done2, !dbg !4940

if.then1:                                         ; preds = %cond.true
    #dbg_value(i64 %n, !4934, !DIExpression(), !4947)
  %3 = sub i64 %n, 1, !dbg !4948
  ret i64 %3, !dbg !4949

if.done2:                                         ; preds = %cond.true, %if.done
    #dbg_value(i64 1, !4935, !DIExpression(), !4950)
  br label %for.loop, !dbg !4940

for.loop:                                         ; preds = %for.body, %if.done2
  %4 = phi i64 [ 1, %if.done2 ], [ %12, %for.body ], !dbg !4950
    #dbg_value(i64 %n, !4934, !DIExpression(), !4951)
    #dbg_value(i64 %4, !4935, !DIExpression(), !4952)
  %5 = icmp eq i64 %4, 0, !dbg !4953
  br i1 %5, label %divbyzero.throw, label %divbyzero.next, !dbg !4953

divbyzero.next:                                   ; preds = %for.loop
  %6 = icmp eq i64 %4, -1, !dbg !4953
  %7 = icmp eq i64 %n, -9223372036854775808, !dbg !4953
  %8 = and i1 %6, %7, !dbg !4953
  %9 = select i1 %8, i64 1, i64 %4, !dbg !4953
  %10 = sdiv i64 %n, %9, !dbg !4953
  %11 = icmp sgt i64 %10, 9, !dbg !4954
  br i1 %11, label %for.body, label %for.done, !dbg !4940

for.body:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %4, !4935, !DIExpression(), !4955)
  %12 = mul i64 %4, 10, !dbg !4956
    #dbg_value(i64 %12, !4935, !DIExpression(), !4957)
  br label %for.loop, !dbg !4940

for.done:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %n, !4934, !DIExpression(), !4958)
    #dbg_value(i64 %4, !4935, !DIExpression(), !4959)
  %13 = icmp eq i64 %4, 0, !dbg !4960
  br i1 %13, label %divbyzero.throw4, label %divbyzero.next5, !dbg !4960

divbyzero.next5:                                  ; preds = %for.done
  %14 = icmp eq i64 %4, -1, !dbg !4960
  %15 = icmp eq i64 %n, -9223372036854775808, !dbg !4960
  %16 = and i1 %14, %15, !dbg !4960
  %17 = select i1 %16, i64 1, i64 %4, !dbg !4960
  %18 = sdiv i64 %n, %17, !dbg !4960
    #dbg_value(i64 %18, !4936, !DIExpression(), !4961)
    #dbg_value(i64 %18, !4936, !DIExpression(), !4962)
  %19 = icmp ne i64 %18, 3, !dbg !4963
  br i1 %19, label %if.then3, label %if.else, !dbg !4940

if.then3:                                         ; preds = %divbyzero.next5
    #dbg_value(i64 %18, !4936, !DIExpression(), !4964)
  %20 = call i64 @f_gold(i64 %18), !dbg !4965
    #dbg_value(i64 %4, !4935, !DIExpression(), !4966)
  %21 = sub i64 %4, 1, !dbg !4967
  %22 = call i64 @f_gold(i64 %21), !dbg !4968
  %23 = mul i64 %20, %22, !dbg !4969
    #dbg_value(i64 %18, !4936, !DIExpression(), !4970)
  %24 = call i64 @f_gold(i64 %18), !dbg !4971
  %25 = add i64 %23, %24, !dbg !4972
    #dbg_value(i64 %n, !4934, !DIExpression(), !4973)
    #dbg_value(i64 %4, !4935, !DIExpression(), !4974)
  %26 = icmp eq i64 %4, 0, !dbg !4975
  br i1 %26, label %divbyzero.throw6, label %divbyzero.next7, !dbg !4975

divbyzero.next7:                                  ; preds = %if.then3
  %27 = icmp eq i64 %4, -1, !dbg !4975
  %28 = icmp eq i64 %n, -9223372036854775808, !dbg !4975
  %29 = and i1 %27, %28, !dbg !4975
  %30 = select i1 %29, i64 1, i64 %4, !dbg !4975
  %31 = srem i64 %n, %30, !dbg !4975
  %32 = call i64 @f_gold(i64 %31), !dbg !4976
  %33 = add i64 %25, %32, !dbg !4977
  ret i64 %33, !dbg !4978

if.else:                                          ; preds = %divbyzero.next5
    #dbg_value(i64 %18, !4936, !DIExpression(), !4979)
    #dbg_value(i64 %4, !4935, !DIExpression(), !4980)
  %34 = mul i64 %18, %4, !dbg !4981
  %35 = sub i64 %34, 1, !dbg !4982
  %36 = call i64 @f_gold(i64 %35), !dbg !4983
  ret i64 %36, !dbg !4984

divbyzero.throw:                                  ; preds = %for.loop
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4953
  unreachable, !dbg !4953

divbyzero.throw4:                                 ; preds = %for.done
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4960
  unreachable, !dbg !4960

divbyzero.throw6:                                 ; preds = %if.then3
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4975
  unreachable, !dbg !4975
}
