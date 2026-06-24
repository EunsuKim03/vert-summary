define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
    #dbg_value(i64 0, !4931, !DIExpression(), !4933)
  br label %for.loop, !dbg !4934

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %n, %entry ], [ %11, %for.body ], !dbg !4935
  %1 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !4933
    #dbg_value(i64 %0, !4930, !DIExpression(), !4936)
  %2 = icmp sgt i64 %0, 0, !dbg !4937
  br i1 %2, label %for.body, label %for.done, !dbg !4934

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4930, !DIExpression(), !4938)
  %3 = icmp eq i64 %0, -9223372036854775808, !dbg !4939
  %4 = and i1 false, %3, !dbg !4939
  %5 = select i1 %4, i64 1, i64 10, !dbg !4939
  %6 = srem i64 %0, %5, !dbg !4939
  %7 = add i64 %1, %6, !dbg !4940
    #dbg_value(i64 %7, !4931, !DIExpression(), !4940)
  %8 = icmp eq i64 %0, -9223372036854775808, !dbg !4941
  %9 = and i1 false, %8, !dbg !4941
  %10 = select i1 %9, i64 1, i64 10, !dbg !4941
  %11 = sdiv i64 %0, %10, !dbg !4941
    #dbg_value(i64 %11, !4930, !DIExpression(), !4941)
  br label %for.loop, !dbg !4934

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4931, !DIExpression(), !4942)
  %12 = icmp eq i64 %1, 1, !dbg !4943
  br i1 %12, label %if.then, label %if.done, !dbg !4934

if.then:                                          ; preds = %for.done
  ret i64 10, !dbg !4944

if.done:                                          ; preds = %for.done
    #dbg_value(i64 %1, !4931, !DIExpression(), !4945)
  ret i64 %1, !dbg !4946
}
