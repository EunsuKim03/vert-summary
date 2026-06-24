define i64 @f_gold(i64 %a, i64 %b) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4932, !DIExpression(), !4937)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4937)
    #dbg_value(i64 0, !4934, !DIExpression(), !4938)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4939)
    #dbg_value(i64 %a, !4935, !DIExpression(), !4940)
  br label %for.loop, !dbg !4941

for.loop:                                         ; preds = %for.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %3, %for.done ], !dbg !4938
  %1 = phi i64 [ %a, %entry ], [ %12, %for.done ], !dbg !4940
    #dbg_value(i64 %1, !4935, !DIExpression(), !4942)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4943)
  %2 = icmp sle i64 %1, %b, !dbg !4944
  br i1 %2, label %for.body, label %for.done3, !dbg !4941

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 1, !4936, !DIExpression(), !4945)
  br label %for.loop1, !dbg !4941

for.loop1:                                        ; preds = %if.done, %for.body
  %3 = phi i64 [ %0, %for.body ], [ %10, %if.done ], !dbg !4938
  %4 = phi i64 [ 1, %for.body ], [ %11, %if.done ], !dbg !4945
    #dbg_value(i64 %4, !4936, !DIExpression(), !4946)
    #dbg_value(i64 %4, !4936, !DIExpression(), !4947)
  %5 = mul i64 %4, %4, !dbg !4948
    #dbg_value(i64 %1, !4935, !DIExpression(), !4949)
  %6 = icmp sle i64 %5, %1, !dbg !4950
  br i1 %6, label %for.body2, label %for.done, !dbg !4941

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %4, !4936, !DIExpression(), !4951)
    #dbg_value(i64 %4, !4936, !DIExpression(), !4952)
  %7 = mul i64 %4, %4, !dbg !4953
    #dbg_value(i64 %1, !4935, !DIExpression(), !4954)
  %8 = icmp eq i64 %7, %1, !dbg !4955
  br i1 %8, label %if.then, label %if.done, !dbg !4941

if.then:                                          ; preds = %for.body2
  %9 = add i64 %3, 1, !dbg !4956
    #dbg_value(i64 %9, !4934, !DIExpression(), !4956)
  br label %if.done, !dbg !4941

if.done:                                          ; preds = %if.then, %for.body2
  %10 = phi i64 [ %3, %for.body2 ], [ %9, %if.then ], !dbg !4938
  %11 = add i64 %4, 1, !dbg !4957
    #dbg_value(i64 %11, !4936, !DIExpression(), !4957)
  br label %for.loop1, !dbg !4941

for.done:                                         ; preds = %for.loop1
  %12 = add i64 %1, 1, !dbg !4958
    #dbg_value(i64 %12, !4935, !DIExpression(), !4958)
  br label %for.loop, !dbg !4941

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %0, !4934, !DIExpression(), !4959)
  ret i64 %0, !dbg !4960
}
