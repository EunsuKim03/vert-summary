define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
  %0 = add i64 %n, 1, !dbg !4934
  %1 = mul i64 %n, %0, !dbg !4935
  %2 = icmp eq i64 %1, -9223372036854775808, !dbg !4936
  %3 = and i1 false, %2, !dbg !4936
  %4 = select i1 %3, i64 1, i64 2, !dbg !4936
  %5 = sdiv i64 %1, %4, !dbg !4936
  %6 = add i64 %5, 1, !dbg !4937
  ret i64 %6, !dbg !4938
}
