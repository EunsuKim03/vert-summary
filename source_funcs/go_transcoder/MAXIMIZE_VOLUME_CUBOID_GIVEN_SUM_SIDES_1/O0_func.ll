define i64 @f_gold(i64 %s) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %s, !4930, !DIExpression(), !4934)
    #dbg_value(i64 %s, !4930, !DIExpression(), !4935)
  %0 = icmp eq i64 %s, -9223372036854775808, !dbg !4936
  %1 = and i1 false, %0, !dbg !4936
  %2 = select i1 %1, i64 1, i64 3, !dbg !4936
  %3 = sdiv i64 %s, %2, !dbg !4936
    #dbg_value(i64 %3, !4931, !DIExpression(), !4937)
    #dbg_value(i64 %3, !4931, !DIExpression(), !4938)
  %4 = sub i64 %s, %3, !dbg !4939
    #dbg_value(i64 %4, !4930, !DIExpression(), !4939)
    #dbg_value(i64 %4, !4930, !DIExpression(), !4940)
  %5 = icmp eq i64 %4, -9223372036854775808, !dbg !4941
  %6 = and i1 false, %5, !dbg !4941
  %7 = select i1 %6, i64 1, i64 2, !dbg !4941
  %8 = sdiv i64 %4, %7, !dbg !4941
    #dbg_value(i64 %8, !4932, !DIExpression(), !4942)
    #dbg_value(i64 %4, !4930, !DIExpression(), !4943)
    #dbg_value(i64 %8, !4932, !DIExpression(), !4944)
  %9 = sub i64 %4, %8, !dbg !4945
    #dbg_value(i64 %9, !4933, !DIExpression(), !4946)
    #dbg_value(i64 %3, !4931, !DIExpression(), !4947)
    #dbg_value(i64 %8, !4932, !DIExpression(), !4948)
  %10 = mul i64 %3, %8, !dbg !4949
    #dbg_value(i64 %9, !4933, !DIExpression(), !4950)
  %11 = mul i64 %10, %9, !dbg !4951
  ret i64 %11, !dbg !4952
}
