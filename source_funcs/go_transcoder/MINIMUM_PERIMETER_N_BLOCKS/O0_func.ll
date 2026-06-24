define i64 @f_gold(i64 %n) #1 !dbg !4936 {
entry:
    #dbg_value(i64 %n, !4939, !DIExpression(), !4944)
    #dbg_value(i64 %n, !4939, !DIExpression(), !4945)
  %0 = sitofp i64 %n to double, !dbg !4946
  %1 = call double @math.Sqrt(double %0, ptr undef), !dbg !4947
  %abovemin = fcmp ole double 0xC3E0000000000000, %1, !dbg !4948
  %belowmax = fcmp ole double %1, 0x43DFFFFFFFFFFFFE, !dbg !4948
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4948
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4948
  %isnan = fcmp uno double %1, %1, !dbg !4948
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4948
  %normal = fptosi double %1 to i64, !dbg !4948
  %2 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4948
    #dbg_value(i64 %2, !4940, !DIExpression(), !4949)
    #dbg_value(i64 %2, !4940, !DIExpression(), !4950)
    #dbg_value(i64 %2, !4940, !DIExpression(), !4951)
  %3 = mul i64 %2, %2, !dbg !4952
    #dbg_value(i64 %3, !4941, !DIExpression(), !4953)
    #dbg_value(i64 %3, !4941, !DIExpression(), !4954)
    #dbg_value(i64 %n, !4939, !DIExpression(), !4955)
  %4 = icmp eq i64 %3, %n, !dbg !4956
  br i1 %4, label %if.then, label %if.else, !dbg !4957

if.then:                                          ; preds = %entry
    #dbg_value(i64 %2, !4940, !DIExpression(), !4958)
  %5 = mul i64 %2, 4, !dbg !4959
  ret i64 %5, !dbg !4960

if.else:                                          ; preds = %entry
    #dbg_value(i64 %n, !4939, !DIExpression(), !4961)
    #dbg_value(i64 %2, !4940, !DIExpression(), !4962)
  %6 = icmp eq i64 %2, 0, !dbg !4963
  br i1 %6, label %divbyzero.throw, label %divbyzero.next, !dbg !4963

divbyzero.next:                                   ; preds = %if.else
  %7 = icmp eq i64 %2, -1, !dbg !4963
  %8 = icmp eq i64 %n, -9223372036854775808, !dbg !4963
  %9 = and i1 %7, %8, !dbg !4963
  %10 = select i1 %9, i64 1, i64 %2, !dbg !4963
  %11 = sdiv i64 %n, %10, !dbg !4963
  %12 = sitofp i64 %11 to double, !dbg !4964
    #dbg_value(double %12, !4942, !DIExpression(), !4965)
    #dbg_value(i64 %2, !4940, !DIExpression(), !4966)
    #dbg_value(double %12, !4942, !DIExpression(), !4967)
  %abovemin2 = fcmp ole double 0xC3E0000000000000, %12, !dbg !4968
  %belowmax3 = fcmp ole double %12, 0x43DFFFFFFFFFFFFE, !dbg !4968
  %inbounds4 = and i1 %abovemin2, %belowmax3, !dbg !4968
  %saturated5 = select i1 %abovemin2, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4968
  %isnan6 = fcmp uno double %12, %12, !dbg !4968
  %remapped7 = select i1 %isnan6, i64 0, i64 %saturated5, !dbg !4968
  %normal8 = fptosi double %12 to i64, !dbg !4968
  %13 = select i1 %inbounds4, i64 %normal8, i64 %remapped7, !dbg !4968
  %14 = add i64 %2, %13, !dbg !4969
  %15 = mul i64 %14, 2, !dbg !4970
  %16 = sitofp i64 %15 to double, !dbg !4971
    #dbg_value(double %16, !4943, !DIExpression(), !4972)
    #dbg_value(i64 %n, !4939, !DIExpression(), !4973)
    #dbg_value(i64 %2, !4940, !DIExpression(), !4974)
  %17 = icmp eq i64 %2, 0, !dbg !4975
  br i1 %17, label %divbyzero.throw9, label %divbyzero.next10, !dbg !4975

divbyzero.next10:                                 ; preds = %divbyzero.next
  %18 = icmp eq i64 %2, -1, !dbg !4975
  %19 = icmp eq i64 %n, -9223372036854775808, !dbg !4975
  %20 = and i1 %18, %19, !dbg !4975
  %21 = select i1 %20, i64 1, i64 %2, !dbg !4975
  %22 = srem i64 %n, %21, !dbg !4975
  %23 = icmp ne i64 %22, 0, !dbg !4976
  br i1 %23, label %if.then1, label %if.done, !dbg !4957

if.then1:                                         ; preds = %divbyzero.next10
  %24 = fadd double %16, 2.000000e+00, !dbg !4977
    #dbg_value(double %24, !4943, !DIExpression(), !4977)
  br label %if.done, !dbg !4957

if.done:                                          ; preds = %if.then1, %divbyzero.next10
  %25 = phi double [ %16, %divbyzero.next10 ], [ %24, %if.then1 ], !dbg !4972
    #dbg_value(double %25, !4943, !DIExpression(), !4978)
  %abovemin11 = fcmp ole double 0xC3E0000000000000, %25, !dbg !4979
  %belowmax12 = fcmp ole double %25, 0x43DFFFFFFFFFFFFE, !dbg !4979
  %inbounds13 = and i1 %abovemin11, %belowmax12, !dbg !4979
  %saturated14 = select i1 %abovemin11, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4979
  %isnan15 = fcmp uno double %25, %25, !dbg !4979
  %remapped16 = select i1 %isnan15, i64 0, i64 %saturated14, !dbg !4979
  %normal17 = fptosi double %25 to i64, !dbg !4979
  %26 = select i1 %inbounds13, i64 %normal17, i64 %remapped16, !dbg !4979
  ret i64 %26, !dbg !4980

divbyzero.throw:                                  ; preds = %if.else
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4963
  unreachable, !dbg !4963

divbyzero.throw9:                                 ; preds = %divbyzero.next
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4975
  unreachable, !dbg !4975
}
