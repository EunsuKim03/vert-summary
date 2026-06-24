define i64 @f_gold(i64 %x) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %x, !4930, !DIExpression(), !4932)
  %0 = shl i64 %x, 1, !dbg !4933
  %shift.result = select i1 false, i64 0, i64 %0, !dbg !4933
    #dbg_value(i64 %x, !4930, !DIExpression(), !4934)
  %1 = add i64 %shift.result, %x, !dbg !4935
    #dbg_value(i64 %x, !4930, !DIExpression(), !4936)
  %2 = ashr i64 %x, 1, !dbg !4937
  %3 = add i64 %1, %2, !dbg !4938
  ret i64 %3, !dbg !4939
}
