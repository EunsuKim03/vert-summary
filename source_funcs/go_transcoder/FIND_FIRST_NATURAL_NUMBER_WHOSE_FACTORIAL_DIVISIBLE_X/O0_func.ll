define i64 @f_gold(i64 %x) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %x, !4934, !DIExpression(), !4937)
    #dbg_value(i64 1, !4935, !DIExpression(), !4938)
    #dbg_value(i64 1, !4936, !DIExpression(), !4939)
    #dbg_value(i64 1, !4935, !DIExpression(), !4940)
  br label %for.loop, !dbg !4941

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ 1, %entry ], [ %11, %if.done ], !dbg !4938
  %1 = phi i64 [ 1, %entry ], [ %3, %if.done ], !dbg !4939
    #dbg_value(i64 %0, !4935, !DIExpression(), !4942)
    #dbg_value(i64 %x, !4934, !DIExpression(), !4943)
  %2 = icmp slt i64 %0, %x, !dbg !4944
  br i1 %2, label %for.body, label %for.done, !dbg !4941

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4936, !DIExpression(), !4945)
    #dbg_value(i64 %0, !4935, !DIExpression(), !4946)
  %3 = mul i64 %1, %0, !dbg !4947
    #dbg_value(i64 %3, !4936, !DIExpression(), !4948)
    #dbg_value(i64 %3, !4936, !DIExpression(), !4949)
    #dbg_value(i64 %x, !4934, !DIExpression(), !4950)
  %4 = icmp eq i64 %x, 0, !dbg !4951
  br i1 %4, label %divbyzero.throw, label %divbyzero.next, !dbg !4951

divbyzero.next:                                   ; preds = %for.body
  %5 = icmp eq i64 %x, -1, !dbg !4951
  %6 = icmp eq i64 %3, -9223372036854775808, !dbg !4951
  %7 = and i1 %5, %6, !dbg !4951
  %8 = select i1 %7, i64 1, i64 %x, !dbg !4951
  %9 = srem i64 %3, %8, !dbg !4951
  %10 = icmp eq i64 %9, 0, !dbg !4952
  br i1 %10, label %for.done, label %if.done, !dbg !4941

if.done:                                          ; preds = %divbyzero.next
  %11 = add i64 %0, 1, !dbg !4953
    #dbg_value(i64 %11, !4935, !DIExpression(), !4953)
  br label %for.loop, !dbg !4941

for.done:                                         ; preds = %divbyzero.next, %for.loop
    #dbg_value(i64 %0, !4935, !DIExpression(), !4954)
  ret i64 %0, !dbg !4955

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951
}
