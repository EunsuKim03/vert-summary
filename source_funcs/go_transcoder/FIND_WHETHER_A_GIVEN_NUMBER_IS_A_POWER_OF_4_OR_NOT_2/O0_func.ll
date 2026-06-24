define i1 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = icmp ne i64 %n, 0, !dbg !4933
  br i1 %0, label %cond.true, label %binop.done, !dbg !4934

cond.true:                                        ; preds = %entry
    #dbg_value(i64 %n, !4930, !DIExpression(), !4935)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
  %1 = sub i64 %n, 1, !dbg !4937
  %2 = and i64 %n, %1, !dbg !4938
  %3 = icmp eq i64 %2, 0, !dbg !4939
  br i1 %3, label %binop.rhs, label %binop.done, !dbg !4934

binop.rhs:                                        ; preds = %cond.true
    #dbg_value(i64 %n, !4930, !DIExpression(), !4940)
  %4 = and i64 %n, 2863311530, !dbg !4941
  %5 = icmp eq i64 %4, 0, !dbg !4942
  br label %binop.done, !dbg !4934

binop.done:                                       ; preds = %binop.rhs, %cond.true, %entry
  %6 = phi i1 [ false, %entry ], [ false, %cond.true ], [ %5, %binop.rhs ], !dbg !4943
  ret i1 %6, !dbg !4944
}
