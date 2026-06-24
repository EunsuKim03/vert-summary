define i1 @f_gold(i64 %a, i64 %b, i64 %c) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4935)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4935)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4936)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4937)
  %0 = add i64 %a, %b, !dbg !4938
    #dbg_value(i64 %c, !4934, !DIExpression(), !4939)
  %1 = icmp sle i64 %0, %c, !dbg !4940
  br i1 %1, label %if.then, label %cond.false, !dbg !4941

if.then:                                          ; preds = %cond.false1, %cond.false, %entry
  ret i1 false, !dbg !4942

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %a, !4932, !DIExpression(), !4943)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4944)
  %2 = add i64 %a, %c, !dbg !4945
    #dbg_value(i64 %b, !4933, !DIExpression(), !4946)
  %3 = icmp sle i64 %2, %b, !dbg !4947
  br i1 %3, label %if.then, label %cond.false1, !dbg !4941

cond.false1:                                      ; preds = %cond.false
    #dbg_value(i64 %b, !4933, !DIExpression(), !4948)
    #dbg_value(i64 %c, !4934, !DIExpression(), !4949)
  %4 = add i64 %b, %c, !dbg !4950
    #dbg_value(i64 %a, !4932, !DIExpression(), !4951)
  %5 = icmp sle i64 %4, %a, !dbg !4952
  br i1 %5, label %if.then, label %if.else, !dbg !4941

if.else:                                          ; preds = %cond.false1
  ret i1 true, !dbg !4953
}
