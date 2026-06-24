define i64 @f_gold(i64 %n) #1 !dbg !4936 {
entry:
    #dbg_value(i64 %n, !4939, !DIExpression(), !4943)
    #dbg_value(i64 0, !4940, !DIExpression(), !4944)
    #dbg_value(i64 1, !4941, !DIExpression(), !4945)
  br label %for.loop, !dbg !4946

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %n, %entry ], [ %11, %for.body ], !dbg !4947
  %1 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !4944
    #dbg_value(i64 %0, !4939, !DIExpression(), !4948)
  %2 = icmp eq i64 %0, -9223372036854775808, !dbg !4949
  %3 = and i1 false, %2, !dbg !4949
  %4 = select i1 %3, i64 1, i64 2, !dbg !4949
  %5 = srem i64 %0, %4, !dbg !4949
  %6 = icmp eq i64 %5, 0, !dbg !4950
  br i1 %6, label %for.body, label %for.done, !dbg !4946

for.body:                                         ; preds = %for.loop
  %7 = add i64 %1, 1, !dbg !4951
    #dbg_value(i64 %7, !4940, !DIExpression(), !4951)
  %8 = icmp eq i64 %0, -9223372036854775808, !dbg !4952
  %9 = and i1 false, %8, !dbg !4952
  %10 = select i1 %9, i64 1, i64 2, !dbg !4952
  %11 = sdiv i64 %0, %10, !dbg !4952
    #dbg_value(i64 %11, !4939, !DIExpression(), !4952)
  br label %for.loop, !dbg !4946

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4940, !DIExpression(), !4953)
  %12 = icmp eq i64 %1, -9223372036854775808, !dbg !4954
  %13 = and i1 false, %12, !dbg !4954
  %14 = select i1 %13, i64 1, i64 2, !dbg !4954
  %15 = srem i64 %1, %14, !dbg !4954
  %16 = icmp ne i64 %15, 0, !dbg !4955
  br i1 %16, label %if.then, label %if.done, !dbg !4946

if.then:                                          ; preds = %for.done
    #dbg_value(i64 2, !4941, !DIExpression(), !4956)
  br label %if.done, !dbg !4946

if.done:                                          ; preds = %if.then, %for.done
  %17 = phi i64 [ 1, %for.done ], [ 2, %if.then ], !dbg !4945
    #dbg_value(i64 3, !4942, !DIExpression(), !4957)
  br label %for.loop1, !dbg !4946

for.loop1:                                        ; preds = %if.done7, %if.done
  %18 = phi i64 [ %0, %if.done ], [ %25, %if.done7 ], !dbg !4947
  %19 = phi i64 [ %17, %if.done ], [ %47, %if.done7 ], !dbg !4945
  %20 = phi i64 [ 3, %if.done ], [ %48, %if.done7 ], !dbg !4957
    #dbg_value(i64 %20, !4942, !DIExpression(), !4958)
  %21 = sitofp i64 %20 to double, !dbg !4959
    #dbg_value(i64 %18, !4939, !DIExpression(), !4960)
  %22 = sitofp i64 %18 to double, !dbg !4961
  %23 = call double @math.Sqrt(double %22, ptr undef), !dbg !4962
  %24 = fcmp ole double %21, %23, !dbg !4963
  br i1 %24, label %for.body2, label %for.done8, !dbg !4946

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 0, !4940, !DIExpression(), !4964)
  br label %for.loop3, !dbg !4946

for.loop3:                                        ; preds = %divbyzero.next12, %for.body2
  %25 = phi i64 [ %18, %for.body2 ], [ %40, %divbyzero.next12 ], !dbg !4947
  %26 = phi i64 [ 0, %for.body2 ], [ %34, %divbyzero.next12 ], !dbg !4944
    #dbg_value(i64 %25, !4939, !DIExpression(), !4965)
    #dbg_value(i64 %20, !4942, !DIExpression(), !4966)
  %27 = icmp eq i64 %20, 0, !dbg !4967
  br i1 %27, label %divbyzero.throw, label %divbyzero.next, !dbg !4967

