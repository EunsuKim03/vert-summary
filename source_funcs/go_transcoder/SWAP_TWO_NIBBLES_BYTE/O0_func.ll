define i64 @f_gold(i64 %x) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %x, !4930, !DIExpression(), !4932)
  %0 = and i64 %x, 15, !dbg !4933
  %1 = shl i64 %0, 4, !dbg !4934
  %shift.result = select i1 false, i64 0, i64 %1, !dbg !4934
    #dbg_value(i64 %x, !4930, !DIExpression(), !4935)
  %2 = and i64 %x, 240, !dbg !4936
  %3 = ashr i64 %2, 4, !dbg !4937
  %4 = or i64 %shift.result, %3, !dbg !4938
  ret i64 %4, !dbg !4939
}
