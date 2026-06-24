define i64 @f_gold(i64 %process, i64 %need) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %process, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %need, !4933, !DIExpression(), !4935)
    #dbg_value(i64 0, !4934, !DIExpression(), !4936)
    #dbg_value(i64 %process, !4932, !DIExpression(), !4937)
    #dbg_value(i64 %need, !4933, !DIExpression(), !4938)
  %0 = sub i64 %need, 1, !dbg !4939
  %1 = mul i64 %process, %0, !dbg !4940
  %2 = add i64 %1, 1, !dbg !4941
    #dbg_value(i64 %2, !4934, !DIExpression(), !4942)
    #dbg_value(i64 %2, !4934, !DIExpression(), !4943)
  ret i64 %2, !dbg !4944
}
