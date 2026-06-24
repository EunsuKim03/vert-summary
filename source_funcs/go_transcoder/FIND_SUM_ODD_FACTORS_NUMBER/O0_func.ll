define i64 @f_gold(i64 %n) #1 !dbg !4936 {
entry:
    #dbg_value(i64 %n, !4939, !DIExpression(), !4945)
    #dbg_value(i64 1, !4940, !DIExpression(), !4946)
  br label %for.loop, !dbg !4947

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %n, %entry ], [ %9, %for.body ], !dbg !4948
    #dbg_value(i64 %0, !4939, !DIExpression(), !4949)
  %1 = icmp eq i64 %0, -9223372036854775808, !dbg !4950
  %2 = and i1 false, %1, !dbg !4950
  %3 = select i1 %2, i64 1, i64 2, !dbg !4950
  %4 = srem i64 %0, %3, !dbg !4950
  %5 = icmp eq i64 %4, 0, !dbg !4951
  br i1 %5, label %for.body, label %for.done, !dbg !4947

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4939, !DIExpression(), !4952)
  %6 = icmp eq i64 %0, -9223372036854775808, !dbg !4953
  %7 = and i1 false, %6, !dbg !4953
  %8 = select i1 %7, i64 1, i64 2, !dbg !4953
  %9 = sdiv i64 %0, %8, !dbg !4953
    #dbg_value(i64 %9, !4939, !DIExpression(), !4954)
  br label %for.loop, !dbg !4947

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 3, !4941, !DIExpression(), !4955)
  br label %for.loop1, !dbg !4947

for.loop1:                                        ; preds = %for.done5, %for.done
  %10 = phi i64 [ %0, %for.done ], [ %17, %for.done5 ], !dbg !4948
  %11 = phi i64 [ 1, %for.done ], [ %37, %for.done5 ], !dbg !4946
  %12 = phi i64 [ 3, %for.done ], [ %38, %for.done5 ], !dbg !4955
    #dbg_value(i64 %12, !4941, !DIExpression(), !4956)
  %13 = sitofp i64 %12 to double, !dbg !4957
    #dbg_value(i64 %10, !4939, !DIExpression(), !4958)
  %14 = sitofp i64 %10 to double, !dbg !4959
  %15 = call double @math.Sqrt(double %14, ptr undef), !dbg !4960
  %16 = fcmp ole double %13, %15, !dbg !4961
  br i1 %16, label %for.body2, label %for.done6, !dbg !4947

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 0, !4942, !DIExpression(), !4962)
    #dbg_value(i64 1, !4943, !DIExpression(), !4963)
    #dbg_value(i64 1, !4944, !DIExpression(), !4964)
  br label %for.loop3, !dbg !4947

for.loop3:                                        ; preds = %divbyzero.next8, %for.body2
  %17 = phi i64 [ %10, %for.body2 ], [ %34, %divbyzero.next8 ], !dbg !4948
  %18 = phi i64 [ 0, %for.body2 ], [ %28, %divbyzero.next8 ], !dbg !4962
  %19 = phi i64 [ 1, %for.body2 ], [ %36, %divbyzero.next8 ], !dbg !4963
  %20 = phi i64 [ 1, %for.body2 ], [ %35, %divbyzero.next8 ], !dbg !4964
    #dbg_value(i64 %17, !4939, !DIExpression(), !4965)
    #dbg_value(i64 %12, !4941, !DIExpression(), !4966)
  %21 = icmp eq i64 %12, 0, !dbg !4967
  br i1 %21, label %divbyzero.throw, label %divbyzero.next, !dbg !4967

divbyzero.next:                                   ; preds = %for.loop3
  %22 = icmp eq i64 %12, -1, !dbg !4967
  %23 = icmp eq i64 %17, -9223372036854775808, !dbg !4967
  %24 = and i1 %22, %23, !dbg !4967
  %25 = select i1 %24, i64 1, i64 %12, !dbg !4967
  %26 = srem i64 %17, %25, !dbg !4967
  %27 = icmp eq i64 %26, 0, !dbg !4968
  br i1 %27, label %for.body4, label %for.done5, !dbg !4947

for.body4:                                        ; preds = %divbyzero.next
  %28 = add i64 %18, 1, !dbg !4969
    #dbg_value(i64 %28, !4942, !DIExpression(), !4969)
    #dbg_value(i64 %17, !4939, !DIExpression(), !4970)
    #dbg_value(i64 %12, !4941, !DIExpression(), !4971)
  %29 = icmp eq i64 %12, 0, !dbg !4972
  br i1 %29, label %divbyzero.throw7, label %divbyzero.next8, !dbg !4972

divbyzero.next8:                                  ; preds = %for.body4
  %30 = icmp eq i64 %12, -1, !dbg !4972
  %31 = icmp eq i64 %17, -9223372036854775808, !dbg !4972
  %32 = and i1 %30, %31, !dbg !4972
  %33 = select i1 %32, i64 1, i64 %12, !dbg !4972
  %34 = sdiv i64 %17, %33, !dbg !4972
    #dbg_value(i64 %34, !4939, !DIExpression(), !4973)
    #dbg_value(i64 %12, !4941, !DIExpression(), !4974)
  %35 = mul i64 %20, %12, !dbg !4975
    #dbg_value(i64 %35, !4944, !DIExpression(), !4975)
    #dbg_value(i64 %35, !4944, !DIExpression(), !4976)
  %36 = add i64 %19, %35, !dbg !4977
    #dbg_value(i64 %36, !4943, !DIExpression(), !4977)
  br label %for.loop3, !dbg !4947

for.done5:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %19, !4943, !DIExpression(), !4978)
  %37 = mul i64 %11, %19, !dbg !4979
    #dbg_value(i64 %37, !4940, !DIExpression(), !4979)
  %38 = add i64 %12, 1, !dbg !4980
    #dbg_value(i64 %38, !4941, !DIExpression(), !4980)
  br label %for.loop1, !dbg !4947

for.done6:                                        ; preds = %for.loop1
    #dbg_value(i64 %10, !4939, !DIExpression(), !4981)
  %39 = icmp sge i64 %10, 2, !dbg !4982
  br i1 %39, label %if.then, label %if.done, !dbg !4947

if.then:                                          ; preds = %for.done6
    #dbg_value(i64 %10, !4939, !DIExpression(), !4983)
  %40 = add i64 %10, 1, !dbg !4984
  %41 = mul i64 %11, %40, !dbg !4985
    #dbg_value(i64 %41, !4940, !DIExpression(), !4985)
  br label %if.done, !dbg !4947

if.done:                                          ; preds = %if.then, %for.done6
  %42 = phi i64 [ %11, %for.done6 ], [ %41, %if.then ], !dbg !4946
    #dbg_value(i64 %42, !4940, !DIExpression(), !4986)
  ret i64 %42, !dbg !4987

divbyzero.throw:                                  ; preds = %for.loop3
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4967
  unreachable, !dbg !4967

divbyzero.throw7:                                 ; preds = %for.body4
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4972
  unreachable, !dbg !4972
}
