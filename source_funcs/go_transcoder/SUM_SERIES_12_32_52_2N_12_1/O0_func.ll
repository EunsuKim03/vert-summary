define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
  %0 = mul i64 %n, 2, !dbg !4934
  %1 = sub i64 %0, 1, !dbg !4935
  %2 = mul i64 %n, %1, !dbg !4936
    #dbg_value(i64 %n, !4930, !DIExpression(), !4937)
  %3 = mul i64 %n, 2, !dbg !4938
  %4 = add i64 %3, 1, !dbg !4939
  %5 = mul i64 %2, %4, !dbg !4940
  %6 = icmp eq i64 %5, -9223372036854775808, !dbg !4941
  %7 = and i1 false, %6, !dbg !4941
  %8 = select i1 %7, i64 1, i64 3, !dbg !4941
  %9 = sdiv i64 %5, %8, !dbg !4941
  ret i64 %9, !dbg !4942
}
