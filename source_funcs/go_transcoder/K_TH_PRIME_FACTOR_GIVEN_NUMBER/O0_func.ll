define i64 @f_gold(i64 %n, i64 %k) #1 !dbg !4936 {
entry:
    #dbg_value(i64 %n, !4941, !DIExpression(), !4944)
    #dbg_value(i64 %k, !4942, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %n, %entry ], [ %11, %for.body ], !dbg !4946
  %1 = phi i64 [ %k, %entry ], [ %7, %for.body ], !dbg !4947
    #dbg_value(i64 %0, !4941, !DIExpression(), !4948)
  %2 = icmp eq i64 %0, -9223372036854775808, !dbg !4949
  %3 = and i1 false, %2, !dbg !4949
  %4 = select i1 %3, i64 1, i64 2, !dbg !4949
  %5 = srem i64 %0, %4, !dbg !4949
  %6 = icmp eq i64 %5, 0, !dbg !4950
  br i1 %6, label %for.body, label %for.done, !dbg !4945

for.body:                                         ; preds = %for.loop
  %7 = sub i64 %1, 1, !dbg !4951
    #dbg_value(i64 %7, !4942, !DIExpression(), !4951)
    #dbg_value(i64 %0, !4941, !DIExpression(), !4952)
  %8 = icmp eq i64 %0, -9223372036854775808, !dbg !4953
  %9 = and i1 false, %8, !dbg !4953
  %10 = select i1 %9, i64 1, i64 2, !dbg !4953
  %11 = sdiv i64 %0, %10, !dbg !4953
    #dbg_value(i64 %11, !4941, !DIExpression(), !4954)
    #dbg_value(i64 %7, !4942, !DIExpression(), !4955)
  %12 = icmp eq i64 %7, 0, !dbg !4956
  br i1 %12, label %if.then, label %for.loop, !dbg !4945

if.then:                                          ; preds = %for.body
  ret i64 2, !dbg !4957

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 3, !4943, !DIExpression(), !4958)
  br label %for.loop1, !dbg !4945

for.loop1:                                        ; preds = %for.done5, %for.done
  %13 = phi i64 [ %0, %for.done ], [ %20, %for.done5 ], !dbg !4946
  %14 = phi i64 [ %1, %for.done ], [ %21, %for.done5 ], !dbg !4947
  %15 = phi i64 [ 3, %for.done ], [ %37, %for.done5 ], !dbg !4958
    #dbg_value(i64 %15, !4943, !DIExpression(), !4959)
  %16 = sitofp i64 %15 to double, !dbg !4960
    #dbg_value(i64 %13, !4941, !DIExpression(), !4961)
  %17 = sitofp i64 %13 to double, !dbg !4962
  %18 = call double @math.Sqrt(double %17, ptr undef), !dbg !4963
  %19 = fcmp ole double %16, %18, !dbg !4964
  br i1 %19, label %for.loop2, label %for.done6, !dbg !4945

for.loop2:                                        ; preds = %divbyzero.next10, %for.loop1
  %20 = phi i64 [ %13, %for.loop1 ], [ %36, %divbyzero.next10 ], !dbg !4946
  %21 = phi i64 [ %14, %for.loop1 ], [ %30, %divbyzero.next10 ], !dbg !4947
    #dbg_value(i64 %20, !4941, !DIExpression(), !4965)
    #dbg_value(i64 %15, !4943, !DIExpression(), !4966)
  %22 = icmp eq i64 %15, 0, !dbg !4967
  br i1 %22, label %divbyzero.throw, label %divbyzero.next, !dbg !4967

divbyzero.next:                                   ; preds = %for.loop2
  %23 = icmp eq i64 %15, -1, !dbg !4967
  %24 = icmp eq i64 %20, -9223372036854775808, !dbg !4967
  %25 = and i1 %23, %24, !dbg !4967
  %26 = select i1 %25, i64 1, i64 %15, !dbg !4967
  %27 = srem i64 %20, %26, !dbg !4967
  %28 = icmp eq i64 %27, 0, !dbg !4968
  br i1 %28, label %for.body3, label %for.done5, !dbg !4945

for.body3:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %21, !4942, !DIExpression(), !4969)
  %29 = icmp eq i64 %21, 1, !dbg !4970
  br i1 %29, label %if.then4, label %if.done, !dbg !4945

if.then4:                                         ; preds = %for.body3
    #dbg_value(i64 %15, !4943, !DIExpression(), !4971)
  ret i64 %15, !dbg !4972

if.done:                                          ; preds = %for.body3
  %30 = sub i64 %21, 1, !dbg !4973
    #dbg_value(i64 %30, !4942, !DIExpression(), !4973)
    #dbg_value(i64 %20, !4941, !DIExpression(), !4974)
    #dbg_value(i64 %15, !4943, !DIExpression(), !4975)
  %31 = icmp eq i64 %15, 0, !dbg !4976
  br i1 %31, label %divbyzero.throw9, label %divbyzero.next10, !dbg !4976

divbyzero.next10:                                 ; preds = %if.done
  %32 = icmp eq i64 %15, -1, !dbg !4976
  %33 = icmp eq i64 %20, -9223372036854775808, !dbg !4976
  %34 = and i1 %32, %33, !dbg !4976
  %35 = select i1 %34, i64 1, i64 %15, !dbg !4976
  %36 = sdiv i64 %20, %35, !dbg !4976
    #dbg_value(i64 %36, !4941, !DIExpression(), !4977)
  br label %for.loop2, !dbg !4945

for.done5:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %15, !4943, !DIExpression(), !4978)
  %37 = add i64 %15, 2, !dbg !4979
    #dbg_value(i64 %37, !4943, !DIExpression(), !4980)
  br label %for.loop1, !dbg !4945

for.done6:                                        ; preds = %for.loop1
    #dbg_value(i64 %13, !4941, !DIExpression(), !4981)
  %38 = icmp sgt i64 %13, 2, !dbg !4982
  br i1 %38, label %cond.true, label %if.done8, !dbg !4945

cond.true:                                        ; preds = %for.done6
    #dbg_value(i64 %14, !4942, !DIExpression(), !4983)
  %39 = icmp eq i64 %14, 1, !dbg !4984
  br i1 %39, label %if.then7, label %if.done8, !dbg !4945

if.then7:                                         ; preds = %cond.true
    #dbg_value(i64 %13, !4941, !DIExpression(), !4985)
  ret i64 %13, !dbg !4986

if.done8:                                         ; preds = %cond.true, %for.done6
  ret i64 -1, !dbg !4987

divbyzero.throw:                                  ; preds = %for.loop2
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4967
  unreachable, !dbg !4967

divbyzero.throw9:                                 ; preds = %if.done
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4976
  unreachable, !dbg !4976
}
