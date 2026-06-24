define i64 @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
    #dbg_value(i64 1, !4931, !DIExpression(), !4935)
    #dbg_value(i64 2, !4932, !DIExpression(), !4936)
    #dbg_value(i64 3, !4933, !DIExpression(), !4937)
  br label %for.loop, !dbg !4938

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %n, %entry ], [ %7, %for.body ], !dbg !4939
  %1 = phi i64 [ 2, %entry ], [ %2, %for.body ], !dbg !4936
  %2 = phi i64 [ 3, %entry ], [ %4, %for.body ], !dbg !4937
    #dbg_value(i64 %0, !4930, !DIExpression(), !4940)
  %3 = icmp sgt i64 %0, 0, !dbg !4941
  br i1 %3, label %for.body, label %for.done, !dbg !4938

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4932, !DIExpression(), !4942)
    #dbg_value(i64 %1, !4931, !DIExpression(), !4943)
    #dbg_value(i64 %2, !4933, !DIExpression(), !4944)
    #dbg_value(i64 %2, !4932, !DIExpression(), !4945)
    #dbg_value(i64 %1, !4931, !DIExpression(), !4946)
    #dbg_value(i64 %2, !4932, !DIExpression(), !4947)
  %4 = add i64 %1, %2, !dbg !4948
    #dbg_value(i64 %4, !4933, !DIExpression(), !4949)
    #dbg_value(i64 %0, !4930, !DIExpression(), !4950)
    #dbg_value(i64 %4, !4933, !DIExpression(), !4951)
    #dbg_value(i64 %2, !4932, !DIExpression(), !4952)
  %5 = sub i64 %4, %2, !dbg !4953
  %6 = sub i64 %5, 1, !dbg !4954
  %7 = sub i64 %0, %6, !dbg !4955
    #dbg_value(i64 %7, !4930, !DIExpression(), !4956)
  br label %for.loop, !dbg !4938

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %0, !4930, !DIExpression(), !4957)
    #dbg_value(i64 %2, !4933, !DIExpression(), !4958)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4959)
  %8 = sub i64 %2, %1, !dbg !4960
  %9 = sub i64 %8, 1, !dbg !4961
  %10 = add i64 %0, %9, !dbg !4962
    #dbg_value(i64 %10, !4930, !DIExpression(), !4963)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4964)
    #dbg_value(i64 %10, !4930, !DIExpression(), !4965)
  %11 = add i64 %1, %10, !dbg !4966
  ret i64 %11, !dbg !4967
}
