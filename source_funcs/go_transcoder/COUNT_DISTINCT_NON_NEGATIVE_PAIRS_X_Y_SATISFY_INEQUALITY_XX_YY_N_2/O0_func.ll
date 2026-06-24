define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
    #dbg_value(i64 0, !4931, !DIExpression(), !4935)
    #dbg_value(i64 0, !4932, !DIExpression(), !4936)
  br label %for.loop, !dbg !4937

for.loop:                                         ; preds = %for.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %4, %for.done ], !dbg !4935
  %1 = phi i64 [ 0, %entry ], [ %12, %for.done ], !dbg !4936
    #dbg_value(i64 %1, !4932, !DIExpression(), !4938)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4939)
  %2 = mul i64 %1, %1, !dbg !4940
    #dbg_value(i64 %n, !4930, !DIExpression(), !4941)
  %3 = icmp slt i64 %2, %n, !dbg !4942
  br i1 %3, label %for.body, label %for.done3, !dbg !4937

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 0, !4933, !DIExpression(), !4943)
  br label %for.loop1, !dbg !4937

for.loop1:                                        ; preds = %for.body2, %for.body
  %4 = phi i64 [ %0, %for.body ], [ %10, %for.body2 ], !dbg !4935
  %5 = phi i64 [ 0, %for.body ], [ %11, %for.body2 ], !dbg !4943
    #dbg_value(i64 %1, !4932, !DIExpression(), !4944)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4945)
  %6 = mul i64 %1, %1, !dbg !4946
    #dbg_value(i64 %5, !4933, !DIExpression(), !4947)
    #dbg_value(i64 %5, !4933, !DIExpression(), !4948)
  %7 = mul i64 %5, %5, !dbg !4949
  %8 = add i64 %6, %7, !dbg !4950
    #dbg_value(i64 %n, !4930, !DIExpression(), !4951)
  %9 = icmp slt i64 %8, %n, !dbg !4952
  br i1 %9, label %for.body2, label %for.done, !dbg !4937

for.body2:                                        ; preds = %for.loop1
  %10 = add i64 %4, 1, !dbg !4953
    #dbg_value(i64 %10, !4931, !DIExpression(), !4953)
  %11 = add i64 %5, 1, !dbg !4954
    #dbg_value(i64 %11, !4933, !DIExpression(), !4954)
  br label %for.loop1, !dbg !4937

for.done:                                         ; preds = %for.loop1
  %12 = add i64 %1, 1, !dbg !4955
    #dbg_value(i64 %12, !4932, !DIExpression(), !4955)
  br label %for.loop, !dbg !4937

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %0, !4931, !DIExpression(), !4956)
  ret i64 %0, !dbg !4957
}
