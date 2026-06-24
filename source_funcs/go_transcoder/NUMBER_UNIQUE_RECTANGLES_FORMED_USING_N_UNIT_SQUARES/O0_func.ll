define i64 @f_gold(i64 %n) #1 !dbg !4932 {
entry:
    #dbg_value(i64 %n, !4935, !DIExpression(), !4939)
    #dbg_value(i64 0, !4936, !DIExpression(), !4940)
    #dbg_value(i64 1, !4937, !DIExpression(), !4941)
  br label %for.loop, !dbg !4942

for.loop:                                         ; preds = %for.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %6, %for.done ], !dbg !4940
  %1 = phi i64 [ 1, %entry ], [ %12, %for.done ], !dbg !4941
    #dbg_value(i64 %1, !4937, !DIExpression(), !4943)
  %2 = sitofp i64 %1 to double, !dbg !4944
    #dbg_value(i64 %n, !4935, !DIExpression(), !4945)
  %3 = sitofp i64 %n to double, !dbg !4946
  %4 = call double @math.Sqrt(double %3, ptr undef), !dbg !4947
  %5 = fcmp ole double %2, %4, !dbg !4948
  br i1 %5, label %for.body, label %for.done3, !dbg !4942

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4937, !DIExpression(), !4949)
    #dbg_value(i64 %1, !4938, !DIExpression(), !4950)
  br label %for.loop1, !dbg !4942

for.loop1:                                        ; preds = %for.body2, %for.body
  %6 = phi i64 [ %0, %for.body ], [ %10, %for.body2 ], !dbg !4940
  %7 = phi i64 [ %1, %for.body ], [ %11, %for.body2 ], !dbg !4950
    #dbg_value(i64 %7, !4938, !DIExpression(), !4951)
    #dbg_value(i64 %1, !4937, !DIExpression(), !4952)
  %8 = mul i64 %7, %1, !dbg !4953
    #dbg_value(i64 %n, !4935, !DIExpression(), !4954)
  %9 = icmp sle i64 %8, %n, !dbg !4955
  br i1 %9, label %for.body2, label %for.done, !dbg !4942

for.body2:                                        ; preds = %for.loop1
  %10 = add i64 %6, 1, !dbg !4956
    #dbg_value(i64 %10, !4936, !DIExpression(), !4956)
  %11 = add i64 %7, 1, !dbg !4957
    #dbg_value(i64 %11, !4938, !DIExpression(), !4957)
  br label %for.loop1, !dbg !4942

for.done:                                         ; preds = %for.loop1
  %12 = add i64 %1, 1, !dbg !4958
    #dbg_value(i64 %12, !4937, !DIExpression(), !4958)
  br label %for.loop, !dbg !4942

for.done3:                                        ; preds = %for.loop
    #dbg_value(i64 %0, !4936, !DIExpression(), !4959)
  ret i64 %0, !dbg !4960
}
