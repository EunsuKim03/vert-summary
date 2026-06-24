define i64 @f_gold(i64 %diameter, i64 %height) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %diameter, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %height, !4933, !DIExpression(), !4934)
    #dbg_value(i64 %diameter, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %height, !4933, !DIExpression(), !4936)
  %0 = add i64 %diameter, %height, !dbg !4937
  %1 = mul i64 %0, 2, !dbg !4938
  ret i64 %1, !dbg !4939
}
