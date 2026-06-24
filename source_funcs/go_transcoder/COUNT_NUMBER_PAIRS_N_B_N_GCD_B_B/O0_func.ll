define i64 @f_gold(i64 %n) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4934, !DIExpression(), !4939)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4940)
    #dbg_value(i64 %n, !4935, !DIExpression(), !4941)
    #dbg_value(i64 1, !4936, !DIExpression(), !4942)
    #dbg_value(i64 0, !4937, !DIExpression(), !4943)
  br label %for.loop, !dbg !4944

for.loop:                                         ; preds = %divbyzero.next2, %entry
  %0 = phi i64 [ %n, %entry ], [ %20, %divbyzero.next2 ], !dbg !4941
  %1 = phi i64 [ 1, %entry ], [ %14, %divbyzero.next2 ], !dbg !4942
  %2 = phi i64 [ 0, %entry ], [ %13, %divbyzero.next2 ], !dbg !4943
    #dbg_value(i64 %1, !4936, !DIExpression(), !4945)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4946)
  %3 = icmp sle i64 %1, %n, !dbg !4947
  br i1 %3, label %for.body, label %for.done, !dbg !4944

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %n, !4934, !DIExpression(), !4948)
    #dbg_value(i64 %0, !4935, !DIExpression(), !4949)
  %4 = icmp eq i64 %0, 0, !dbg !4950
  br i1 %4, label %divbyzero.throw, label %divbyzero.next, !dbg !4950

divbyzero.next:                                   ; preds = %for.body
  %5 = icmp eq i64 %0, -1, !dbg !4950
  %6 = icmp eq i64 %n, -9223372036854775808, !dbg !4950
  %7 = and i1 %5, %6, !dbg !4950
  %8 = select i1 %7, i64 1, i64 %0, !dbg !4950
  %9 = sdiv i64 %n, %8, !dbg !4950
    #dbg_value(i64 %9, !4938, !DIExpression(), !4951)
    #dbg_value(i64 %0, !4935, !DIExpression(), !4952)
    #dbg_value(i64 %9, !4938, !DIExpression(), !4953)
    #dbg_value(i64 %1, !4936, !DIExpression(), !4954)
  %10 = sub i64 %9, %1, !dbg !4955
  %11 = add i64 %10, 1, !dbg !4956
  %12 = mul i64 %0, %11, !dbg !4957
  %13 = add i64 %2, %12, !dbg !4958
    #dbg_value(i64 %13, !4937, !DIExpression(), !4958)
    #dbg_value(i64 %9, !4938, !DIExpression(), !4959)
  %14 = add i64 %9, 1, !dbg !4960
    #dbg_value(i64 %14, !4936, !DIExpression(), !4961)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4962)
    #dbg_value(i64 %14, !4936, !DIExpression(), !4963)
  %15 = icmp eq i64 %14, 0, !dbg !4964
  br i1 %15, label %divbyzero.throw1, label %divbyzero.next2, !dbg !4964

divbyzero.next2:                                  ; preds = %divbyzero.next
  %16 = icmp eq i64 %14, -1, !dbg !4964
  %17 = icmp eq i64 %n, -9223372036854775808, !dbg !4964
  %18 = and i1 %16, %17, !dbg !4964
  %19 = select i1 %18, i64 1, i64 %14, !dbg !4964
  %20 = sdiv i64 %n, %19, !dbg !4964
    #dbg_value(i64 %20, !4935, !DIExpression(), !4965)
  br label %for.loop, !dbg !4944

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !4937, !DIExpression(), !4966)
  ret i64 %2, !dbg !4967

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4950
  unreachable, !dbg !4950

divbyzero.throw1:                                 ; preds = %divbyzero.next
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4964
  unreachable, !dbg !4964
}
