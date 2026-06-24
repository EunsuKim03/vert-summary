define double @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4933)
  %0 = add i64 %n, 1, !dbg !4934
  %1 = mul i64 %n, %0, !dbg !4935
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
  %2 = add i64 %n, 2, !dbg !4937
  %3 = mul i64 %1, %2, !dbg !4938
    #dbg_value(i64 %n, !4930, !DIExpression(), !4939)
  %4 = mul i64 %n, 3, !dbg !4940
  %5 = add i64 %4, 1, !dbg !4941
  %6 = mul i64 %3, %5, !dbg !4942
  %7 = icmp eq i64 %6, -9223372036854775808, !dbg !4943
  %8 = and i1 false, %7, !dbg !4943
  %9 = select i1 %8, i64 1, i64 24, !dbg !4943
  %10 = sdiv i64 %6, %9, !dbg !4943
  %11 = sitofp i64 %10 to double, !dbg !4944
  ret double %11, !dbg !4945
}
