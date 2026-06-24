define i64 @f_gold(i64 %a, i64 %b) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %a, !4932, !DIExpression(), !4938)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4938)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4939)
  %0 = icmp eq i64 %b, 0, !dbg !4940
  br i1 %0, label %if.then, label %if.done, !dbg !4941

if.then:                                          ; preds = %entry
  ret i64 1, !dbg !4942

if.done:                                          ; preds = %entry
    #dbg_value(i64 %a, !4932, !DIExpression(), !4943)
    #dbg_value(i64 %a, !4934, !DIExpression(), !4944)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4945)
    #dbg_value(i64 %a, !4935, !DIExpression(), !4946)
    #dbg_value(i64 0, !4936, !DIExpression(), !4947)
    #dbg_value(i64 0, !4937, !DIExpression(), !4948)
    #dbg_value(i64 1, !4936, !DIExpression(), !4949)
  br label %for.loop, !dbg !4941

for.loop:                                         ; preds = %for.done, %if.done
  %1 = phi i64 [ %a, %if.done ], [ %5, %for.done ], !dbg !4944
  %2 = phi i64 [ %a, %if.done ], [ %5, %for.done ], !dbg !4946
  %3 = phi i64 [ 1, %if.done ], [ %10, %for.done ], !dbg !4947
    #dbg_value(i64 %3, !4936, !DIExpression(), !4950)
    #dbg_value(i64 %b, !4933, !DIExpression(), !4951)
  %4 = icmp slt i64 %3, %b, !dbg !4952
  br i1 %4, label %for.body, label %for.done3, !dbg !4941

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 1, !4937, !DIExpression(), !4953)
  br label %for.loop1, !dbg !4941

for.loop1:                                        ; preds = %for.body2, %for.body
  %5 = phi i64 [ %1, %for.body ], [ %8, %for.body2 ], !dbg !4944
  %6 = phi i64 [ 1, %for.body ], [ %9, %for.body2 ], !dbg !4948
    #dbg_value(i64 %6, !4937, !DIExpression(), !4954)
    #dbg_value(i64 %a, !4932, !DIExpression(), !4955)
  %7 = icmp slt i64 %6, %a, !dbg !4956
  br i1 %7, label %for.body2, label %for.done, !dbg !4941

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %2, !4935, !DIExpression(), !4957)
  %8 = add i64 %5, %2, !dbg !4958
    #dbg_value(i64 %8, !4934, !DIExpression(), !4958)
  %9 = add i64 %6, 1, !dbg !4959
    #dbg_value(i64 %9, !4937, !DIExpression(), !4959)
  br label %for.loop1, !dbg !4941

for.done:                                         ; preds = %for.loop1
    #dbg_value(i64 %5, !4934, !DIExpression(), !4960)
    #dbg_value(i64 %5, !4935, !DIExpression(), !4961)
  %10 = add i64 %3, 1, !dbg !4962
    #dbg_value(i64 %10, !4936, !DIExpression(), !4962)
  br label %for.loop, !dbg !4941

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %1, !4934, !DIExpression(), !4963)
  ret i64 %1, !dbg !4964
}
