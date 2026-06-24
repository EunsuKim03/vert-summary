define i1 @f_gold(i64 %num) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %num, !4930, !DIExpression(), !4933)
    #dbg_value(i64 %num, !4930, !DIExpression(), !4934)
  %0 = icmp slt i64 %num, 0, !dbg !4935
  br i1 %0, label %if.then, label %if.done, !dbg !4936

if.then:                                          ; preds = %entry
  ret i1 false, !dbg !4937

if.done:                                          ; preds = %entry
    #dbg_value(i64 0, !4931, !DIExpression(), !4938)
    #dbg_value(i64 1, !4932, !DIExpression(), !4939)
  br label %for.loop, !dbg !4936

for.loop:                                         ; preds = %if.done2, %if.done
  %1 = phi i64 [ 0, %if.done ], [ %4, %if.done2 ], !dbg !4938
  %2 = phi i64 [ 1, %if.done ], [ %6, %if.done2 ], !dbg !4939
    #dbg_value(i64 %1, !4931, !DIExpression(), !4940)
    #dbg_value(i64 %num, !4930, !DIExpression(), !4941)
  %3 = icmp sle i64 %1, %num, !dbg !4942
  br i1 %3, label %for.body, label %for.done, !dbg !4936

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4931, !DIExpression(), !4943)
    #dbg_value(i64 %2, !4932, !DIExpression(), !4944)
  %4 = add i64 %1, %2, !dbg !4945
    #dbg_value(i64 %4, !4931, !DIExpression(), !4946)
    #dbg_value(i64 %4, !4931, !DIExpression(), !4947)
    #dbg_value(i64 %num, !4930, !DIExpression(), !4948)
  %5 = icmp eq i64 %4, %num, !dbg !4949
  br i1 %5, label %if.then1, label %if.done2, !dbg !4936

if.then1:                                         ; preds = %for.body
  ret i1 true, !dbg !4950

if.done2:                                         ; preds = %for.body
  %6 = add i64 %2, 1, !dbg !4951
    #dbg_value(i64 %6, !4932, !DIExpression(), !4951)
  br label %for.loop, !dbg !4936

for.done:                                         ; preds = %for.loop
  ret i1 false, !dbg !4952
}
