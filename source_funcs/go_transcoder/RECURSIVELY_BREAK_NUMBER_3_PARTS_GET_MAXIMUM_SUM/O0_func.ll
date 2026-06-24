define i64 @f_gold(i64 %n) #0 !dbg !4943 {
entry:
    #dbg_value(i64 %n, !4945, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4945, !DIExpression(), !4947)
  %0 = icmp eq i64 %n, 0, !dbg !4948
  br i1 %0, label %if.then, label %cond.false, !dbg !4949

if.then:                                          ; preds = %cond.false, %entry
    #dbg_value(i64 %n, !4945, !DIExpression(), !4950)
  ret i64 %n, !dbg !4951

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %n, !4945, !DIExpression(), !4952)
  %1 = icmp eq i64 %n, 1, !dbg !4953
  br i1 %1, label %if.then, label %if.done, !dbg !4949

if.done:                                          ; preds = %cond.false
    #dbg_value(i64 %n, !4945, !DIExpression(), !4954)
  %2 = icmp eq i64 %n, -9223372036854775808, !dbg !4955
  %3 = and i1 false, %2, !dbg !4955
  %4 = select i1 %3, i64 1, i64 2, !dbg !4955
  %5 = sdiv i64 %n, %4, !dbg !4955
  %6 = call i64 @f_gold(i64 %5), !dbg !4956
    #dbg_value(i64 %n, !4945, !DIExpression(), !4957)
  %7 = icmp eq i64 %n, -9223372036854775808, !dbg !4958
  %8 = and i1 false, %7, !dbg !4958
  %9 = select i1 %8, i64 1, i64 3, !dbg !4958
  %10 = sdiv i64 %n, %9, !dbg !4958
  %11 = call i64 @f_gold(i64 %10), !dbg !4959
  %12 = add i64 %6, %11, !dbg !4960
    #dbg_value(i64 %n, !4945, !DIExpression(), !4961)
  %13 = icmp eq i64 %n, -9223372036854775808, !dbg !4962
  %14 = and i1 false, %13, !dbg !4962
  %15 = select i1 %14, i64 1, i64 4, !dbg !4962
  %16 = sdiv i64 %n, %15, !dbg !4962
  %17 = call i64 @f_gold(i64 %16), !dbg !4963
  %18 = add i64 %12, %17, !dbg !4964
    #dbg_value(i64 %n, !4945, !DIExpression(), !4965)
  %19 = call i64 @main.max(i64 %18, i64 %n, ptr undef), !dbg !4966
  ret i64 %19, !dbg !4967
}
