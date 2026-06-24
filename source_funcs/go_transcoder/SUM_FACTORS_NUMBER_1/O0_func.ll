define i64 @f_gold(i64 %n) #1 !dbg !4936 {
entry:
    #dbg_value(i64 %n, !4939, !DIExpression(), !4944)
    #dbg_value(i64 1, !4940, !DIExpression(), !4945)
    #dbg_value(i64 2, !4941, !DIExpression(), !4946)
  br label %for.loop, !dbg !4947

for.loop:                                         ; preds = %for.done, %entry
  %0 = phi i64 [ %n, %entry ], [ %7, %for.done ], !dbg !4948
  %1 = phi i64 [ 1, %entry ], [ %25, %for.done ], !dbg !4945
  %2 = phi i64 [ 2, %entry ], [ %26, %for.done ], !dbg !4946
    #dbg_value(i64 %2, !4941, !DIExpression(), !4949)
  %3 = sitofp i64 %2 to double, !dbg !4950
    #dbg_value(i64 %0, !4939, !DIExpression(), !4951)
  %4 = sitofp i64 %0 to double, !dbg !4952
  %5 = call double @math.Sqrt(double %4, ptr undef), !dbg !4953
  %6 = fcmp ole double %3, %5, !dbg !4954
  br i1 %6, label %for.body, label %for.done3, !dbg !4947

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 1, !4942, !DIExpression(), !4955)
    #dbg_value(i64 1, !4943, !DIExpression(), !4956)
  br label %for.loop1, !dbg !4947

for.loop1:                                        ; preds = %divbyzero.next5, %for.body
  %7 = phi i64 [ %0, %for.body ], [ %22, %divbyzero.next5 ], !dbg !4948
  %8 = phi i64 [ 1, %for.body ], [ %24, %divbyzero.next5 ], !dbg !4955
  %9 = phi i64 [ 1, %for.body ], [ %23, %divbyzero.next5 ], !dbg !4956
    #dbg_value(i64 %7, !4939, !DIExpression(), !4957)
    #dbg_value(i64 %2, !4941, !DIExpression(), !4958)
  %10 = icmp eq i64 %2, 0, !dbg !4959
  br i1 %10, label %divbyzero.throw, label %divbyzero.next, !dbg !4959

divbyzero.next:                                   ; preds = %for.loop1
  %11 = icmp eq i64 %2, -1, !dbg !4959
  %12 = icmp eq i64 %7, -9223372036854775808, !dbg !4959
  %13 = and i1 %11, %12, !dbg !4959
  %14 = select i1 %13, i64 1, i64 %2, !dbg !4959
  %15 = srem i64 %7, %14, !dbg !4959
  %16 = icmp eq i64 %15, 0, !dbg !4960
  br i1 %16, label %for.body2, label %for.done, !dbg !4947

for.body2:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %7, !4939, !DIExpression(), !4961)
    #dbg_value(i64 %2, !4941, !DIExpression(), !4962)
  %17 = icmp eq i64 %2, 0, !dbg !4963
  br i1 %17, label %divbyzero.throw4, label %divbyzero.next5, !dbg !4963

divbyzero.next5:                                  ; preds = %for.body2
  %18 = icmp eq i64 %2, -1, !dbg !4963
  %19 = icmp eq i64 %7, -9223372036854775808, !dbg !4963
  %20 = and i1 %18, %19, !dbg !4963
  %21 = select i1 %20, i64 1, i64 %2, !dbg !4963
  %22 = sdiv i64 %7, %21, !dbg !4963
    #dbg_value(i64 %22, !4939, !DIExpression(), !4964)
    #dbg_value(i64 %2, !4941, !DIExpression(), !4965)
  %23 = mul i64 %9, %2, !dbg !4966
    #dbg_value(i64 %23, !4943, !DIExpression(), !4966)
    #dbg_value(i64 %23, !4943, !DIExpression(), !4967)
  %24 = add i64 %8, %23, !dbg !4968
    #dbg_value(i64 %24, !4942, !DIExpression(), !4968)
  br label %for.loop1, !dbg !4947

for.done:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %8, !4942, !DIExpression(), !4969)
  %25 = mul i64 %1, %8, !dbg !4970
    #dbg_value(i64 %25, !4940, !DIExpression(), !4970)
  %26 = add i64 %2, 1, !dbg !4971
    #dbg_value(i64 %26, !4941, !DIExpression(), !4971)
  br label %for.loop, !dbg !4947

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %0, !4939, !DIExpression(), !4972)
  %27 = icmp sge i64 %0, 2, !dbg !4973
  br i1 %27, label %if.then, label %if.done, !dbg !4947

if.then:                                          ; preds = %for.done3
    #dbg_value(i64 %0, !4939, !DIExpression(), !4974)
  %28 = add i64 %0, 1, !dbg !4975
  %29 = mul i64 %1, %28, !dbg !4976
    #dbg_value(i64 %29, !4940, !DIExpression(), !4976)
  br label %if.done, !dbg !4947

if.done:                                          ; preds = %if.then, %for.done3
  %30 = phi i64 [ %1, %for.done3 ], [ %29, %if.then ], !dbg !4945
    #dbg_value(i64 %30, !4940, !DIExpression(), !4977)
  ret i64 %30, !dbg !4978

divbyzero.throw:                                  ; preds = %for.loop1
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959

divbyzero.throw4:                                 ; preds = %for.body2
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4963
  unreachable, !dbg !4963
}
