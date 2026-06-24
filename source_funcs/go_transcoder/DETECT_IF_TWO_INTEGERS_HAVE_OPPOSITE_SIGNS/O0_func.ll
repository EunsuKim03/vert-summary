define i1 @f_gold(i64 %x, i64 %y) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %y, !4933, !DIExpression(), !4934)
    #dbg_value(i64 %x, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %y, !4933, !DIExpression(), !4936)
  %0 = xor i64 %x, %y, !dbg !4937
  %1 = icmp slt i64 %0, 0, !dbg !4938
  ret i1 %1, !dbg !4939
}
