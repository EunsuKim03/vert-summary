define i64 @f_gold(i64 %x) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4930, !DIExpression(), !4933)
    #dbg_value(i64 %x, !4930, !DIExpression(), !4934)
  %0 = and i64 %x, 2863311530, !dbg !4935
    #dbg_value(i64 %0, !4931, !DIExpression(), !4936)
    #dbg_value(i64 %x, !4930, !DIExpression(), !4937)
  %1 = and i64 %x, 1431655765, !dbg !4938
    #dbg_value(i64 %1, !4932, !DIExpression(), !4939)
  %2 = lshr i64 %0, 1, !dbg !4940
  %shift.result = select i1 false, i64 0, i64 %2, !dbg !4940
    #dbg_value(i64 %shift.result, !4931, !DIExpression(), !4940)
  %3 = shl i64 %1, 1, !dbg !4941
  %shift.result1 = select i1 false, i64 0, i64 %3, !dbg !4941
    #dbg_value(i64 %shift.result1, !4932, !DIExpression(), !4941)
    #dbg_value(i64 %shift.result, !4931, !DIExpression(), !4942)
    #dbg_value(i64 %shift.result1, !4932, !DIExpression(), !4943)
  %4 = or i64 %shift.result, %shift.result1, !dbg !4944
  ret i64 %4, !dbg !4945
}
