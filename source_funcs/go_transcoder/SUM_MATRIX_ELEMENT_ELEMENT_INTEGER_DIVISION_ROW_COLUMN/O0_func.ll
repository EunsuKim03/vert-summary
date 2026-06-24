define i64 @f_gold(i64 %n) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4934, !DIExpression(), !4938)
    #dbg_value(i64 0, !4935, !DIExpression(), !4939)
    #dbg_value(i64 1, !4936, !DIExpression(), !4940)
  br label %for.loop, !dbg !4941

for.loop:                                         ; preds = %for.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %3, %for.done ], !dbg !4939
  %1 = phi i64 [ 1, %entry ], [ %14, %for.done ], !dbg !4940
    #dbg_value(i64 %1, !4936, !DIExpression(), !4942)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4943)
  %2 = icmp sle i64 %1, %n, !dbg !4944
  br i1 %2, label %for.body, label %for.done3, !dbg !4941

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 1, !4937, !DIExpression(), !4945)
  br label %for.loop1, !dbg !4941

for.loop1:                                        ; preds = %divbyzero.next, %for.body
  %3 = phi i64 [ %0, %for.body ], [ %12, %divbyzero.next ], !dbg !4939
  %4 = phi i64 [ 1, %for.body ], [ %13, %divbyzero.next ], !dbg !4945
    #dbg_value(i64 %4, !4937, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4947)
  %5 = icmp sle i64 %4, %n, !dbg !4948
  br i1 %5, label %for.body2, label %for.done, !dbg !4941

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %1, !4936, !DIExpression(), !4949)
    #dbg_value(i64 %4, !4937, !DIExpression(), !4950)
  %6 = icmp eq i64 %4, 0, !dbg !4951
  br i1 %6, label %divbyzero.throw, label %divbyzero.next, !dbg !4951

divbyzero.next:                                   ; preds = %for.body2
  %7 = icmp eq i64 %4, -1, !dbg !4951
  %8 = icmp eq i64 %1, -9223372036854775808, !dbg !4951
  %9 = and i1 %7, %8, !dbg !4951
  %10 = select i1 %9, i64 1, i64 %4, !dbg !4951
  %11 = sdiv i64 %1, %10, !dbg !4951
  %12 = add i64 %3, %11, !dbg !4952
    #dbg_value(i64 %12, !4935, !DIExpression(), !4952)
  %13 = add i64 %4, 1, !dbg !4953
    #dbg_value(i64 %13, !4937, !DIExpression(), !4953)
  br label %for.loop1, !dbg !4941

for.done:                                         ; preds = %for.loop1
  %14 = add i64 %1, 1, !dbg !4954
    #dbg_value(i64 %14, !4936, !DIExpression(), !4954)
  br label %for.loop, !dbg !4941

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %0, !4935, !DIExpression(), !4955)
  ret i64 %0, !dbg !4956

divbyzero.throw:                                  ; preds = %for.body2
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951
}
