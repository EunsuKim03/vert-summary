define i64 @f_gold(i64 %n) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4934, !DIExpression(), !4937)
    #dbg_value(i64 0, !4935, !DIExpression(), !4938)
    #dbg_value(i64 1, !4936, !DIExpression(), !4939)
  br label %for.loop, !dbg !4940

for.loop:                                         ; preds = %divbyzero.next, %entry
  %0 = phi i64 [ 0, %entry ], [ %10, %divbyzero.next ], !dbg !4938
  %1 = phi i64 [ 1, %entry ], [ %11, %divbyzero.next ], !dbg !4939
    #dbg_value(i64 %1, !4936, !DIExpression(), !4941)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4942)
  %2 = icmp sle i64 %1, %n, !dbg !4943
  br i1 %2, label %for.body, label %for.done, !dbg !4940

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %n, !4934, !DIExpression(), !4944)
    #dbg_value(i64 %1, !4936, !DIExpression(), !4945)
  %3 = icmp eq i64 %1, 0, !dbg !4946
  br i1 %3, label %divbyzero.throw, label %divbyzero.next, !dbg !4946

divbyzero.next:                                   ; preds = %for.body
  %4 = icmp eq i64 %1, -1, !dbg !4946
  %5 = icmp eq i64 %n, -9223372036854775808, !dbg !4946
  %6 = and i1 %4, %5, !dbg !4946
  %7 = select i1 %6, i64 1, i64 %1, !dbg !4946
  %8 = sdiv i64 %n, %7, !dbg !4946
    #dbg_value(i64 %1, !4936, !DIExpression(), !4947)
  %9 = mul i64 %8, %1, !dbg !4948
  %10 = add i64 %0, %9, !dbg !4949
    #dbg_value(i64 %10, !4935, !DIExpression(), !4949)
  %11 = add i64 %1, 1, !dbg !4950
    #dbg_value(i64 %11, !4936, !DIExpression(), !4950)
  br label %for.loop, !dbg !4940

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4935, !DIExpression(), !4951)
  ret i64 %0, !dbg !4952

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4946
  unreachable, !dbg !4946
}
