define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
  %0 = mul i64 %n, 2, !dbg !4934
  %1 = sub i64 %0, 1, !dbg !4935
  %2 = mul i64 %n, %1, !dbg !4936
  ret i64 %2, !dbg !4937
}
