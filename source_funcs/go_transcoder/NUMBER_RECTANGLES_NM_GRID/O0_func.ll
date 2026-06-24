define i64 @f_gold(i64 %n, i64 %m) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %m, !4933, !DIExpression(), !4934)
    #dbg_value(i64 %m, !4933, !DIExpression(), !4935)
    #dbg_value(i64 %n, !4932, !DIExpression(), !4936)
  %0 = mul i64 %m, %n, !dbg !4937
    #dbg_value(i64 %n, !4932, !DIExpression(), !4938)
  %1 = add i64 %n, 1, !dbg !4939
  %2 = mul i64 %0, %1, !dbg !4940
    #dbg_value(i64 %m, !4933, !DIExpression(), !4941)
  %3 = add i64 %m, 1, !dbg !4942
  %4 = mul i64 %2, %3, !dbg !4943
  %5 = icmp eq i64 %4, -9223372036854775808, !dbg !4944
  %6 = and i1 false, %5, !dbg !4944
  %7 = select i1 %6, i64 1, i64 4, !dbg !4944
  %8 = sdiv i64 %4, %7, !dbg !4944
  ret i64 %8, !dbg !4945
}
