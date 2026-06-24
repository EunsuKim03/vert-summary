define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = shl i64 %n, 3, !dbg !4933
  %shift.result = select i1 false, i64 0, i64 %0, !dbg !4933
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
  %1 = sub i64 %shift.result, %n, !dbg !4935
  ret i64 %1, !dbg !4936
}
