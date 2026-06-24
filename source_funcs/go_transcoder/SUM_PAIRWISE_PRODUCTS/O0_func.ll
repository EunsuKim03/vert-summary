define double @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
    #dbg_value(double 0.000000e+00, !4931, !DIExpression(), !4935)
    #dbg_value(i64 1, !4932, !DIExpression(), !4936)
  br label %for.loop, !dbg !4937

for.loop:                                         ; preds = %for.done, %entry
  %0 = phi double [ 0.000000e+00, %entry ], [ %3, %for.done ], !dbg !4935
  %1 = phi i64 [ 1, %entry ], [ %10, %for.done ], !dbg !4936
    #dbg_value(i64 %1, !4932, !DIExpression(), !4938)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4939)
  %2 = icmp sle i64 %1, %n, !dbg !4940
  br i1 %2, label %for.body, label %for.done3, !dbg !4937

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %1, !4932, !DIExpression(), !4941)
    #dbg_value(i64 %1, !4933, !DIExpression(), !4942)
  br label %for.loop1, !dbg !4937

for.loop1:                                        ; preds = %for.body2, %for.body
  %3 = phi double [ %0, %for.body ], [ %8, %for.body2 ], !dbg !4935
  %4 = phi i64 [ %1, %for.body ], [ %9, %for.body2 ], !dbg !4942
    #dbg_value(i64 %4, !4933, !DIExpression(), !4943)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4944)
  %5 = icmp sle i64 %4, %n, !dbg !4945
  br i1 %5, label %for.body2, label %for.done, !dbg !4937

for.body2:                                        ; preds = %for.loop1
    #dbg_value(double %3, !4931, !DIExpression(), !4946)
    #dbg_value(i64 %1, !4932, !DIExpression(), !4947)
    #dbg_value(i64 %4, !4933, !DIExpression(), !4948)
  %6 = mul i64 %1, %4, !dbg !4949
  %7 = sitofp i64 %6 to double, !dbg !4950
  %8 = fadd double %3, %7, !dbg !4951
    #dbg_value(double %8, !4931, !DIExpression(), !4952)
  %9 = add i64 %4, 1, !dbg !4953
    #dbg_value(i64 %9, !4933, !DIExpression(), !4953)
  br label %for.loop1, !dbg !4937

for.done:                                         ; preds = %for.loop1
  %10 = add i64 %1, 1, !dbg !4954
    #dbg_value(i64 %10, !4932, !DIExpression(), !4954)
  br label %for.loop, !dbg !4937

for.done3:                                        ; preds = %for.loop
    #dbg_value(double %0, !4931, !DIExpression(), !4955)
  ret double %0, !dbg !4956
}
