define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
  %0 = sub i64 %n, 1, !dbg !4934
  %1 = mul i64 %n, %0, !dbg !4935
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
  %2 = sub i64 %n, 2, !dbg !4937
  %3 = mul i64 %1, %2, !dbg !4938
  %4 = icmp eq i64 %3, -9223372036854775808, !dbg !4939
  %5 = and i1 false, %4, !dbg !4939
  %6 = select i1 %5, i64 1, i64 6, !dbg !4939
  %7 = sdiv i64 %3, %6, !dbg !4939
  ret i64 %7, !dbg !4940
}
