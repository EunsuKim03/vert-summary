define double @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
    #dbg_value(i64 10, !4931, !DIExpression(), !4935)
    #dbg_value(double 1.000000e+00, !4932, !DIExpression(), !4936)
    #dbg_value(i64 1, !4933, !DIExpression(), !4937)
  br label %for.loop, !dbg !4938

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi double [ 1.000000e+00, %entry ], [ %8, %for.body ], !dbg !4936
  %1 = phi i64 [ 1, %entry ], [ %9, %for.body ], !dbg !4937
    #dbg_value(i64 %1, !4933, !DIExpression(), !4939)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4940)
  %2 = icmp sle i64 %1, %n, !dbg !4941
  br i1 %2, label %for.body, label %for.done, !dbg !4938

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 10, !4931, !DIExpression(), !4942)
    #dbg_value(i64 %1, !4933, !DIExpression(), !4943)
  %3 = add i64 10, %1, !dbg !4944
  %4 = sub i64 %3, 1, !dbg !4945
  %5 = sitofp i64 %4 to double, !dbg !4946
  %6 = fmul double %0, %5, !dbg !4947
    #dbg_value(double %6, !4932, !DIExpression(), !4947)
    #dbg_value(i64 %1, !4933, !DIExpression(), !4948)
  %7 = sitofp i64 %1 to double, !dbg !4949
  %8 = fdiv double %6, %7, !dbg !4950
    #dbg_value(double %8, !4932, !DIExpression(), !4950)
  %9 = add i64 %1, 1, !dbg !4951
    #dbg_value(i64 %9, !4933, !DIExpression(), !4951)
  br label %for.loop, !dbg !4938

for.done:                                         ; preds = %for.loop
    #dbg_value(double %0, !4932, !DIExpression(), !4952)
  ret double %0, !dbg !4953
}
