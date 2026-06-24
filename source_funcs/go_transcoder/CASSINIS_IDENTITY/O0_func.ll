define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = and i64 %n, 1, !dbg !4933
  %1 = icmp ne i64 %0, 0, !dbg !4934
  br i1 %1, label %if.then, label %if.done, !dbg !4935

if.then:                                          ; preds = %entry
  ret i64 -1, !dbg !4936

if.done:                                          ; preds = %entry
  ret i64 1, !dbg !4937
}
