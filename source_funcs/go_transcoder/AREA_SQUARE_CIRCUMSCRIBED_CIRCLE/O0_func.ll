define i64 @f_gold(i64 %r) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %r, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %r, !4930, !DIExpression(), !4932)
  %0 = mul i64 %r, 2, !dbg !4933
    #dbg_value(i64 %r, !4930, !DIExpression(), !4934)
  %1 = mul i64 %0, %r, !dbg !4935
  ret i64 %1, !dbg !4936
}
