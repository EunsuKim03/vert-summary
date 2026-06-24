define i1 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = and i64 %n, 1, !dbg !4933
  %1 = icmp eq i64 %0, 0, !dbg !4934
  ret i1 %1, !dbg !4935
}
