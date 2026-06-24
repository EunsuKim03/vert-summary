define i64 @f_gold(i64 %n, i64 %k) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %k, !4933, !DIExpression(), !4934)
    #dbg_value(i64 %n, !4932, !DIExpression(), !4935)
  %0 = add i64 %n, 1, !dbg !4936
    #dbg_value(i64 %k, !4933, !DIExpression(), !4937)
  %1 = icmp sge i64 %0, %k, !dbg !4938
  br i1 %1, label %if.then, label %if.else, !dbg !4939

if.then:                                          ; preds = %entry
    #dbg_value(i64 %k, !4933, !DIExpression(), !4940)
  %2 = sub i64 %k, 1, !dbg !4941
  ret i64 %2, !dbg !4942

if.else:                                          ; preds = %entry
    #dbg_value(i64 %n, !4932, !DIExpression(), !4943)
  %3 = mul i64 %n, 2, !dbg !4944
  %4 = add i64 %3, 1, !dbg !4945
    #dbg_value(i64 %k, !4933, !DIExpression(), !4946)
  %5 = sub i64 %4, %k, !dbg !4947
  ret i64 %5, !dbg !4948
}
