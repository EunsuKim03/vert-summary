define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = sub i64 %n, 1, !dbg !4933
    #dbg_value(i64 %0, !4930, !DIExpression(), !4933)
    #dbg_value(i64 0, !4931, !DIExpression(), !4934)
    #dbg_value(i64 %0, !4930, !DIExpression(), !4935)
    #dbg_value(i64 %0, !4930, !DIExpression(), !4936)
  %1 = add i64 %0, 1, !dbg !4937
  %2 = mul i64 %0, %1, !dbg !4938
  %3 = icmp eq i64 %2, -9223372036854775808, !dbg !4939
  %4 = and i1 false, %3, !dbg !4939
  %5 = select i1 %4, i64 1, i64 2, !dbg !4939
  %6 = sdiv i64 %2, %5, !dbg !4939
  %7 = add i64 0, %6, !dbg !4940
    #dbg_value(i64 %7, !4931, !DIExpression(), !4940)
    #dbg_value(i64 %0, !4930, !DIExpression(), !4941)
    #dbg_value(i64 %0, !4930, !DIExpression(), !4942)
  %8 = add i64 %0, 1, !dbg !4943
  %9 = mul i64 %0, %8, !dbg !4944
    #dbg_value(i64 %0, !4930, !DIExpression(), !4945)
  %10 = mul i64 %0, 2, !dbg !4946
  %11 = add i64 %10, 1, !dbg !4947
  %12 = mul i64 %9, %11, !dbg !4948
  %13 = icmp eq i64 %12, -9223372036854775808, !dbg !4949
  %14 = and i1 false, %13, !dbg !4949
  %15 = select i1 %14, i64 1, i64 6, !dbg !4949
  %16 = sdiv i64 %12, %15, !dbg !4949
  %17 = add i64 %7, %16, !dbg !4950
    #dbg_value(i64 %17, !4931, !DIExpression(), !4950)
    #dbg_value(i64 %17, !4931, !DIExpression(), !4951)
  ret i64 %17, !dbg !4952
}