divbyzero.next:                                   ; preds = %for.loop3
  %28 = icmp eq i64 %20, -1, !dbg !4967
  %29 = icmp eq i64 %25, -9223372036854775808, !dbg !4967
  %30 = and i1 %28, %29, !dbg !4967
  %31 = select i1 %30, i64 1, i64 %20, !dbg !4967
  %32 = srem i64 %25, %31, !dbg !4967
  %33 = icmp eq i64 %32, 0, !dbg !4968
  br i1 %33, label %for.body4, label %for.done5, !dbg !4946

for.body4:                                        ; preds = %divbyzero.next
  %34 = add i64 %26, 1, !dbg !4969
    #dbg_value(i64 %34, !4940, !DIExpression(), !4969)
    #dbg_value(i64 %20, !4942, !DIExpression(), !4970)
  %35 = icmp eq i64 %20, 0, !dbg !4971
  br i1 %35, label %divbyzero.throw11, label %divbyzero.next12, !dbg !4971

divbyzero.next12:                                 ; preds = %for.body4
  %36 = icmp eq i64 %20, -1, !dbg !4971
  %37 = icmp eq i64 %25, -9223372036854775808, !dbg !4971
  %38 = and i1 %36, %37, !dbg !4971
  %39 = select i1 %38, i64 1, i64 %20, !dbg !4971
  %40 = sdiv i64 %25, %39, !dbg !4971
    #dbg_value(i64 %40, !4939, !DIExpression(), !4971)
  br label %for.loop3, !dbg !4946

for.done5:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %26, !4940, !DIExpression(), !4972)
  %41 = icmp eq i64 %26, -9223372036854775808, !dbg !4973
  %42 = and i1 false, %41, !dbg !4973
  %43 = select i1 %42, i64 1, i64 2, !dbg !4973
  %44 = srem i64 %26, %43, !dbg !4973
  %45 = icmp ne i64 %44, 0, !dbg !4974
  br i1 %45, label %if.then6, label %if.done7, !dbg !4946

if.then6:                                         ; preds = %for.done5
    #dbg_value(i64 %20, !4942, !DIExpression(), !4975)
  %46 = mul i64 %19, %20, !dbg !4976
    #dbg_value(i64 %46, !4941, !DIExpression(), !4976)
  br label %if.done7, !dbg !4946

if.done7:                                         ; preds = %if.then6, %for.done5
  %47 = phi i64 [ %19, %for.done5 ], [ %46, %if.then6 ], !dbg !4945
  %48 = add i64 %20, 2, !dbg !4977
    #dbg_value(i64 %48, !4942, !DIExpression(), !4977)
  br label %for.loop1, !dbg !4946

for.done8:                                        ; preds = %for.loop1
    #dbg_value(i64 %18, !4939, !DIExpression(), !4978)
  %49 = icmp sgt i64 %18, 2, !dbg !4979
  br i1 %49, label %if.then9, label %if.done10, !dbg !4946

if.then9:                                         ; preds = %for.done8
    #dbg_value(i64 %18, !4939, !DIExpression(), !4980)
  %50 = mul i64 %19, %18, !dbg !4981
    #dbg_value(i64 %50, !4941, !DIExpression(), !4981)
  br label %if.done10, !dbg !4946

if.done10:                                        ; preds = %if.then9, %for.done8
  %51 = phi i64 [ %19, %for.done8 ], [ %50, %if.then9 ], !dbg !4945
    #dbg_value(i64 %51, !4941, !DIExpression(), !4982)
  ret i64 %51, !dbg !4983

divbyzero.throw:                                  ; preds = %for.loop3
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4967
  unreachable, !dbg !4967

divbyzero.throw11:                                ; preds = %for.body4
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4971
  unreachable, !dbg !4971
}
