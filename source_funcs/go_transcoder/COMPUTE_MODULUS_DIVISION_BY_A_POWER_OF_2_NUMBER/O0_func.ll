define i64 @f_gold(i64 %n, i64 %d) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %d, !4933, !DIExpression(), !4934)
    #dbg_value(i64 %n, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %d, !4933, !DIExpression(), !4936)
  %0 = sub i64 %d, 1, !dbg !4937
  %1 = and i64 %n, %0, !dbg !4938
  ret i64 %1, !dbg !4939
}
