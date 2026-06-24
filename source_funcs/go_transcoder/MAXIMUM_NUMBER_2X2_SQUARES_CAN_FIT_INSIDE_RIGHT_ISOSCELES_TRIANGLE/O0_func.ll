define i64 @f_gold(i64 %base) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %base, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %base, !4930, !DIExpression(), !4932)
  %0 = sub i64 %base, 2, !dbg !4933
    #dbg_value(i64 %0, !4930, !DIExpression(), !4934)
    #dbg_value(i64 %0, !4930, !DIExpression(), !4935)
  %1 = icmp eq i64 %0, -9223372036854775808, !dbg !4936
  %2 = and i1 false, %1, !dbg !4936
  %3 = select i1 %2, i64 1, i64 2, !dbg !4936
  %4 = sdiv i64 %0, %3, !dbg !4936
    #dbg_value(i64 %4, !4930, !DIExpression(), !4937)
    #dbg_value(i64 %4, !4930, !DIExpression(), !4938)
    #dbg_value(i64 %4, !4930, !DIExpression(), !4939)
  %5 = add i64 %4, 1, !dbg !4940
  %6 = mul i64 %4, %5, !dbg !4941
  %7 = icmp eq i64 %6, -9223372036854775808, !dbg !4942
  %8 = and i1 false, %7, !dbg !4942
  %9 = select i1 %8, i64 1, i64 2, !dbg !4942
  %10 = sdiv i64 %6, %9, !dbg !4942
  ret i64 %10, !dbg !4943
}
