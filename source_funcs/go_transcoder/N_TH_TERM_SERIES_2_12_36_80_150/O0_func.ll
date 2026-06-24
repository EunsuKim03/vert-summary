define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
  %0 = mul i64 %n, %n, !dbg !4934
    #dbg_value(i64 %n, !4930, !DIExpression(), !4935)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
  %1 = mul i64 %n, %n, !dbg !4937
    #dbg_value(i64 %n, !4930, !DIExpression(), !4938)
  %2 = mul i64 %1, %n, !dbg !4939
  %3 = add i64 %0, %2, !dbg !4940
  ret i64 %3, !dbg !4941
}
