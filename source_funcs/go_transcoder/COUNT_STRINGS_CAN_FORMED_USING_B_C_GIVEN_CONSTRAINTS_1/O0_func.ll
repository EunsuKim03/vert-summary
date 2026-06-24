define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = mul i64 %n, 2, !dbg !4933
  %1 = add i64 %0, 1, !dbg !4934
    #dbg_value(i64 %n, !4930, !DIExpression(), !4935)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4937)
  %2 = mul i64 %n, %n, !dbg !4938
  %3 = sub i64 %2, 1, !dbg !4939
  %4 = mul i64 %n, %3, !dbg !4940
  %5 = icmp eq i64 %4, -9223372036854775808, !dbg !4941
  %6 = and i1 false, %5, !dbg !4941
  %7 = select i1 %6, i64 1, i64 2, !dbg !4941
  %8 = sdiv i64 %4, %7, !dbg !4941
  %9 = add i64 %1, %8, !dbg !4942
  ret i64 %9, !dbg !4943
}
