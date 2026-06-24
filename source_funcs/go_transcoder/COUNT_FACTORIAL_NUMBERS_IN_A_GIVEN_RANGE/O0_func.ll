define i64 @f_gold(i64 %low, i64 %high) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %low, !4932, !DIExpression(), !4937)
    #dbg_value(i64 %high, !4933, !DIExpression(), !4937)
    #dbg_value(i64 1, !4934, !DIExpression(), !4938)
    #dbg_value(i64 1, !4935, !DIExpression(), !4939)
  br label %for.loop, !dbg !4940

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ 1, %entry ], [ %3, %for.body ], !dbg !4938
  %1 = phi i64 [ 1, %entry ], [ %4, %for.body ], !dbg !4939
    #dbg_value(i64 %0, !4934, !DIExpression(), !4941)
    #dbg_value(i64 %low, !4932, !DIExpression(), !4942)
  %2 = icmp slt i64 %0, %low, !dbg !4943
  br i1 %2, label %for.body, label %for.done, !dbg !4940

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4934, !DIExpression(), !4944)
    #dbg_value(i64 %1, !4935, !DIExpression(), !4945)
  %3 = mul i64 %0, %1, !dbg !4946
    #dbg_value(i64 %3, !4934, !DIExpression(), !4947)
  %4 = add i64 %1, 1, !dbg !4948
    #dbg_value(i64 %4, !4935, !DIExpression(), !4948)
  br label %for.loop, !dbg !4940

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4936, !DIExpression(), !4949)
  br label %for.loop1, !dbg !4940

for.loop1:                                        ; preds = %for.body2, %for.done
  %5 = phi i64 [ %0, %for.done ], [ %10, %for.body2 ], !dbg !4938
  %6 = phi i64 [ %1, %for.done ], [ %11, %for.body2 ], !dbg !4939
  %7 = phi i64 [ 0, %for.done ], [ %9, %for.body2 ], !dbg !4949
    #dbg_value(i64 %5, !4934, !DIExpression(), !4950)
    #dbg_value(i64 %high, !4933, !DIExpression(), !4951)
  %8 = icmp sle i64 %5, %high, !dbg !4952
  br i1 %8, label %for.body2, label %for.done3, !dbg !4940

for.body2:                                        ; preds = %for.loop1
  %9 = add i64 %7, 1, !dbg !4953
    #dbg_value(i64 %9, !4936, !DIExpression(), !4953)
    #dbg_value(i64 %5, !4934, !DIExpression(), !4954)
    #dbg_value(i64 %6, !4935, !DIExpression(), !4955)
  %10 = mul i64 %5, %6, !dbg !4956
    #dbg_value(i64 %10, !4934, !DIExpression(), !4957)
  %11 = add i64 %6, 1, !dbg !4958
    #dbg_value(i64 %11, !4935, !DIExpression(), !4958)
  br label %for.loop1, !dbg !4940

for.done3:                                        ; preds = %for.loop1
    #dbg_value(i64 %7, !4936, !DIExpression(), !4959)
  ret i64 %7, !dbg !4960
}
