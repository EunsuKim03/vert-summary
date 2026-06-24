define i64 @f_gold(i64 %n) #1 !dbg !4936 {
entry:
    #dbg_value(i64 %n, !4939, !DIExpression(), !4942)
    #dbg_value(i64 0, !4940, !DIExpression(), !4943)
    #dbg_value(i64 %n, !4939, !DIExpression(), !4944)
  %0 = icmp eq i64 %n, -9223372036854775808, !dbg !4945
  %1 = and i1 false, %0, !dbg !4945
  %2 = select i1 %1, i64 1, i64 2, !dbg !4945
  %3 = srem i64 %n, %2, !dbg !4945
  %4 = icmp eq i64 %3, 0, !dbg !4946
  br i1 %4, label %if.then, label %if.done, !dbg !4947

if.then:                                          ; preds = %entry
    #dbg_value(i64 1, !4940, !DIExpression(), !4948)
  br label %for.loop, !dbg !4947

for.loop:                                         ; preds = %for.body, %if.then
  %5 = phi i64 [ %n, %if.then ], [ %14, %for.body ], !dbg !4949
    #dbg_value(i64 %5, !4939, !DIExpression(), !4950)
  %6 = icmp eq i64 %5, -9223372036854775808, !dbg !4951
  %7 = and i1 false, %6, !dbg !4951
  %8 = select i1 %7, i64 1, i64 2, !dbg !4951
  %9 = srem i64 %5, %8, !dbg !4951
  %10 = icmp eq i64 %9, 0, !dbg !4952
  br i1 %10, label %for.body, label %if.done, !dbg !4947

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4939, !DIExpression(), !4953)
  %11 = icmp eq i64 %5, -9223372036854775808, !dbg !4954
  %12 = and i1 false, %11, !dbg !4954
  %13 = select i1 %12, i64 1, i64 2, !dbg !4954
  %14 = sdiv i64 %5, %13, !dbg !4954
    #dbg_value(i64 %14, !4939, !DIExpression(), !4955)
  br label %for.loop, !dbg !4947

if.done:                                          ; preds = %for.loop, %entry
  %15 = phi i64 [ %n, %entry ], [ %5, %for.loop ], !dbg !4949
  %16 = phi i64 [ 0, %entry ], [ 1, %for.loop ], !dbg !4943
    #dbg_value(i64 3, !4941, !DIExpression(), !4956)
  br label %for.loop1, !dbg !4947

for.loop1:                                        ; preds = %if.done6, %if.done
  %17 = phi i64 [ %15, %if.done ], [ %46, %if.done6 ], !dbg !4949
  %18 = phi i64 [ %16, %if.done ], [ %47, %if.done6 ], !dbg !4943
  %19 = phi i64 [ 3, %if.done ], [ %48, %if.done6 ], !dbg !4956
    #dbg_value(i64 %19, !4941, !DIExpression(), !4957)
  %20 = sitofp i64 %19 to double, !dbg !4958
    #dbg_value(i64 %17, !4939, !DIExpression(), !4959)
  %21 = sitofp i64 %17 to double, !dbg !4960
  %22 = call double @math.Sqrt(double %21, ptr undef), !dbg !4961
  %23 = fcmp ole double %20, %22, !dbg !4962
  br i1 %23, label %for.body2, label %for.done, !dbg !4947

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %17, !4939, !DIExpression(), !4963)
    #dbg_value(i64 %19, !4941, !DIExpression(), !4964)
  %24 = icmp eq i64 %19, 0, !dbg !4965
  br i1 %24, label %divbyzero.throw, label %divbyzero.next, !dbg !4965

divbyzero.next:                                   ; preds = %for.body2
  %25 = icmp eq i64 %19, -1, !dbg !4965
  %26 = icmp eq i64 %17, -9223372036854775808, !dbg !4965
  %27 = and i1 %25, %26, !dbg !4965
  %28 = select i1 %27, i64 1, i64 %19, !dbg !4965
  %29 = srem i64 %17, %28, !dbg !4965
  %30 = icmp eq i64 %29, 0, !dbg !4966
  br i1 %30, label %if.then3, label %if.done6, !dbg !4947

