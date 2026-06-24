define i64 @f_gold(i64 %n) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4934, !DIExpression(), !4937)
    #dbg_value(i64 0, !4935, !DIExpression(), !4938)
    #dbg_value(i64 5, !4936, !DIExpression(), !4939)
  br label %for.loop, !dbg !4940

for.loop:                                         ; preds = %divbyzero.next2, %entry
  %0 = phi i64 [ 0, %entry ], [ %15, %divbyzero.next2 ], !dbg !4938
  %1 = phi i64 [ 5, %entry ], [ %16, %divbyzero.next2 ], !dbg !4939
    #dbg_value(i64 %n, !4934, !DIExpression(), !4941)
    #dbg_value(i64 %1, !4936, !DIExpression(), !4942)
  %2 = icmp eq i64 %1, 0, !dbg !4943
  br i1 %2, label %divbyzero.throw, label %divbyzero.next, !dbg !4943

divbyzero.next:                                   ; preds = %for.loop
  %3 = icmp eq i64 %1, -1, !dbg !4943
  %4 = icmp eq i64 %n, -9223372036854775808, !dbg !4943
  %5 = and i1 %3, %4, !dbg !4943
  %6 = select i1 %5, i64 1, i64 %1, !dbg !4943
  %7 = sdiv i64 %n, %6, !dbg !4943
  %8 = icmp sge i64 %7, 1, !dbg !4944
  br i1 %8, label %for.body, label %for.done, !dbg !4940

for.body:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %n, !4934, !DIExpression(), !4945)
    #dbg_value(i64 %1, !4936, !DIExpression(), !4946)
  %9 = icmp eq i64 %1, 0, !dbg !4947
  br i1 %9, label %divbyzero.throw1, label %divbyzero.next2, !dbg !4947

divbyzero.next2:                                  ; preds = %for.body
  %10 = icmp eq i64 %1, -1, !dbg !4947
  %11 = icmp eq i64 %n, -9223372036854775808, !dbg !4947
  %12 = and i1 %10, %11, !dbg !4947
  %13 = select i1 %12, i64 1, i64 %1, !dbg !4947
  %14 = sdiv i64 %n, %13, !dbg !4947
  %15 = add i64 %0, %14, !dbg !4948
    #dbg_value(i64 %15, !4935, !DIExpression(), !4948)
  %16 = mul i64 %1, 5, !dbg !4949
    #dbg_value(i64 %16, !4936, !DIExpression(), !4949)
  br label %for.loop, !dbg !4940

for.done:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %0, !4935, !DIExpression(), !4950)
  ret i64 %0, !dbg !4951

divbyzero.throw:                                  ; preds = %for.loop
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4943
  unreachable, !dbg !4943

divbyzero.throw1:                                 ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4947
  unreachable, !dbg !4947
}
