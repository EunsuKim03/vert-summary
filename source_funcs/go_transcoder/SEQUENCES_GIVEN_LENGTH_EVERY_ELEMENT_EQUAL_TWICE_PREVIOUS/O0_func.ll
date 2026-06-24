define i64 @f_gold(i64 %m, i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %m, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %n, !4933, !DIExpression(), !4934)
    #dbg_value(i64 %m, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %n, !4933, !DIExpression(), !4936)
  %0 = icmp slt i64 %m, %n, !dbg !4937
  br i1 %0, label %if.then, label %if.done, !dbg !4938

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4939

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !4933, !DIExpression(), !4940)
  %1 = icmp eq i64 %n, 0, !dbg !4941
  br i1 %1, label %if.then1, label %if.done2, !dbg !4938

if.then1:                                         ; preds = %if.done
  ret i64 1, !dbg !4942

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %m, !4932, !DIExpression(), !4943)
  %2 = sub i64 %m, 1, !dbg !4944
    #dbg_value(i64 %n, !4933, !DIExpression(), !4945)
  %3 = call i64 @f_gold(i64 %2, i64 %n), !dbg !4946
    #dbg_value(i64 %m, !4932, !DIExpression(), !4947)
  %4 = icmp eq i64 %m, -9223372036854775808, !dbg !4948
  %5 = and i1 false, %4, !dbg !4948
  %6 = select i1 %5, i64 1, i64 2, !dbg !4948
  %7 = sdiv i64 %m, %6, !dbg !4948
    #dbg_value(i64 %n, !4933, !DIExpression(), !4949)
  %8 = sub i64 %n, 1, !dbg !4950
  %9 = call i64 @f_gold(i64 %7, i64 %8), !dbg !4951
  %10 = add i64 %3, %9, !dbg !4952
  ret i64 %10, !dbg !4953
}
