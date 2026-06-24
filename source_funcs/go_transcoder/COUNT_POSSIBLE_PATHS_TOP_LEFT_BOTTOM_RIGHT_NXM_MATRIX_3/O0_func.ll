define i64 @f_gold(i64 %m, i64 %n) #0 !dbg !4931 {
entry:
    #dbg_value(i64 %m, !4936, !DIExpression(), !4940)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4940)
    #dbg_value(i64 1, !4938, !DIExpression(), !4941)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4942)
    #dbg_value(i64 %n, !4939, !DIExpression(), !4943)
  br label %for.loop, !dbg !4944

for.loop:                                         ; preds = %divbyzero.next, %entry
  %0 = phi i64 [ 1, %entry ], [ %13, %divbyzero.next ], !dbg !4941
  %1 = phi i64 [ %n, %entry ], [ %14, %divbyzero.next ], !dbg !4943
    #dbg_value(i64 %1, !4939, !DIExpression(), !4945)
    #dbg_value(i64 %m, !4936, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4947)
  %2 = add i64 %m, %n, !dbg !4948
  %3 = sub i64 %2, 1, !dbg !4949
  %4 = icmp slt i64 %1, %3, !dbg !4950
  br i1 %4, label %for.body, label %for.done, !dbg !4944

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4939, !DIExpression(), !4951)
  %5 = mul i64 %0, %1, !dbg !4952
    #dbg_value(i64 %5, !4938, !DIExpression(), !4952)
    #dbg_value(i64 %1, !4939, !DIExpression(), !4953)
    #dbg_value(i64 %n, !4937, !DIExpression(), !4954)
  %6 = sub i64 %1, %n, !dbg !4955
  %7 = add i64 %6, 1, !dbg !4956
  %8 = icmp eq i64 %7, 0, !dbg !4957
  br i1 %8, label %divbyzero.throw, label %divbyzero.next, !dbg !4957

divbyzero.next:                                   ; preds = %for.body
  %9 = icmp eq i64 %7, -1, !dbg !4957
  %10 = icmp eq i64 %5, -9223372036854775808, !dbg !4957
  %11 = and i1 %9, %10, !dbg !4957
  %12 = select i1 %11, i64 1, i64 %7, !dbg !4957
  %13 = sdiv i64 %5, %12, !dbg !4957
    #dbg_value(i64 %13, !4938, !DIExpression(), !4957)
  %14 = add i64 %1, 1, !dbg !4958
    #dbg_value(i64 %14, !4939, !DIExpression(), !4958)
  br label %for.loop, !dbg !4944

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4938, !DIExpression(), !4959)
  ret i64 %0, !dbg !4960

divbyzero.throw:                                  ; preds = %for.body
  call void @runtime.divideByZeroPanic(ptr undef), !dbg !4957
  unreachable, !dbg !4957
}
