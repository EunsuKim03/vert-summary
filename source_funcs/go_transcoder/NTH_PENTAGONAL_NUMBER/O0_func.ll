define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = mul i64 %n, 3, !dbg !4933
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
  %1 = mul i64 %0, %n, !dbg !4935
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
  %2 = sub i64 %1, %n, !dbg !4937
  %3 = icmp eq i64 %2, -9223372036854775808, !dbg !4938
  %4 = and i1 false, %3, !dbg !4938
  %5 = select i1 %4, i64 1, i64 2, !dbg !4938
  %6 = sdiv i64 %2, %5, !dbg !4938
  ret i64 %6, !dbg !4939
}
