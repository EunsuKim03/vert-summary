define i64 @f_gold(i64 %a, i64 %b) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4934)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4936)
  %0 = add i64 %a, %b, !dbg !4937
  %1 = icmp eq i64 %0, -9223372036854775808, !dbg !4938
  %2 = and i1 false, %1, !dbg !4938
  %3 = select i1 %2, i64 1, i64 2, !dbg !4938
  %4 = sdiv i64 %0, %3, !dbg !4938
  ret i64 %4, !dbg !4939
}