if.then3:                                         ; preds = %divbyzero.next
  %31 = add i64 %18, 1, !dbg !4967
    #dbg_value(i64 %31, !4940, !DIExpression(), !4967)
  br label %for.loop4, !dbg !4947

for.loop4:                                        ; preds = %divbyzero.next12, %if.then3
  %32 = phi i64 [ %17, %if.then3 ], [ %45, %divbyzero.next12 ], !dbg !4949
    #dbg_value(i64 %32, !4939, !DIExpression(), !4968)
    #dbg_value(i64 %19, !4941, !DIExpression(), !4969)
  %33 = icmp eq i64 %19, 0, !dbg !4970
  br i1 %33, label %divbyzero.throw9, label %divbyzero.next10, !dbg !4970

divbyzero.next10:                                 ; preds = %for.loop4
  %34 = icmp eq i64 %19, -1, !dbg !4970
  %35 = icmp eq i64 %32, -9223372036854775808, !dbg !4970
  %36 = and i1 %34, %35, !dbg !4970
  %37 = select i1 %36, i64 1, i64 %19, !dbg !4970
  %38 = srem i64 %32, %37, !dbg !4970
  %39 = icmp eq i64 %38, 0, !dbg !4971
  br i1 %39, label %for.body5, label %if.done6, !dbg !4947

for.body5:                                        ; preds = %divbyzero.next10
    #dbg_value(i64 %32, !4939, !DIExpression(), !4972)
    #dbg_value(i64 %19, !4941, !DIExpression(), !4973)
  %40 = icmp eq i64 %19, 0, !dbg !4974
  br i1 %40, label %divbyzero.throw11, label %divbyzero.next12, !dbg !4974

divbyzero.next12:                                 ; preds = %for.body5
  %41 = icmp eq i64 %19, -1, !dbg !4974
  %42 = icmp eq i64 %32, -9223372036854775808, !dbg !4974
  %43 = and i1 %41, %42, !dbg !4974
  %44 = select i1 %43, i64 1, i64 %19, !dbg !4974
  %45 = sdiv i64 %32, %44, !dbg !4974
    #dbg_value(i64 %45, !4939, !DIExpression(), !4975)
  br label %for.loop4, !dbg !4947

if.done6:                                         ; preds = %divbyzero.next10, %divbyzero.next
  %46 = phi i64 [ %17, %divbyzero.next ], [ %32, %divbyzero.next10 ], !dbg !4949
  %47 = phi i64 [ %18, %divbyzero.next ], [ %31, %divbyzero.next10 ], !dbg !4943
    #dbg_value(i64 %19, !4941, !DIExpression(), !4976)
  %48 = add i64 %19, 2, !dbg !4977
    #dbg_value(i64 %48, !4941, !DIExpression(), !4978)
  br label %for.loop1, !dbg !4947

for.done:                                         ; preds = %for.loop1
    #dbg_value(i64 %17, !4939, !DIExpression(), !4979)
  %49 = icmp sgt i64 %17, 2, !dbg !4980
  br i1 %49, label %if.then7, label %if.done8, !dbg !4947

if.then7:                                         ; preds = %for.done
  %50 = add i64 %18, 1, !dbg !4981
    #dbg_value(i64 %50, !4940, !DIExpression(), !4981)
  br label %if.done8, !dbg !4947

if.done8:                                         ; preds = %if.then7, %for.done
  %51 = phi i64 [ %18, %for.done ], [ %50, %if.then7 ], !dbg !4943
    #dbg_value(i64 %51, !4940, !DIExpression(), !4982)
  ret i64 %51, !dbg !4983

divbyzero.throw:                                  ; preds = %for.body2
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4965
  unreachable, !dbg !4965

divbyzero.throw9:                                 ; preds = %for.loop4
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4970
  unreachable, !dbg !4970

divbyzero.throw11:                                ; preds = %for.body5
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4974
  unreachable, !dbg !4974
}
