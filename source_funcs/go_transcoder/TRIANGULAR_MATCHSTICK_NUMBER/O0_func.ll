define i64 @f_gold(i64 %x) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %x, !4930, !DIExpression(), !4932)
  %0 = mul i64 %x, 3, !dbg !4933
    #dbg_value(i64 %x, !4930, !DIExpression(), !4934)
  %1 = add i64 %x, 1, !dbg !4935
  %2 = mul i64 %0, %1, !dbg !4936
  %3 = icmp eq i64 %2, -9223372036854775808, !dbg !4937
  %4 = and i1 false, %3, !dbg !4937
  %5 = select i1 %4, i64 1, i64 2, !dbg !4937
  %6 = sdiv i64 %2, %5, !dbg !4937
  ret i64 %6, !dbg !4938
}
