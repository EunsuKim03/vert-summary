define i64 @f_gold(i64 %k) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %k, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %k, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %k, !4930, !DIExpression(), !4933)
  %0 = mul i64 %k, %k, !dbg !4934
    #dbg_value(i64 %k, !4930, !DIExpression(), !4935)
  %1 = mul i64 %0, %k, !dbg !4936
  ret i64 %1, !dbg !4937
}
