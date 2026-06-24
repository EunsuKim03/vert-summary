define i64 @f_gold(i64 %num) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %num, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %num, !4930, !DIExpression(), !4932)
  %0 = icmp slt i64 %num, 0, !dbg !4933
  br i1 %0, label %if.then, label %if.done, !dbg !4934

if.then:                                          ; preds = %entry
    #dbg_value(i64 %num, !4930, !DIExpression(), !4935)
  %1 = sub i64 0, %num, !dbg !4936
  %2 = call i64 @f_gold(i64 %1), !dbg !4937
  ret i64 %2, !dbg !4938

if.done:                                          ; preds = %entry
    #dbg_value(i64 %num, !4930, !DIExpression(), !4939)
  %3 = icmp eq i64 %num, 0, !dbg !4940
  br i1 %3, label %if.then1, label %cond.false, !dbg !4934

if.then1:                                         ; preds = %cond.false, %if.done
  ret i64 1, !dbg !4941

cond.false:                                       ; preds = %if.done
    #dbg_value(i64 %num, !4930, !DIExpression(), !4942)
  %4 = icmp eq i64 %num, 7, !dbg !4943
  br i1 %4, label %if.then1, label %if.done2, !dbg !4934

if.done2:                                         ; preds = %cond.false
    #dbg_value(i64 %num, !4930, !DIExpression(), !4944)
  %5 = icmp slt i64 %num, 10, !dbg !4945
  br i1 %5, label %if.then3, label %if.done4, !dbg !4934

if.then3:                                         ; preds = %if.done2
  ret i64 0, !dbg !4946

if.done4:                                         ; preds = %if.done2
    #dbg_value(i64 %num, !4930, !DIExpression(), !4947)
  %6 = icmp eq i64 %num, -9223372036854775808, !dbg !4948
  %7 = and i1 false, %6, !dbg !4948
  %8 = select i1 %7, i64 1, i64 10, !dbg !4948
  %9 = sdiv i64 %num, %8, !dbg !4948
    #dbg_value(i64 %num, !4930, !DIExpression(), !4949)
    #dbg_value(i64 %num, !4930, !DIExpression(), !4950)
  %10 = icmp eq i64 %num, -9223372036854775808, !dbg !4951
  %11 = and i1 false, %10, !dbg !4951
  %12 = select i1 %11, i64 1, i64 10, !dbg !4951
  %13 = sdiv i64 %num, %12, !dbg !4951
  %14 = mul i64 %13, 10, !dbg !4952
  %15 = sub i64 %num, %14, !dbg !4953
  %16 = mul i64 %15, 2, !dbg !4954
  %17 = sub i64 %9, %16, !dbg !4955
  %18 = call i64 @f_gold(i64 %17), !dbg !4956
  ret i64 %18, !dbg !4957
}
