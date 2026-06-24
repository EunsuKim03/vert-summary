define i64 @f_gold(i64 %x1, i64 %y1, i64 %x2, i64 %y2, i64 %r1, i64 %r2) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x1, !4932, !DIExpression(), !4940)
    #dbg_value(i64 %y1, !4933, !DIExpression(), !4940)
    #dbg_value(i64 %x2, !4934, !DIExpression(), !4940)
    #dbg_value(i64 %y2, !4935, !DIExpression(), !4940)
    #dbg_value(i64 %r1, !4936, !DIExpression(), !4940)
    #dbg_value(i64 %r2, !4937, !DIExpression(), !4940)
    #dbg_value(i64 %x1, !4932, !DIExpression(), !4941)
    #dbg_value(i64 %x2, !4934, !DIExpression(), !4942)
  %0 = sub i64 %x1, %x2, !dbg !4943
    #dbg_value(i64 %x1, !4932, !DIExpression(), !4944)
    #dbg_value(i64 %x2, !4934, !DIExpression(), !4945)
  %1 = sub i64 %x1, %x2, !dbg !4946
  %2 = mul i64 %0, %1, !dbg !4947
    #dbg_value(i64 %y1, !4933, !DIExpression(), !4948)
    #dbg_value(i64 %y2, !4935, !DIExpression(), !4949)
  %3 = sub i64 %y1, %y2, !dbg !4950
    #dbg_value(i64 %y1, !4933, !DIExpression(), !4951)
    #dbg_value(i64 %y2, !4935, !DIExpression(), !4952)
  %4 = sub i64 %y1, %y2, !dbg !4953
  %5 = mul i64 %3, %4, !dbg !4954
  %6 = add i64 %2, %5, !dbg !4955
    #dbg_value(i64 %6, !4938, !DIExpression(), !4956)
    #dbg_value(i64 %r1, !4936, !DIExpression(), !4957)
    #dbg_value(i64 %r2, !4937, !DIExpression(), !4958)
  %7 = add i64 %r1, %r2, !dbg !4959
    #dbg_value(i64 %r1, !4936, !DIExpression(), !4960)
    #dbg_value(i64 %r2, !4937, !DIExpression(), !4961)
  %8 = add i64 %r1, %r2, !dbg !4962
  %9 = mul i64 %7, %8, !dbg !4963
    #dbg_value(i64 %9, !4939, !DIExpression(), !4964)
    #dbg_value(i64 %6, !4938, !DIExpression(), !4965)
    #dbg_value(i64 %9, !4939, !DIExpression(), !4966)
  %10 = icmp eq i64 %6, %9, !dbg !4967
  br i1 %10, label %if.then, label %if.else, !dbg !4968

if.then:                                          ; preds = %entry
  ret i64 1, !dbg !4969

if.else:                                          ; preds = %entry
    #dbg_value(i64 %6, !4938, !DIExpression(), !4970)
    #dbg_value(i64 %9, !4939, !DIExpression(), !4971)
  %11 = icmp sgt i64 %6, %9, !dbg !4972
  br i1 %11, label %if.then1, label %if.else2, !dbg !4968

if.then1:                                         ; preds = %if.else
  ret i64 -1, !dbg !4973

if.else2:                                         ; preds = %if.else
  ret i64 0, !dbg !4974
}
