define i1 @f_gold(i64 %a, i64 %b, i64 %c, i64 %d) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4932, !DIExpression(), !4937)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4937)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4937)
    #dbg_value(i64 %d, !4935, !DIExpression(), !4937)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4938)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4939)
  %0 = mul i64 %a, %a, !dbg !4940
    #dbg_value(i64 %b, !4933, !DIExpression(), !4941)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4942)
  %1 = mul i64 %b, %b, !dbg !4943
  %2 = add i64 %0, %1, !dbg !4944
    #dbg_value(i64 %c, !4934, !DIExpression(), !4945)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4946)
  %3 = mul i64 %c, %c, !dbg !4947
  %4 = add i64 %2, %3, !dbg !4948
    #dbg_value(i64 %4, !4936, !DIExpression(), !4949)
    #dbg_value(i64 %d, !4935, !DIExpression(), !4950)
    #dbg_value(i64 %d, !4935, !DIExpression(), !4951)
  %5 = mul i64 %d, %d, !dbg !4952
    #dbg_value(i64 %4, !4936, !DIExpression(), !4953)
  %6 = icmp eq i64 %5, %4, !dbg !4954
  br i1 %6, label %if.then, label %if.else, !dbg !4955

if.then:                                          ; preds = %entry
  ret i1 true, !dbg !4956

if.else:                                          ; preds = %entry
  ret i1 false, !dbg !4957
}
