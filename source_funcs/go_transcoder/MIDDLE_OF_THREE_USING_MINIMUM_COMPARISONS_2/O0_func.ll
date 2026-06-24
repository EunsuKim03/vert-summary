define i64 @f_gold(i64 %a, i64 %b, i64 %c) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4932, !DIExpression(), !4938)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4938)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4938)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4939)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4940)
  %0 = sub i64 %a, %b, !dbg !4941
    #dbg_value(i64 %0, !4935, !DIExpression(), !4942)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4943)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4944)
  %1 = sub i64 %b, %c, !dbg !4945
    #dbg_value(i64 %1, !4936, !DIExpression(), !4946)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4947)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4948)
  %2 = sub i64 %a, %c, !dbg !4949
    #dbg_value(i64 %2, !4937, !DIExpression(), !4950)
    #dbg_value(i64 %0, !4935, !DIExpression(), !4951)
    #dbg_value(i64 %1, !4936, !DIExpression(), !4952)
  %3 = mul i64 %0, %1, !dbg !4953
  %4 = icmp sgt i64 %3, 0, !dbg !4954
  br i1 %4, label %if.then, label %if.else, !dbg !4955

if.then:                                          ; preds = %entry
    #dbg_value(i64 %b, !4933, !DIExpression(), !4956)
  ret i64 %b, !dbg !4957

if.else:                                          ; preds = %entry
    #dbg_value(i64 %0, !4935, !DIExpression(), !4958)
    #dbg_value(i64 %2, !4937, !DIExpression(), !4959)
  %5 = mul i64 %0, %2, !dbg !4960
  %6 = icmp sgt i64 %5, 0, !dbg !4961
  br i1 %6, label %if.then1, label %if.else2, !dbg !4955

if.then1:                                         ; preds = %if.else
    #dbg_value(i64 %c, !4934, !DIExpression(), !4962)
  ret i64 %c, !dbg !4963

if.else2:                                         ; preds = %if.else
    #dbg_value(i64 %a, !4932, !DIExpression(), !4964)
  ret i64 %a, !dbg !4965
}
