define i64 @f_gold(i64 %a) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %a, !4930, !DIExpression(), !4932)
  %0 = mul i64 %a, 4, !dbg !4933
  ret i64 %0, !dbg !4934
}
