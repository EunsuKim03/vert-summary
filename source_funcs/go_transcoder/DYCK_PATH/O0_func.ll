define i64 @f_gold(i64 %n) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %n, !4934, !DIExpression(), !4937)
    #dbg_value(i64 1, !4935, !DIExpression(), !4938)
    #dbg_value(i64 0, !4936, !DIExpression(), !4939)
  br label %for.loop, !dbg !4940

for.loop:                                         ; preds = %divbyzero.next, %entry
  %0 = phi i64 [ 1, %entry ], [ %12, %divbyzero.next ], !dbg !4938
  %1 = phi i64 [ 0, %entry ], [ %13, %divbyzero.next ], !dbg !4939
    #dbg_value(i64 %1, !4936, !DIExpression(), !4941)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4942)
  %2 = icmp slt i64 %1, %n, !dbg !4943
  br i1 %2, label %for.body, label %for.done, !dbg !4940

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %n, !4934, !DIExpression(), !4944)
  %3 = mul i64 %n, 2, !dbg !4945
    #dbg_value(i64 %1, !4936, !DIExpression(), !4946)
  %4 = sub i64 %3, %1, !dbg !4947
  %5 = mul i64 %0, %4, !dbg !4948
    #dbg_value(i64 %5, !4935, !DIExpression(), !4948)
    #dbg_value(i64 %1, !4936, !DIExpression(), !4949)
  %6 = add i64 %1, 1, !dbg !4950
  %7 = icmp eq i64 %6, 0, !dbg !4951
  br i1 %7, label %divbyzero.throw, label %divbyzero.next, !dbg !4951

divbyzero.next:                                   ; preds = %for.body
  %8 = icmp eq i64 %6, -1, !dbg !4951
  %9 = icmp eq i64 %5, -9223372036854775808, !dbg !4951
  %10 = and i1 %8, %9, !dbg !4951
  %11 = select i1 %10, i64 1, i64 %6, !dbg !4951
  %12 = sdiv i64 %5, %11, !dbg !4951
    #dbg_value(i64 %12, !4935, !DIExpression(), !4951)
  %13 = add i64 %1, 1, !dbg !4952
    #dbg_value(i64 %13, !4936, !DIExpression(), !4952)
  br label %for.loop, !dbg !4940

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4935, !DIExpression(), !4953)
    #dbg_value(i64 %n, !4934, !DIExpression(), !4954)
  %14 = add i64 %n, 1, !dbg !4955
  %15 = icmp eq i64 %14, 0, !dbg !4956
  br i1 %15, label %divbyzero.throw1, label %divbyzero.next2, !dbg !4956

divbyzero.next2:                                  ; preds = %for.done
  %16 = icmp eq i64 %14, -1, !dbg !4956
  %17 = icmp eq i64 %0, -9223372036854775808, !dbg !4956
  %18 = and i1 %16, %17, !dbg !4956
  %19 = select i1 %18, i64 1, i64 %14, !dbg !4956
  %20 = sdiv i64 %0, %19, !dbg !4956
  ret i64 %20, !dbg !4957

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4951
  unreachable, !dbg !4951

divbyzero.throw1:                                 ; preds = %for.done
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4956
  unreachable, !dbg !4956
}
