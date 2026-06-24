define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = icmp eq i64 %n, 0, !dbg !4933
  br i1 %0, label %if.then, label %cond.false, !dbg !4934

if.then:                                          ; preds = %cond.false, %entry
  ret i64 1, !dbg !4935

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
  %1 = icmp eq i64 %n, 1, !dbg !4937
  br i1 %1, label %if.then, label %if.done, !dbg !4934

if.done:                                          ; preds = %cond.false
    #dbg_value(i64 %n, !4930, !DIExpression(), !4938)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4939)
  %2 = sub i64 %n, 2, !dbg !4940
  %3 = call i64 @f_gold(i64 %2), !dbg !4941
  %4 = mul i64 %n, %3, !dbg !4942
  ret i64 %4, !dbg !4943
}
