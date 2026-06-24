define i1 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = icmp eq i64 %n, 0, !dbg !4933
  br i1 %0, label %if.then, label %cond.false, !dbg !4934

if.then:                                          ; preds = %cond.false, %entry
  ret i1 true, !dbg !4935

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
  %1 = icmp eq i64 %n, 9, !dbg !4937
  br i1 %1, label %if.then, label %if.done, !dbg !4934

if.done:                                          ; preds = %cond.false
    #dbg_value(i64 %n, !4930, !DIExpression(), !4938)
  %2 = icmp slt i64 %n, 9, !dbg !4939
  br i1 %2, label %if.then1, label %if.done2, !dbg !4934

if.then1:                                         ; preds = %if.done
  ret i1 false, !dbg !4940

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %n, !4930, !DIExpression(), !4941)
  %3 = ashr i64 %n, 3, !dbg !4942
    #dbg_value(i64 %n, !4930, !DIExpression(), !4943)
  %4 = and i64 %n, 7, !dbg !4944
  %5 = sub i64 %3, %4, !dbg !4945
  %6 = call i1 @f_gold(i64 %5), !dbg !4946
  ret i1 %6, !dbg !4947
}
