define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = icmp eq i64 %n, 0, !dbg !4933
  br i1 %0, label %if.then, label %if.else, !dbg !4934

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4935

if.else:                                          ; preds = %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4937)
  %1 = sub i64 %n, 1, !dbg !4938
  %2 = and i64 %n, %1, !dbg !4939
  %3 = call i64 @f_gold(i64 %2), !dbg !4940
  %4 = add i64 %3, 1, !dbg !4941
  ret i64 %4, !dbg !4942
}
