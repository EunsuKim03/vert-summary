define i64 @f_gold(i64 %s) #0 !dbg !4943 {
entry:
    #dbg_value(i64 %s, !4945, !DIExpression(), !4950)
    #dbg_value(i64 0, !4946, !DIExpression(), !4951)
    #dbg_value(i64 1, !4947, !DIExpression(), !4952)
  br label %for.loop, !dbg !4953

for.loop:                                         ; preds = %for.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %4, %for.done ], !dbg !4951
  %1 = phi i64 [ 1, %entry ], [ %14, %for.done ], !dbg !4952
    #dbg_value(i64 %1, !4947, !DIExpression(), !4954)
    #dbg_value(i64 %s, !4945, !DIExpression(), !4955)
  %2 = sub i64 %s, 2, !dbg !4956
  %3 = icmp sle i64 %1, %2, !dbg !4957
  br i1 %3, label %for.body, label %for.done3, !dbg !4953

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 1, !4948, !DIExpression(), !4958)
  br label %for.loop1, !dbg !4953

for.loop1:                                        ; preds = %for.body2, %for.body
  %4 = phi i64 [ %0, %for.body ], [ %12, %for.body2 ], !dbg !4951
  %5 = phi i64 [ 1, %for.body ], [ %13, %for.body2 ], !dbg !4958
    #dbg_value(i64 %5, !4948, !DIExpression(), !4959)
    #dbg_value(i64 %s, !4945, !DIExpression(), !4960)
  %6 = sub i64 %s, 1, !dbg !4961
  %7 = icmp sle i64 %5, %6, !dbg !4962
  br i1 %7, label %for.body2, label %for.done, !dbg !4953

for.body2:                                        ; preds = %for.loop1
    #dbg_value(i64 %s, !4945, !DIExpression(), !4963)
    #dbg_value(i64 %1, !4947, !DIExpression(), !4964)
  %8 = sub i64 %s, %1, !dbg !4965
    #dbg_value(i64 %5, !4948, !DIExpression(), !4966)
  %9 = sub i64 %8, %5, !dbg !4967
    #dbg_value(i64 %9, !4949, !DIExpression(), !4968)
    #dbg_value(i64 %4, !4946, !DIExpression(), !4969)
    #dbg_value(i64 %1, !4947, !DIExpression(), !4970)
    #dbg_value(i64 %5, !4948, !DIExpression(), !4971)
  %10 = mul i64 %1, %5, !dbg !4972
    #dbg_value(i64 %9, !4949, !DIExpression(), !4973)
  %11 = mul i64 %10, %9, !dbg !4974
  %12 = call i64 @main.max(i64 %4, i64 %11, ptr undef), !dbg !4975
    #dbg_value(i64 %12, !4946, !DIExpression(), !4976)
  %13 = add i64 %5, 1, !dbg !4977
    #dbg_value(i64 %13, !4948, !DIExpression(), !4977)
  br label %for.loop1, !dbg !4953

for.done:                                         ; preds = %for.loop1
  %14 = add i64 %1, 1, !dbg !4978
    #dbg_value(i64 %14, !4947, !DIExpression(), !4978)
  br label %for.loop, !dbg !4953

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %0, !4946, !DIExpression(), !4979)
  ret i64 %0, !dbg !4980
}
