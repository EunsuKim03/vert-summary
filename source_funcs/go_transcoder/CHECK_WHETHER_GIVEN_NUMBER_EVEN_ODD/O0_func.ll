define i1 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = icmp eq i64 %n, -9223372036854775808, !dbg !4933
  %1 = and i1 false, %0, !dbg !4933
  %2 = select i1 %1, i64 1, i64 2, !dbg !4933
  %3 = srem i64 %n, %2, !dbg !4933
  %4 = icmp eq i64 %3, 0, !dbg !4934
  ret i1 %4, !dbg !4935
}
