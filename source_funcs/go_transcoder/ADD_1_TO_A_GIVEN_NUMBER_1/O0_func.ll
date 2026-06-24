define i64 @f_gold(i64 %x) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %x, !4930, !DIExpression(), !4932)
  %0 = xor i64 %x, -1, !dbg !4933
  %1 = sub i64 0, %0, !dbg !4934
  ret i64 %1, !dbg !4935
}
