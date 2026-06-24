define i1 @f_gold(i64 %n) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4934, !DIExpression(), !4936)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4937)
  %0 = icmp sle i64 %n, 1, !dbg !4938
  br i1 %0, label %if.then, label %if.done, !dbg !4939

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4940

if.done:                                          ; preds = %entry
    #dbg_value(i64 2, !4935, !DIExpression(), !4941)
  br label %for.loop, !dbg !4939

for.loop:                                         ; preds = %if.done2, %if.done
  %1 = phi i64 [ 2, %if.done ], [ %10, %if.done2 ], !dbg !4941
    #dbg_value(i64 %1, !4935, !DIExpression(), !4942)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4943)
  %2 = icmp slt i64 %1, %n, !dbg !4944
  br i1 %2, label %for.body, label %for.done, !dbg !4939

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %n, !4934, !DIExpression(), !4945)
    #dbg_value(i64 %1, !4935, !DIExpression(), !4946)
  %3 = icmp eq i64 %1, 0, !dbg !4947
  br i1 %3, label %divbyzero.throw, label %divbyzero.next, !dbg !4947

divbyzero.next:                                   ; preds = %for.body
  %4 = icmp eq i64 %1, -1, !dbg !4947
  %5 = icmp eq i64 %n, -9223372036854775808, !dbg !4947
  %6 = and i1 %4, %5, !dbg !4947
  %7 = select i1 %6, i64 1, i64 %1, !dbg !4947
  %8 = srem i64 %n, %7, !dbg !4947
  %9 = icmp eq i64 %8, 0, !dbg !4948
  br i1 %9, label %if.then1, label %if.done2, !dbg !4939

if.then1:                                         ; preds = %divbyzero.next
  ret i1 false, !dbg !4949

if.done2:                                         ; preds = %divbyzero.next
  %10 = add i64 %1, 1, !dbg !4950
    #dbg_value(i64 %10, !4935, !DIExpression(), !4950)
  br label %for.loop, !dbg !4939

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4951

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4947
  unreachable, !dbg !4947
}
