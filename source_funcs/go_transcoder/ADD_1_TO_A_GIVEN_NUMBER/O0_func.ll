define i64 @f_gold(i64 %x) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4930, !DIExpression(), !4932)
    #dbg_value(i64 1, !4931, !DIExpression(), !4933)
  br label %for.loop, !dbg !4934

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %x, %entry ], [ %4, %for.body ], !dbg !4935
  %1 = phi i64 [ 1, %entry ], [ %shift.result, %for.body ], !dbg !4933
    #dbg_value(i64 %0, !4930, !DIExpression(), !4936)
    #dbg_value(i64 %1, !4931, !DIExpression(), !4937)
  %2 = and i64 %0, %1, !dbg !4938
  %3 = icmp ne i64 %2, 0, !dbg !4939
  br i1 %3, label %for.body, label %for.done, !dbg !4934

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4930, !DIExpression(), !4940)
    #dbg_value(i64 %1, !4931, !DIExpression(), !4941)
  %4 = xor i64 %0, %1, !dbg !4942
    #dbg_value(i64 %4, !4930, !DIExpression(), !4943)
  %5 = shl i64 %1, 1, !dbg !4944
  %shift.result = select i1 false, i64 0, i64 %5, !dbg !4944
    #dbg_value(i64 %shift.result, !4931, !DIExpression(), !4944)
  br label %for.loop, !dbg !4934

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4930, !DIExpression(), !4945)
    #dbg_value(i64 %1, !4931, !DIExpression(), !4946)
  %6 = xor i64 %0, %1, !dbg !4947
    #dbg_value(i64 %6, !4930, !DIExpression(), !4948)
    #dbg_value(i64 %6, !4930, !DIExpression(), !4949)
  ret i64 %6, !dbg !4950
}
