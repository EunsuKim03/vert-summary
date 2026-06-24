define i64 @f_gold(i64 %l, i64 %w) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %l, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %w, !4933, !DIExpression(), !4934)
    #dbg_value(i64 %l, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %w, !4933, !DIExpression(), !4936)
  %0 = add i64 %l, %w, !dbg !4937
  %1 = mul i64 %0, 2, !dbg !4938
  ret i64 %1, !dbg !4939
}
