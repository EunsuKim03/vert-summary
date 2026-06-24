define i64 @f_gold(i64 %a, i64 %b, i64 %c) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4935)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4935)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4936)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4937)
  %0 = icmp sgt i64 %a, %b, !dbg !4938
  br i1 %0, label %if.then, label %if.else4, !dbg !4939

if.then:                                          ; preds = %entry
    #dbg_value(i64 %b, !4933, !DIExpression(), !4940)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4941)
  %1 = icmp sgt i64 %b, %c, !dbg !4942
  br i1 %1, label %if.then1, label %if.else, !dbg !4939

if.then1:                                         ; preds = %if.then
    #dbg_value(i64 %b, !4933, !DIExpression(), !4943)
  ret i64 %b, !dbg !4944

if.else:                                          ; preds = %if.then
    #dbg_value(i64 %a, !4932, !DIExpression(), !4945)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4946)
  %2 = icmp sgt i64 %a, %c, !dbg !4947
  br i1 %2, label %if.then2, label %if.else3, !dbg !4939

if.then2:                                         ; preds = %if.else
    #dbg_value(i64 %c, !4934, !DIExpression(), !4948)
  ret i64 %c, !dbg !4949

if.else3:                                         ; preds = %if.else
    #dbg_value(i64 %a, !4932, !DIExpression(), !4950)
  ret i64 %a, !dbg !4951

if.else4:                                         ; preds = %entry
    #dbg_value(i64 %a, !4932, !DIExpression(), !4952)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4953)
  %3 = icmp sgt i64 %a, %c, !dbg !4954
  br i1 %3, label %if.then5, label %if.else6, !dbg !4939

if.then5:                                         ; preds = %if.else4
    #dbg_value(i64 %a, !4932, !DIExpression(), !4955)
  ret i64 %a, !dbg !4956

if.else6:                                         ; preds = %if.else4
    #dbg_value(i64 %b, !4933, !DIExpression(), !4957)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4958)
  %4 = icmp sgt i64 %b, %c, !dbg !4959
  br i1 %4, label %if.then7, label %if.else8, !dbg !4939

if.then7:                                         ; preds = %if.else6
    #dbg_value(i64 %c, !4934, !DIExpression(), !4960)
  ret i64 %c, !dbg !4961

if.else8:                                         ; preds = %if.else6
    #dbg_value(i64 %b, !4933, !DIExpression(), !4962)
  ret i64 %b, !dbg !4963
}
