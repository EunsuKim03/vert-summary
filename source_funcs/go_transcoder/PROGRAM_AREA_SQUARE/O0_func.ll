define i64 @f_gold(i64 %side) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %side, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %side, !4930, !DIExpression(), !4933)
    #dbg_value(i64 %side, !4930, !DIExpression(), !4934)
  %0 = mul i64 %side, %side, !dbg !4935
    #dbg_value(i64 %0, !4931, !DIExpression(), !4936)
    #dbg_value(i64 %0, !4931, !DIExpression(), !4937)
  ret i64 %0, !dbg !4938
}
