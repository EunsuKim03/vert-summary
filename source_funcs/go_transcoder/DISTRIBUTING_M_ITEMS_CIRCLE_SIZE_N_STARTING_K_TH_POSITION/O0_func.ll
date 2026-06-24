define i64 @f_gold(i64 %n, i64 %m, i64 %k) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4936, !DIExpression(), !4939)
    #dbg_value(i64 %m, !4937, !DIExpression(), !4939)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4939)
    #dbg_value(i64 %m, !4937, !DIExpression(), !4940)
    #dbg_value(i64 %n, !4936, !DIExpression(), !4941)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4942)
  %0 = sub i64 %n, %k, !dbg !4943
  %1 = add i64 %0, 1, !dbg !4944
  %2 = icmp sle i64 %m, %1, !dbg !4945
  br i1 %2, label %if.then, label %if.done, !dbg !4946

if.then:                                          ; preds = %entry
    #dbg_value(i64 %m, !4937, !DIExpression(), !4947)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4948)
  %3 = add i64 %m, %k, !dbg !4949
  %4 = sub i64 %3, 1, !dbg !4950
  ret i64 %4, !dbg !4951

if.done:                                          ; preds = %entry
    #dbg_value(i64 %m, !4937, !DIExpression(), !4952)
    #dbg_value(i64 %n, !4936, !DIExpression(), !4953)
    #dbg_value(i64 %k, !4938, !DIExpression(), !4954)
  %5 = sub i64 %n, %k, !dbg !4955
  %6 = add i64 %5, 1, !dbg !4956
  %7 = sub i64 %m, %6, !dbg !4957
    #dbg_value(i64 %7, !4937, !DIExpression(), !4958)
    #dbg_value(i64 %7, !4937, !DIExpression(), !4959)
    #dbg_value(i64 %n, !4936, !DIExpression(), !4960)
  %8 = icmp eq i64 %n, 0, !dbg !4961
  br i1 %8, label %divbyzero.throw, label %divbyzero.next, !dbg !4961

divbyzero.next:                                   ; preds = %if.done
  %9 = icmp eq i64 %n, -1, !dbg !4961
  %10 = icmp eq i64 %7, -9223372036854775808, !dbg !4961
  %11 = and i1 %9, %10, !dbg !4961
  %12 = select i1 %11, i64 1, i64 %n, !dbg !4961
  %13 = srem i64 %7, %12, !dbg !4961
  %14 = icmp eq i64 %13, 0, !dbg !4962
  br i1 %14, label %if.then1, label %if.done2, !dbg !4946

if.then1:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %n, !4936, !DIExpression(), !4963)
  ret i64 %n, !dbg !4964

if.done2:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %7, !4937, !DIExpression(), !4965)
    #dbg_value(i64 %n, !4936, !DIExpression(), !4966)
  %15 = icmp eq i64 %n, 0, !dbg !4967
  br i1 %15, label %divbyzero.throw3, label %divbyzero.next4, !dbg !4967

divbyzero.next4:                                  ; preds = %if.done2
  %16 = icmp eq i64 %n, -1, !dbg !4967
  %17 = icmp eq i64 %7, -9223372036854775808, !dbg !4967
  %18 = and i1 %16, %17, !dbg !4967
  %19 = select i1 %18, i64 1, i64 %n, !dbg !4967
  %20 = srem i64 %7, %19, !dbg !4967
  ret i64 %20, !dbg !4968

divbyzero.throw:                                  ; preds = %if.done
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4961
  unreachable, !dbg !4961

divbyzero.throw3:                                 ; preds = %if.done2
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4967
  unreachable, !dbg !4967
}
