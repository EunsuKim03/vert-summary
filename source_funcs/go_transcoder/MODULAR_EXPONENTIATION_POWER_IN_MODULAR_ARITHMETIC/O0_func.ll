define i64 @f_gold(i64 %x, i64 %y, i64 %p) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %x, !4936, !DIExpression(), !4940)
    #dbg_value(i64 %y, !4937, !DIExpression(), !4940)
    #dbg_value(i64 %p, !4938, !DIExpression(), !4940)
    #dbg_value(i64 1, !4939, !DIExpression(), !4941)
    #dbg_value(i64 %x, !4936, !DIExpression(), !4942)
    #dbg_value(i64 %p, !4938, !DIExpression(), !4943)
  %0 = icmp eq i64 %p, 0, !dbg !4944
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !4944

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %p, -1, !dbg !4944
  %2 = icmp eq i64 %x, -9223372036854775808, !dbg !4944
  %3 = and i1 %1, %2, !dbg !4944
  %4 = select i1 %3, i64 1, i64 %p, !dbg !4944
  %5 = srem i64 %x, %4, !dbg !4944
    #dbg_value(i64 %5, !4936, !DIExpression(), !4945)
  br label %for.loop, !dbg !4946

for.loop:                                         ; preds = %divbyzero.next4, %divbyzero.next
  %6 = phi i64 [ %5, %divbyzero.next ], [ %27, %divbyzero.next4 ], !dbg !4947
  %7 = phi i64 [ %y, %divbyzero.next ], [ %shift.result, %divbyzero.next4 ], !dbg !4948
  %8 = phi i64 [ 1, %divbyzero.next ], [ %19, %divbyzero.next4 ], !dbg !4941
    #dbg_value(i64 %7, !4937, !DIExpression(), !4949)
  %9 = icmp ugt i64 %7, 0, !dbg !4950
  br i1 %9, label %for.body, label %for.done, !dbg !4946

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %7, !4937, !DIExpression(), !4951)
  %10 = and i64 %7, 1, !dbg !4952
  %11 = icmp ne i64 %10, 0, !dbg !4953
  br i1 %11, label %if.then, label %if.done, !dbg !4946

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %8, !4939, !DIExpression(), !4954)
    #dbg_value(i64 %6, !4936, !DIExpression(), !4955)
  %12 = mul i64 %8, %6, !dbg !4956
    #dbg_value(i64 %p, !4938, !DIExpression(), !4957)
  %13 = icmp eq i64 %p, 0, !dbg !4958
  br i1 %13, label %divbyzero.throw1, label %divbyzero.next2, !dbg !4958

divbyzero.next2:                                  ; preds = %if.then
  %14 = icmp eq i64 %p, -1, !dbg !4958
  %15 = icmp eq i64 %12, -9223372036854775808, !dbg !4958
  %16 = and i1 %14, %15, !dbg !4958
  %17 = select i1 %16, i64 1, i64 %p, !dbg !4958
  %18 = srem i64 %12, %17, !dbg !4958
    #dbg_value(i64 %18, !4939, !DIExpression(), !4959)
  br label %if.done, !dbg !4946

if.done:                                          ; preds = %divbyzero.next2, %for.body
  %19 = phi i64 [ %8, %for.body ], [ %18, %divbyzero.next2 ], !dbg !4941
    #dbg_value(i64 %7, !4937, !DIExpression(), !4960)
  %20 = lshr i64 %7, 1, !dbg !4961
  %shift.result = select i1 false, i64 0, i64 %20, !dbg !4961
    #dbg_value(i64 %shift.result, !4937, !DIExpression(), !4962)
    #dbg_value(i64 %6, !4936, !DIExpression(), !4963)
    #dbg_value(i64 %6, !4936, !DIExpression(), !4964)
  %21 = mul i64 %6, %6, !dbg !4965
    #dbg_value(i64 %p, !4938, !DIExpression(), !4966)
  %22 = icmp eq i64 %p, 0, !dbg !4967
  br i1 %22, label %divbyzero.throw3, label %divbyzero.next4, !dbg !4967

divbyzero.next4:                                  ; preds = %if.done
  %23 = icmp eq i64 %p, -1, !dbg !4967
  %24 = icmp eq i64 %21, -9223372036854775808, !dbg !4967
  %25 = and i1 %23, %24, !dbg !4967
  %26 = select i1 %25, i64 1, i64 %p, !dbg !4967
  %27 = srem i64 %21, %26, !dbg !4967
    #dbg_value(i64 %27, !4936, !DIExpression(), !4968)
  br label %for.loop, !dbg !4946

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %8, !4939, !DIExpression(), !4969)
  ret i64 %8, !dbg !4970

divbyzero.throw:                                  ; preds = %entry
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4944
  unreachable, !dbg !4944

divbyzero.throw1:                                 ; preds = %if.then
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4958
  unreachable, !dbg !4958

divbyzero.throw3:                                 ; preds = %if.done
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4967
  unreachable, !dbg !4967
}
