define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
  %0 = sub i64 %n, 1, !dbg !4934
  %1 = and i64 %n, %0, !dbg !4935
  ret i64 %1, !dbg !4936
}
