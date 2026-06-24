define i64 @f_gold(i64 %a, i64 %b) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4932, !DIExpression(), !4934)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4934)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4935)
  %0 = icmp eq i64 %a, -9223372036854775808, !dbg !4936
  %1 = and i1 false, %0, !dbg !4936
  %2 = select i1 %1, i64 1, i64 2, !dbg !4936
  %3 = sdiv i64 %a, %2, !dbg !4936
    #dbg_value(i64 %b, !4933, !DIExpression(), !4937)
  %4 = icmp eq i64 %b, -9223372036854775808, !dbg !4938
  %5 = and i1 false, %4, !dbg !4938
  %6 = select i1 %5, i64 1, i64 2, !dbg !4938
  %7 = sdiv i64 %b, %6, !dbg !4938
  %8 = add i64 %3, %7, !dbg !4939
    #dbg_value(i64 %a, !4932, !DIExpression(), !4940)
  %9 = icmp eq i64 %a, -9223372036854775808, !dbg !4941
  %10 = and i1 false, %9, !dbg !4941
  %11 = select i1 %10, i64 1, i64 2, !dbg !4941
  %12 = srem i64 %a, %11, !dbg !4941
    #dbg_value(i64 %b, !4933, !DIExpression(), !4942)
  %13 = icmp eq i64 %b, -9223372036854775808, !dbg !4943
  %14 = and i1 false, %13, !dbg !4943
  %15 = select i1 %14, i64 1, i64 2, !dbg !4943
  %16 = srem i64 %b, %15, !dbg !4943
  %17 = add i64 %12, %16, !dbg !4944
  %18 = icmp eq i64 %17, -9223372036854775808, !dbg !4945
  %19 = and i1 false, %18, !dbg !4945
  %20 = select i1 %19, i64 1, i64 2, !dbg !4945
  %21 = sdiv i64 %17, %20, !dbg !4945
  %22 = add i64 %8, %21, !dbg !4946
  ret i64 %22, !dbg !4947
}
