define i64 @f_gold(i64 %n) #1 !dbg !4936 {
entry:
    #dbg_value(i64 %n, !4939, !DIExpression(), !4945)
    #dbg_value(i64 %n, !4939, !DIExpression(), !4946)
  %0 = icmp eq i64 %n, -9223372036854775808, !dbg !4947
  %1 = and i1 false, %0, !dbg !4947
  %2 = select i1 %1, i64 1, i64 2, !dbg !4947
  %3 = srem i64 %n, %2, !dbg !4947
  %4 = icmp ne i64 %3, 0, !dbg !4948
  br i1 %4, label %if.then, label %if.done, !dbg !4949

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4950

if.done:                                          ; preds = %entry
    #dbg_value(i64 1, !4940, !DIExpression(), !4951)
    #dbg_value(i64 2, !4941, !DIExpression(), !4952)
  br label %for.loop, !dbg !4949

for.loop:                                         ; preds = %for.done, %if.done
  %5 = phi i64 [ %n, %if.done ], [ %12, %for.done ], !dbg !4953
  %6 = phi i64 [ 1, %if.done ], [ %35, %for.done ], !dbg !4951
  %7 = phi i64 [ 2, %if.done ], [ %36, %for.done ], !dbg !4952
    #dbg_value(i64 %7, !4941, !DIExpression(), !4954)
  %8 = sitofp i64 %7 to double, !dbg !4955
    #dbg_value(i64 %5, !4939, !DIExpression(), !4956)
  %9 = sitofp i64 %5 to double, !dbg !4957
  %10 = call double @math.Sqrt(double %9, ptr undef), !dbg !4958
  %11 = fcmp ole double %8, %10, !dbg !4959
  br i1 %11, label %for.body, label %for.done5, !dbg !4949

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4942, !DIExpression(), !4960)
    #dbg_value(i64 1, !4943, !DIExpression(), !4961)
    #dbg_value(i64 1, !4944, !DIExpression(), !4962)
  br label %for.loop1, !dbg !4949

for.loop1:                                        ; preds = %if.done4, %for.body
  %12 = phi i64 [ %5, %for.body ], [ %29, %if.done4 ], !dbg !4953
  %13 = phi i64 [ 0, %for.body ], [ %23, %if.done4 ], !dbg !4960
  %14 = phi i64 [ 1, %for.body ], [ %34, %if.done4 ], !dbg !4961
  %15 = phi i64 [ 1, %for.body ], [ %33, %if.done4 ], !dbg !4962
    #dbg_value(i64 %12, !4939, !DIExpression(), !4963)
    #dbg_value(i64 %7, !4941, !DIExpression(), !4964)
  %16 = icmp eq i64 %7, 0, !dbg !4965
  br i1 %16, label %divbyzero.throw, label %divbyzero.next, !dbg !4965

divbyzero.next:                                   ; preds = %for.loop1
  %17 = icmp eq i64 %7, -1, !dbg !4965
  %18 = icmp eq i64 %12, -9223372036854775808, !dbg !4965
  %19 = and i1 %17, %18, !dbg !4965
  %20 = select i1 %19, i64 1, i64 %7, !dbg !4965
  %21 = srem i64 %12, %20, !dbg !4965
  %22 = icmp eq i64 %21, 0, !dbg !4966
  br i1 %22, label %for.body2, label %for.done, !dbg !4949

for.body2:                                        ; preds = %divbyzero.next
  %23 = add i64 %13, 1, !dbg !4967
    #dbg_value(i64 %23, !4942, !DIExpression(), !4967)
    #dbg_value(i64 %12, !4939, !DIExpression(), !4968)
    #dbg_value(i64 %7, !4941, !DIExpression(), !4969)
  %24 = icmp eq i64 %7, 0, !dbg !4970
  br i1 %24, label %divbyzero.throw8, label %divbyzero.next9, !dbg !4970

divbyzero.next9:                                  ; preds = %for.body2
  %25 = icmp eq i64 %7, -1, !dbg !4970
  %26 = icmp eq i64 %12, -9223372036854775808, !dbg !4970
  %27 = and i1 %25, %26, !dbg !4970
  %28 = select i1 %27, i64 1, i64 %7, !dbg !4970
  %29 = sdiv i64 %12, %28, !dbg !4970
    #dbg_value(i64 %29, !4939, !DIExpression(), !4971)
    #dbg_value(i64 %7, !4941, !DIExpression(), !4972)
  %30 = icmp eq i64 %7, 2, !dbg !4973
  br i1 %30, label %cond.true, label %if.done4, !dbg !4949

cond.true:                                        ; preds = %divbyzero.next9
    #dbg_value(i64 %23, !4942, !DIExpression(), !4974)
  %31 = icmp eq i64 %23, 1, !dbg !4975
  br i1 %31, label %if.then3, label %if.done4, !dbg !4949

if.then3:                                         ; preds = %cond.true
    #dbg_value(i64 0, !4943, !DIExpression(), !4976)
  br label %if.done4, !dbg !4949

if.done4:                                         ; preds = %if.then3, %cond.true, %divbyzero.next9
  %32 = phi i64 [ %14, %divbyzero.next9 ], [ %14, %cond.true ], [ 0, %if.then3 ], !dbg !4961
    #dbg_value(i64 %7, !4941, !DIExpression(), !4977)
  %33 = mul i64 %15, %7, !dbg !4978
    #dbg_value(i64 %33, !4944, !DIExpression(), !4978)
    #dbg_value(i64 %33, !4944, !DIExpression(), !4979)
  %34 = add i64 %32, %33, !dbg !4980
    #dbg_value(i64 %34, !4943, !DIExpression(), !4980)
  br label %for.loop1, !dbg !4949

for.done:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %14, !4943, !DIExpression(), !4981)
  %35 = mul i64 %6, %14, !dbg !4982
    #dbg_value(i64 %35, !4940, !DIExpression(), !4982)
  %36 = add i64 %7, 1, !dbg !4983
    #dbg_value(i64 %36, !4941, !DIExpression(), !4983)
  br label %for.loop, !dbg !4949

for.done5:                                        ; preds = %for.loop
    #dbg_value(i64 %5, !4939, !DIExpression(), !4984)
  %37 = icmp sge i64 %5, 2, !dbg !4985
  br i1 %37, label %if.then6, label %if.done7, !dbg !4949

if.then6:                                         ; preds = %for.done5
    #dbg_value(i64 %5, !4939, !DIExpression(), !4986)
  %38 = add i64 %5, 1, !dbg !4987
  %39 = mul i64 %6, %38, !dbg !4988
    #dbg_value(i64 %39, !4940, !DIExpression(), !4988)
  br label %if.done7, !dbg !4949

if.done7:                                         ; preds = %if.then6, %for.done5
  %40 = phi i64 [ %6, %for.done5 ], [ %39, %if.then6 ], !dbg !4951
    #dbg_value(i64 %40, !4940, !DIExpression(), !4989)
  ret i64 %40, !dbg !4990

divbyzero.throw:                                  ; preds = %for.loop1
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4965
  unreachable, !dbg !4965

divbyzero.throw8:                                 ; preds = %for.body2
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4970
  unreachable, !dbg !4970
}
