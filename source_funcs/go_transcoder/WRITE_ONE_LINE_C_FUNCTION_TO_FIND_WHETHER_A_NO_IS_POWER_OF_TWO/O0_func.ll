define i1 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = icmp eq i64 %n, 0, !dbg !4933
  br i1 %0, label %if.then, label %for.loop, !dbg !4934

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4935

for.loop:                                         ; preds = %if.done, %entry
  %1 = phi i64 [ %n, %entry ], [ %11, %if.done ], !dbg !4936
    #dbg_value(i64 %1, !4930, !DIExpression(), !4937)
  %2 = icmp ne i64 %1, 1, !dbg !4938
  br i1 %2, label %for.body, label %for.done, !dbg !4934

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4930, !DIExpression(), !4939)
  %3 = icmp eq i64 %1, -9223372036854775808, !dbg !4940
  %4 = and i1 false, %3, !dbg !4940
  %5 = select i1 %4, i64 1, i64 2, !dbg !4940
  %6 = srem i64 %1, %5, !dbg !4940
  %7 = icmp ne i64 %6, 0, !dbg !4941
  br i1 %7, label %if.then1, label %if.done, !dbg !4934

if.then1:                                         ; preds = %for.body
  ret i1 false, !dbg !4942

if.done:                                          ; preds = %for.body
    #dbg_value(i64 %1, !4930, !DIExpression(), !4943)
  %8 = icmp eq i64 %1, -9223372036854775808, !dbg !4944
  %9 = and i1 false, %8, !dbg !4944
  %10 = select i1 %9, i64 1, i64 2, !dbg !4944
  %11 = sdiv i64 %1, %10, !dbg !4944
    #dbg_value(i64 %11, !4930, !DIExpression(), !4945)
  br label %for.loop, !dbg !4934

for.done:                                         ; preds = %for.loop
  ret i1 true, !dbg !4946
}
