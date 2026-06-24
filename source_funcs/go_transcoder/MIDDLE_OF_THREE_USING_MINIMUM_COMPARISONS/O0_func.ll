define i64 @f_gold(i64 %a, i64 %b, i64 %c) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4935)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4935)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4936)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4937)
  %0 = icmp slt i64 %a, %b, !dbg !4938
  br i1 %0, label %cond.true, label %cond.false, !dbg !4939

cond.true:                                        ; preds = %entry
    #dbg_value(i64 %b, !4933, !DIExpression(), !4940)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4941)
  %1 = icmp slt i64 %b, %c, !dbg !4942
  br i1 %1, label %if.then, label %cond.false, !dbg !4939

if.then:                                          ; preds = %cond.true1, %cond.true
    #dbg_value(i64 %b, !4933, !DIExpression(), !4943)
  ret i64 %b, !dbg !4944

cond.false:                                       ; preds = %cond.true, %entry
    #dbg_value(i64 %c, !4934, !DIExpression(), !4945)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4946)
  %2 = icmp slt i64 %c, %b, !dbg !4947
  br i1 %2, label %cond.true1, label %if.else, !dbg !4939

cond.true1:                                       ; preds = %cond.false
    #dbg_value(i64 %b, !4933, !DIExpression(), !4948)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4949)
  %3 = icmp slt i64 %b, %a, !dbg !4950
  br i1 %3, label %if.then, label %if.else, !dbg !4939

if.else:                                          ; preds = %cond.true1, %cond.false
    #dbg_value(i64 %b, !4933, !DIExpression(), !4951)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4952)
  %4 = icmp slt i64 %b, %a, !dbg !4953
  br i1 %4, label %cond.true2, label %cond.false4, !dbg !4939

cond.true2:                                       ; preds = %if.else
    #dbg_value(i64 %a, !4932, !DIExpression(), !4954)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4955)
  %5 = icmp slt i64 %a, %c, !dbg !4956
  br i1 %5, label %if.then3, label %cond.false4, !dbg !4939

if.then3:                                         ; preds = %cond.true5, %cond.true2
    #dbg_value(i64 %a, !4932, !DIExpression(), !4957)
  ret i64 %a, !dbg !4958

cond.false4:                                      ; preds = %cond.true2, %if.else
    #dbg_value(i64 %c, !4934, !DIExpression(), !4959)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4960)
  %6 = icmp slt i64 %c, %a, !dbg !4961
  br i1 %6, label %cond.true5, label %if.else6, !dbg !4939

cond.true5:                                       ; preds = %cond.false4
    #dbg_value(i64 %a, !4932, !DIExpression(), !4962)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4963)
  %7 = icmp slt i64 %a, %b, !dbg !4964
  br i1 %7, label %if.then3, label %if.else6, !dbg !4939

if.else6:                                         ; preds = %cond.true5, %cond.false4
    #dbg_value(i64 %c, !4934, !DIExpression(), !4965)
  ret i64 %c, !dbg !4966
}
