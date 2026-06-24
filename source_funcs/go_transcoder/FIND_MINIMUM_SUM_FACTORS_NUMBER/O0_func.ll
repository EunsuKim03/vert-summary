define i64 @f_gold(i64 %num) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %num, !4934, !DIExpression(), !4937)
    #dbg_value(i64 0, !4935, !DIExpression(), !4938)
    #dbg_value(i64 2, !4936, !DIExpression(), !4939)
  br label %for.loop, !dbg !4940

for.loop:                                         ; preds = %for.done, %entry
  %0 = phi i64 [ %num, %entry ], [ %5, %for.done ], !dbg !4941
  %1 = phi i64 [ 0, %entry ], [ %6, %for.done ], !dbg !4938
  %2 = phi i64 [ 2, %entry ], [ %21, %for.done ], !dbg !4939
    #dbg_value(i64 %2, !4936, !DIExpression(), !4942)
    #dbg_value(i64 %2, !4936, !DIExpression(), !4943)
  %3 = mul i64 %2, %2, !dbg !4944
    #dbg_value(i64 %0, !4934, !DIExpression(), !4945)
  %4 = icmp sle i64 %3, %0, !dbg !4946
  br i1 %4, label %for.loop1, label %for.done2, !dbg !4940

for.loop1:                                        ; preds = %divbyzero.next4, %for.loop
  %5 = phi i64 [ %0, %for.loop ], [ %20, %divbyzero.next4 ], !dbg !4941
  %6 = phi i64 [ %1, %for.loop ], [ %14, %divbyzero.next4 ], !dbg !4938
    #dbg_value(i64 %5, !4934, !DIExpression(), !4947)
    #dbg_value(i64 %2, !4936, !DIExpression(), !4948)
  %7 = icmp eq i64 %2, 0, !dbg !4949
  br i1 %7, label %divbyzero.throw, label %divbyzero.next, !dbg !4949

divbyzero.next:                                   ; preds = %for.loop1
  %8 = icmp eq i64 %2, -1, !dbg !4949
  %9 = icmp eq i64 %5, -9223372036854775808, !dbg !4949
  %10 = and i1 %8, %9, !dbg !4949
  %11 = select i1 %10, i64 1, i64 %2, !dbg !4949
  %12 = srem i64 %5, %11, !dbg !4949
  %13 = icmp eq i64 %12, 0, !dbg !4950
  br i1 %13, label %for.body, label %for.done, !dbg !4940

for.body:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %2, !4936, !DIExpression(), !4951)
  %14 = add i64 %6, %2, !dbg !4952
    #dbg_value(i64 %14, !4935, !DIExpression(), !4952)
    #dbg_value(i64 %2, !4936, !DIExpression(), !4953)
  %15 = icmp eq i64 %2, 0, !dbg !4954
  br i1 %15, label %divbyzero.throw3, label %divbyzero.next4, !dbg !4954

divbyzero.next4:                                  ; preds = %for.body
  %16 = icmp eq i64 %2, -1, !dbg !4954
  %17 = icmp eq i64 %5, -9223372036854775808, !dbg !4954
  %18 = and i1 %16, %17, !dbg !4954
  %19 = select i1 %18, i64 1, i64 %2, !dbg !4954
  %20 = sdiv i64 %5, %19, !dbg !4954
    #dbg_value(i64 %20, !4934, !DIExpression(), !4954)
  br label %for.loop1, !dbg !4940

for.done:                                         ; preds = %divbyzero.next
  %21 = add i64 %2, 1, !dbg !4955
    #dbg_value(i64 %21, !4936, !DIExpression(), !4955)
  br label %for.loop, !dbg !4940

for.done2:                                        ; preds = %for.loop
    #dbg_value(i64 %0, !4934, !DIExpression(), !4956)
  %22 = add i64 %1, %0, !dbg !4957
    #dbg_value(i64 %22, !4935, !DIExpression(), !4957)
    #dbg_value(i64 %22, !4935, !DIExpression(), !4958)
  ret i64 %22, !dbg !4959

divbyzero.throw:                                  ; preds = %for.loop1
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4949
  unreachable, !dbg !4949

divbyzero.throw3:                                 ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4954
  unreachable, !dbg !4954
}
