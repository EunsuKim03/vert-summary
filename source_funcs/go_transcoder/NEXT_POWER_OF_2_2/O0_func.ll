define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
  %0 = sub i64 %n, 1, !dbg !4932
    #dbg_value(i64 %0, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %0, !4930, !DIExpression(), !4933)
  %1 = lshr i64 %0, 1, !dbg !4934
  %shift.result = select i1 false, i64 0, i64 %1, !dbg !4934
  %2 = or i64 %0, %shift.result, !dbg !4935
    #dbg_value(i64 %2, !4930, !DIExpression(), !4935)
    #dbg_value(i64 %2, !4930, !DIExpression(), !4936)
  %3 = lshr i64 %2, 2, !dbg !4937
  %shift.result1 = select i1 false, i64 0, i64 %3, !dbg !4937
  %4 = or i64 %2, %shift.result1, !dbg !4938
    #dbg_value(i64 %4, !4930, !DIExpression(), !4938)
    #dbg_value(i64 %4, !4930, !DIExpression(), !4939)
  %5 = lshr i64 %4, 4, !dbg !4940
  %shift.result2 = select i1 false, i64 0, i64 %5, !dbg !4940
  %6 = or i64 %4, %shift.result2, !dbg !4941
    #dbg_value(i64 %6, !4930, !DIExpression(), !4941)
    #dbg_value(i64 %6, !4930, !DIExpression(), !4942)
  %7 = lshr i64 %6, 8, !dbg !4943
  %shift.result3 = select i1 false, i64 0, i64 %7, !dbg !4943
  %8 = or i64 %6, %shift.result3, !dbg !4944
    #dbg_value(i64 %8, !4930, !DIExpression(), !4944)
    #dbg_value(i64 %8, !4930, !DIExpression(), !4945)
  %9 = lshr i64 %8, 16, !dbg !4946
  %shift.result4 = select i1 false, i64 0, i64 %9, !dbg !4946
  %10 = or i64 %8, %shift.result4, !dbg !4947
    #dbg_value(i64 %10, !4930, !DIExpression(), !4947)
  %11 = add i64 %10, 1, !dbg !4948
    #dbg_value(i64 %11, !4930, !DIExpression(), !4948)
    #dbg_value(i64 %11, !4930, !DIExpression(), !4949)
  ret i64 %11, !dbg !4950
}
