define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
  %0 = icmp eq i64 %n, -9223372036854775808, !dbg !4935
  %1 = and i1 false, %0, !dbg !4935
  %2 = select i1 %1, i64 1, i64 10, !dbg !4935
  %3 = sdiv i64 %n, %2, !dbg !4935
  %4 = mul i64 %3, 10, !dbg !4936
    #dbg_value(i64 %4, !4931, !DIExpression(), !4937)
    #dbg_value(i64 %4, !4931, !DIExpression(), !4938)
  %5 = add i64 %4, 10, !dbg !4939
    #dbg_value(i64 %5, !4932, !DIExpression(), !4940)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4941)
    #dbg_value(i64 %4, !4931, !DIExpression(), !4942)
  %6 = sub i64 %n, %4, !dbg !4943
    #dbg_value(i64 %5, !4932, !DIExpression(), !4944)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4945)
  %7 = sub i64 %5, %n, !dbg !4946
  %8 = icmp sgt i64 %6, %7, !dbg !4947
  br i1 %8, label %if.then, label %if.done, !dbg !4948

if.then:                                          ; preds = %entry
    #dbg_value(i64 %5, !4932, !DIExpression(), !4949)
  ret i64 %5, !dbg !4950

if.done:                                          ; preds = %entry
    #dbg_value(i64 %4, !4931, !DIExpression(), !4951)
  ret i64 %4, !dbg !4952
}
