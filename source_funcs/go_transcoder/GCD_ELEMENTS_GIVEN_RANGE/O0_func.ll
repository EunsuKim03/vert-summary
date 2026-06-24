define i64 @f_gold(i64 %n, i64 %m) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %m, !4933, !DIExpression(), !4934)
    #dbg_value(i64 %n, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %m, !4933, !DIExpression(), !4936)
  %0 = icmp eq i64 %n, %m, !dbg !4937
  br i1 %0, label %if.then, label %if.done, !dbg !4938

if.then:                                          ; preds = %entry
    #dbg_value(i64 %n, !4932, !DIExpression(), !4939)
  ret i64 %n, !dbg !4940

if.done:                                          ; preds = %entry
  ret i64 1, !dbg !4941
}
