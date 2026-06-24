define i64 @f_gold(i64 %N, i64 %K) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %N, !4936, !DIExpression(), !4941)
    #dbg_value(i64 %K, !4937, !DIExpression(), !4941)
    #dbg_value(i64 0, !4938, !DIExpression(), !4942)
    #dbg_value(i64 %N, !4936, !DIExpression(), !4943)
    #dbg_value(i64 %K, !4937, !DIExpression(), !4944)
  %0 = icmp eq i64 %K, 0, !dbg !4945
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !4945

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %K, -1, !dbg !4945
  %2 = icmp eq i64 %N, -9223372036854775808, !dbg !4945
  %3 = and i1 %1, %2, !dbg !4945
  %4 = select i1 %3, i64 1, i64 %K, !dbg !4945
  %5 = sdiv i64 %N, %4, !dbg !4945
    #dbg_value(i64 %5, !4939, !DIExpression(), !4946)
    #dbg_value(i64 %N, !4936, !DIExpression(), !4947)
    #dbg_value(i64 %K, !4937, !DIExpression(), !4948)
  %6 = icmp eq i64 %K, 0, !dbg !4949
  br i1 %6, label %divbyzero.throw1, label %divbyzero.next2, !dbg !4949

divbyzero.next2:                                  ; preds = %divbyzero.next
  %7 = icmp eq i64 %K, -1, !dbg !4949
  %8 = icmp eq i64 %N, -9223372036854775808, !dbg !4949
  %9 = and i1 %7, %8, !dbg !4949
  %10 = select i1 %9, i64 1, i64 %K, !dbg !4949
  %11 = srem i64 %N, %10, !dbg !4949
    #dbg_value(i64 %11, !4940, !DIExpression(), !4950)
    #dbg_value(i64 %K, !4937, !DIExpression(), !4951)
    #dbg_value(i64 %K, !4937, !DIExpression(), !4952)
  %12 = sub i64 %K, 1, !dbg !4953
  %13 = mul i64 %K, %12, !dbg !4954
  %14 = icmp eq i64 %13, -9223372036854775808, !dbg !4955
  %15 = and i1 false, %14, !dbg !4955
  %16 = select i1 %15, i64 1, i64 2, !dbg !4955
  %17 = sdiv i64 %13, %16, !dbg !4955
    #dbg_value(i64 %5, !4939, !DIExpression(), !4956)
  %18 = mul i64 %17, %5, !dbg !4957
    #dbg_value(i64 %11, !4940, !DIExpression(), !4958)
    #dbg_value(i64 %11, !4940, !DIExpression(), !4959)
  %19 = add i64 %11, 1, !dbg !4960
  %20 = mul i64 %11, %19, !dbg !4961
  %21 = icmp eq i64 %20, -9223372036854775808, !dbg !4962
  %22 = and i1 false, %21, !dbg !4962
  %23 = select i1 %22, i64 1, i64 2, !dbg !4962
  %24 = sdiv i64 %20, %23, !dbg !4962
  %25 = add i64 %18, %24, !dbg !4963
    #dbg_value(i64 %25, !4938, !DIExpression(), !4964)
    #dbg_value(i64 %25, !4938, !DIExpression(), !4965)
  ret i64 %25, !dbg !4966

divbyzero.throw:                                  ; preds = %entry
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4945
  unreachable, !dbg !4945

divbyzero.throw1:                                 ; preds = %divbyzero.next
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4949
  unreachable, !dbg !4949
}
