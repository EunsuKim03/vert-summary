define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4935)
    #dbg_value(i64 0, !4931, !DIExpression(), !4936)
    #dbg_value(i64 0, !4932, !DIExpression(), !4937)
  br label %for.loop, !dbg !4938

for.loop:                                         ; preds = %for.done5, %entry
  %0 = phi i64 [ 0, %entry ], [ %3, %for.done5 ], !dbg !4936
  %1 = phi i64 [ 0, %entry ], [ %19, %for.done5 ], !dbg !4937
    #dbg_value(i64 %1, !4932, !DIExpression(), !4939)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4940)
  %2 = icmp sle i64 %1, %n, !dbg !4941
  br i1 %2, label %for.body, label %for.done6, !dbg !4938

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4933, !DIExpression(), !4942)
  br label %for.loop1, !dbg !4938

for.loop1:                                        ; preds = %for.done, %for.body
  %3 = phi i64 [ %0, %for.body ], [ %7, %for.done ], !dbg !4936
  %4 = phi i64 [ 0, %for.body ], [ %18, %for.done ], !dbg !4942
    #dbg_value(i64 %4, !4933, !DIExpression(), !4943)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4944)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4945)
  %5 = sub i64 %n, %1, !dbg !4946
  %6 = icmp sle i64 %4, %5, !dbg !4947
  br i1 %6, label %for.body2, label %for.done5, !dbg !4938

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 0, !4934, !DIExpression(), !4948)
  br label %for.loop3, !dbg !4938

for.loop3:                                        ; preds = %if.done, %for.body2
  %7 = phi i64 [ %3, %for.body2 ], [ %16, %if.done ], !dbg !4936
  %8 = phi i64 [ 0, %for.body2 ], [ %17, %if.done ], !dbg !4948
    #dbg_value(i64 %8, !4934, !DIExpression(), !4949)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4950)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4951)
  %9 = sub i64 %n, %1, !dbg !4952
    #dbg_value(i64 %4, !4933, !DIExpression(), !4953)
  %10 = sub i64 %9, %4, !dbg !4954
  %11 = icmp sle i64 %8, %10, !dbg !4955
  br i1 %11, label %for.body4, label %for.done, !dbg !4938

for.body4:                                        ; preds = %for.loop3
    #dbg_value(i64 %1, !4932, !DIExpression(), !4956)
    #dbg_value(i64 %4, !4933, !DIExpression(), !4957)
  %12 = add i64 %1, %4, !dbg !4958
    #dbg_value(i64 %8, !4934, !DIExpression(), !4959)
  %13 = add i64 %12, %8, !dbg !4960
    #dbg_value(i64 %n, !4930, !DIExpression(), !4961)
  %14 = icmp eq i64 %13, %n, !dbg !4962
  br i1 %14, label %if.then, label %if.done, !dbg !4938

if.then:                                          ; preds = %for.body4
  %15 = add i64 %7, 1, !dbg !4963
    #dbg_value(i64 %15, !4931, !DIExpression(), !4963)
  br label %if.done, !dbg !4938

if.done:                                          ; preds = %if.then, %for.body4
  %16 = phi i64 [ %7, %for.body4 ], [ %15, %if.then ], !dbg !4936
  %17 = add i64 %8, 1, !dbg !4964
    #dbg_value(i64 %17, !4934, !DIExpression(), !4964)
  br label %for.loop3, !dbg !4938

for.done:                                         ; preds = %for.loop3
  %18 = add i64 %4, 1, !dbg !4965
    #dbg_value(i64 %18, !4933, !DIExpression(), !4965)
  br label %for.loop1, !dbg !4938

for.done5:                                        ; preds = %for.loop1
  %19 = add i64 %1, 1, !dbg !4966
    #dbg_value(i64 %19, !4932, !DIExpression(), !4966)
  br label %for.loop, !dbg !4938

for.done6:                                        ; preds = %for.loop
    #dbg_value(i64 %0, !4931, !DIExpression(), !4967)
  ret i64 %0, !dbg !4968
}
