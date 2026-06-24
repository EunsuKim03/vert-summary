define i64 @f_gold(i64 %num) #1 !dbg !4936 {
entry:
    #dbg_value(i64 %num, !4939, !DIExpression(), !4942)
    #dbg_value(i64 0, !4940, !DIExpression(), !4943)
    #dbg_value(i64 2, !4941, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %29, %if.done ], !dbg !4943
  %1 = phi i64 [ 2, %entry ], [ %30, %if.done ], !dbg !4944
    #dbg_value(i64 %1, !4941, !DIExpression(), !4946)
  %2 = sitofp i64 %1 to double, !dbg !4947
    #dbg_value(i64 %num, !4939, !DIExpression(), !4948)
  %3 = sitofp i64 %num to double, !dbg !4949
  %4 = call double @math.Sqrt(double %3, ptr undef), !dbg !4950
  %5 = fcmp ole double %2, %4, !dbg !4951
  br i1 %5, label %for.body, label %for.done, !dbg !4945

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %num, !4939, !DIExpression(), !4952)
    #dbg_value(i64 %1, !4941, !DIExpression(), !4953)
  %6 = icmp eq i64 %1, 0, !dbg !4954
  br i1 %6, label %divbyzero.throw, label %divbyzero.next, !dbg !4954

divbyzero.next:                                   ; preds = %for.body
  %7 = icmp eq i64 %1, -1, !dbg !4954
  %8 = icmp eq i64 %num, -9223372036854775808, !dbg !4954
  %9 = and i1 %7, %8, !dbg !4954
  %10 = select i1 %9, i64 1, i64 %1, !dbg !4954
  %11 = srem i64 %num, %10, !dbg !4954
  %12 = icmp eq i64 %11, 0, !dbg !4955
  br i1 %12, label %if.then, label %if.done, !dbg !4945

if.then:                                          ; preds = %divbyzero.next
    #dbg_value(i64 %1, !4941, !DIExpression(), !4956)
    #dbg_value(i64 %num, !4939, !DIExpression(), !4957)
    #dbg_value(i64 %1, !4941, !DIExpression(), !4958)
  %13 = icmp eq i64 %1, 0, !dbg !4959
  br i1 %13, label %divbyzero.throw2, label %divbyzero.next3, !dbg !4959

divbyzero.next3:                                  ; preds = %if.then
  %14 = icmp eq i64 %1, -1, !dbg !4959
  %15 = icmp eq i64 %num, -9223372036854775808, !dbg !4959
  %16 = and i1 %14, %15, !dbg !4959
  %17 = select i1 %16, i64 1, i64 %1, !dbg !4959
  %18 = sdiv i64 %num, %17, !dbg !4959
  %19 = icmp eq i64 %1, %18, !dbg !4960
  br i1 %19, label %if.then1, label %if.else, !dbg !4945

if.then1:                                         ; preds = %divbyzero.next3
    #dbg_value(i64 %1, !4941, !DIExpression(), !4961)
  %20 = add i64 %0, %1, !dbg !4962
    #dbg_value(i64 %20, !4940, !DIExpression(), !4962)
  br label %if.done, !dbg !4945

if.else:                                          ; preds = %divbyzero.next3
    #dbg_value(i64 %1, !4941, !DIExpression(), !4963)
    #dbg_value(i64 %num, !4939, !DIExpression(), !4964)
    #dbg_value(i64 %1, !4941, !DIExpression(), !4965)
  %21 = icmp eq i64 %1, 0, !dbg !4966
  br i1 %21, label %divbyzero.throw4, label %divbyzero.next5, !dbg !4966

divbyzero.next5:                                  ; preds = %if.else
  %22 = icmp eq i64 %1, -1, !dbg !4966
  %23 = icmp eq i64 %num, -9223372036854775808, !dbg !4966
  %24 = and i1 %22, %23, !dbg !4966
  %25 = select i1 %24, i64 1, i64 %1, !dbg !4966
  %26 = sdiv i64 %num, %25, !dbg !4966
  %27 = add i64 %1, %26, !dbg !4967
  %28 = add i64 %0, %27, !dbg !4968
    #dbg_value(i64 %28, !4940, !DIExpression(), !4968)
  br label %if.done, !dbg !4945

if.done:                                          ; preds = %divbyzero.next5, %if.then1, %divbyzero.next
  %29 = phi i64 [ %0, %divbyzero.next ], [ %20, %if.then1 ], [ %28, %divbyzero.next5 ], !dbg !4943
  %30 = add i64 %1, 1, !dbg !4969
    #dbg_value(i64 %30, !4941, !DIExpression(), !4969)
  br label %for.loop, !dbg !4945

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4940, !DIExpression(), !4970)
  %31 = add i64 %0, 1, !dbg !4971
  ret i64 %31, !dbg !4972

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4954
  unreachable, !dbg !4954

divbyzero.throw2:                                 ; preds = %if.then
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4959
  unreachable, !dbg !4959

divbyzero.throw4:                                 ; preds = %if.else
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4966
  unreachable, !dbg !4966
}
