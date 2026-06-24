define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
    #dbg_value(i64 0, !4931, !DIExpression(), !4935)
    #dbg_value(i64 0, !4932, !DIExpression(), !4936)
    #dbg_value(i64 0, !4933, !DIExpression(), !4937)
    #dbg_value(i64 0, !4932, !DIExpression(), !4938)
  br label %for.loop, !dbg !4939

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ 0, %entry ], [ %3, %for.body ], !dbg !4936
    #dbg_value(i64 %0, !4932, !DIExpression(), !4940)
    #dbg_value(i64 %0, !4932, !DIExpression(), !4941)
  %1 = mul i64 %0, %0, !dbg !4942
    #dbg_value(i64 %n, !4930, !DIExpression(), !4943)
  %2 = icmp slt i64 %1, %n, !dbg !4944
  br i1 %2, label %for.body, label %for.loop1, !dbg !4939

for.body:                                         ; preds = %for.loop
  %3 = add i64 %0, 1, !dbg !4945
    #dbg_value(i64 %3, !4932, !DIExpression(), !4945)
  br label %for.loop, !dbg !4939

for.loop1:                                        ; preds = %cond.true, %for.loop3, %for.loop
  %4 = phi i64 [ 0, %for.loop ], [ %9, %for.loop3 ], [ %9, %cond.true ], !dbg !4935
  %5 = phi i64 [ %0, %for.loop ], [ %10, %for.loop3 ], [ %10, %cond.true ], !dbg !4936
  %6 = phi i64 [ 0, %for.loop ], [ %8, %for.loop3 ], [ %8, %cond.true ], !dbg !4937
    #dbg_value(i64 %5, !4932, !DIExpression(), !4946)
  %7 = icmp ne i64 %5, 0, !dbg !4947
  br i1 %7, label %for.body2, label %for.done, !dbg !4939

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %5, !4932, !DIExpression(), !4948)
  %8 = add i64 %6, %5, !dbg !4949
    #dbg_value(i64 %8, !4933, !DIExpression(), !4949)
  %9 = add i64 %4, 1, !dbg !4950
    #dbg_value(i64 %9, !4931, !DIExpression(), !4950)
  br label %for.loop3, !dbg !4939

for.loop3:                                        ; preds = %for.body4, %for.body2
  %10 = phi i64 [ %5, %for.body2 ], [ %18, %for.body4 ], !dbg !4936
    #dbg_value(i64 %10, !4932, !DIExpression(), !4951)
  %11 = icmp ne i64 %10, 0, !dbg !4952
  br i1 %11, label %cond.true, label %for.loop1, !dbg !4939

cond.true:                                        ; preds = %for.loop3
    #dbg_value(i64 %9, !4931, !DIExpression(), !4953)
    #dbg_value(i64 %9, !4931, !DIExpression(), !4954)
  %12 = mul i64 %9, %9, !dbg !4955
    #dbg_value(i64 %10, !4932, !DIExpression(), !4956)
  %13 = sub i64 %10, 1, !dbg !4957
    #dbg_value(i64 %10, !4932, !DIExpression(), !4958)
  %14 = sub i64 %10, 1, !dbg !4959
  %15 = mul i64 %13, %14, !dbg !4960
  %16 = add i64 %12, %15, !dbg !4961
    #dbg_value(i64 %n, !4930, !DIExpression(), !4962)
  %17 = icmp sge i64 %16, %n, !dbg !4963
  br i1 %17, label %for.body4, label %for.loop1, !dbg !4939

for.body4:                                        ; preds = %cond.true
  %18 = sub i64 %10, 1, !dbg !4964
    #dbg_value(i64 %18, !4932, !DIExpression(), !4964)
  br label %for.loop3, !dbg !4939

for.done:                                         ; preds = %for.loop1
    #dbg_value(i64 %6, !4933, !DIExpression(), !4965)
  ret i64 %6, !dbg !4966
}
