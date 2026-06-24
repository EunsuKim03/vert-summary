define i1 @f_gold(i64 %num) #1 !dbg !4952 {
entry:
    #dbg_value(i64 %num, !4955, !DIExpression(), !4958)
    #dbg_value(i64 %num, !4955, !DIExpression(), !4959)
  %0 = icmp eq i64 %num, -9223372036854775808, !dbg !4960
  %1 = and i1 false, %0, !dbg !4960
  %2 = select i1 %1, i64 1, i64 10, !dbg !4960
  %3 = sdiv i64 %num, %2, !dbg !4960
  %4 = icmp eq i64 %3, 0, !dbg !4961
  br i1 %4, label %if.then, label %for.loop, !dbg !4962

if.then:                                          ; preds = %entry
  ret i1 true, !dbg !4963

for.loop:                                         ; preds = %if.done3, %entry
  %5 = phi i64 [ %num, %entry ], [ %31, %if.done3 ], !dbg !4964
    #dbg_value(i64 %5, !4955, !DIExpression(), !4965)
  %6 = icmp ne i64 %5, 0, !dbg !4966
  br i1 %6, label %for.body, label %for.done, !dbg !4962

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %5, !4955, !DIExpression(), !4967)
  %7 = icmp eq i64 %5, -9223372036854775808, !dbg !4968
  %8 = and i1 false, %7, !dbg !4968
  %9 = select i1 %8, i64 1, i64 10, !dbg !4968
  %10 = sdiv i64 %5, %9, !dbg !4968
  %11 = icmp eq i64 %10, 0, !dbg !4969
  br i1 %11, label %if.then1, label %if.done, !dbg !4962

if.then1:                                         ; preds = %for.body
  ret i1 true, !dbg !4970

if.done:                                          ; preds = %for.body
    #dbg_value(i64 %5, !4955, !DIExpression(), !4971)
  %12 = icmp eq i64 %5, -9223372036854775808, !dbg !4972
  %13 = and i1 false, %12, !dbg !4972
  %14 = select i1 %13, i64 1, i64 10, !dbg !4972
  %15 = srem i64 %5, %14, !dbg !4972
    #dbg_value(i64 %15, !4956, !DIExpression(), !4973)
    #dbg_value(i64 %5, !4955, !DIExpression(), !4974)
  %16 = icmp eq i64 %5, -9223372036854775808, !dbg !4975
  %17 = and i1 false, %16, !dbg !4975
  %18 = select i1 %17, i64 1, i64 10, !dbg !4975
  %19 = sdiv i64 %5, %18, !dbg !4975
  %20 = icmp eq i64 %19, -9223372036854775808, !dbg !4976
  %21 = and i1 false, %20, !dbg !4976
  %22 = select i1 %21, i64 1, i64 10, !dbg !4976
  %23 = srem i64 %19, %22, !dbg !4976
    #dbg_value(i64 %23, !4957, !DIExpression(), !4977)
    #dbg_value(i64 %23, !4957, !DIExpression(), !4978)
    #dbg_value(i64 %15, !4956, !DIExpression(), !4979)
  %24 = sub i64 %23, %15, !dbg !4980
  %25 = sitofp i64 %24 to double, !dbg !4981
  %26 = call double @math.Abs(double %25, ptr undef), !dbg !4982
  %27 = fcmp ogt double %26, 1.000000e+00, !dbg !4983
  br i1 %27, label %if.then2, label %if.done3, !dbg !4962

if.then2:                                         ; preds = %if.done
  ret i1 false, !dbg !4984

if.done3:                                         ; preds = %if.done
    #dbg_value(i64 %5, !4955, !DIExpression(), !4985)
  %28 = icmp eq i64 %5, -9223372036854775808, !dbg !4986
  %29 = and i1 false, %28, !dbg !4986
  %30 = select i1 %29, i64 1, i64 10, !dbg !4986
  %31 = sdiv i64 %5, %30, !dbg !4986
    #dbg_value(i64 %31, !4955, !DIExpression(), !4987)
  br label %for.loop, !dbg !4962

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4988
}
