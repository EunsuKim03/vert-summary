define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = icmp eq i64 %n, 1, !dbg !4933
  br i1 %0, label %if.then, label %if.done, !dbg !4934

if.then:                                          ; preds = %entry
  ret i64 2, !dbg !4935

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
  %1 = sub i64 %n, 1, !dbg !4937
  %2 = call i64 @f_gold(i64 %1), !dbg !4938
  %3 = mul i64 %2, 2, !dbg !4939
  ret i64 %3, !dbg !4940
}
