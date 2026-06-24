define i64 @f_gold(i64 %a, i64 %b) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4932, !DIExpression(), !4935)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4935)
    #dbg_value(i64 0, !4934, !DIExpression(), !4936)
  br label %for.loop, !dbg !4937

for.loop:                                         ; preds = %if.done, %entry
  %0 = phi i64 [ %a, %entry ], [ %shift.result, %if.done ], !dbg !4938
  %1 = phi i64 [ %b, %entry ], [ %shift.result1, %if.done ], !dbg !4939
  %2 = phi i64 [ 0, %entry ], [ %7, %if.done ], !dbg !4936
    #dbg_value(i64 %1, !4933, !DIExpression(), !4940)
  %3 = icmp ugt i64 %1, 0, !dbg !4941
  br i1 %3, label %for.body, label %for.done, !dbg !4937

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4933, !DIExpression(), !4942)
  %4 = and i64 %1, 1, !dbg !4943
  %5 = icmp ne i64 %4, 0, !dbg !4944
  br i1 %5, label %if.then, label %if.done, !dbg !4937

if.then:                                          ; preds = %for.body
    #dbg_value(i64 %2, !4934, !DIExpression(), !4945)
    #dbg_value(i64 %0, !4932, !DIExpression(), !4946)
  %6 = add i64 %2, %0, !dbg !4947
    #dbg_value(i64 %6, !4934, !DIExpression(), !4948)
  br label %if.done, !dbg !4937

if.done:                                          ; preds = %if.then, %for.body
  %7 = phi i64 [ %2, %for.body ], [ %6, %if.then ], !dbg !4936
    #dbg_value(i64 %0, !4932, !DIExpression(), !4949)
  %8 = shl i64 %0, 1, !dbg !4950
  %shift.result = select i1 false, i64 0, i64 %8, !dbg !4950
    #dbg_value(i64 %shift.result, !4932, !DIExpression(), !4951)
    #dbg_value(i64 %1, !4933, !DIExpression(), !4952)
  %9 = lshr i64 %1, 1, !dbg !4953
  %shift.result1 = select i1 false, i64 0, i64 %9, !dbg !4953
    #dbg_value(i64 %shift.result1, !4933, !DIExpression(), !4954)
  br label %for.loop, !dbg !4937

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !4934, !DIExpression(), !4955)
  ret i64 %2, !dbg !4956
}
