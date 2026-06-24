define double @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4934)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4935)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
  %0 = add i64 %n, 1, !dbg !4937
  %1 = mul i64 %n, %0, !dbg !4938
  %2 = icmp eq i64 %1, -9223372036854775808, !dbg !4939
  %3 = and i1 false, %2, !dbg !4939
  %4 = select i1 %3, i64 1, i64 2, !dbg !4939
  %5 = sdiv i64 %1, %4, !dbg !4939
  %6 = sitofp i64 %5 to double, !dbg !4940
    #dbg_value(double %6, !4931, !DIExpression(), !4941)
    #dbg_value(double %6, !4931, !DIExpression(), !4942)
    #dbg_value(double %6, !4932, !DIExpression(), !4943)
    #dbg_value(i64 2, !4933, !DIExpression(), !4944)
  br label %for.loop, !dbg !4945

for.loop:                                         ; preds = %for.body, %entry
  %7 = phi double [ %6, %entry ], [ %13, %for.body ], !dbg !4941
  %8 = phi double [ %6, %entry ], [ %16, %for.body ], !dbg !4943
  %9 = phi i64 [ 2, %entry ], [ %17, %for.body ], !dbg !4944
    #dbg_value(i64 %9, !4933, !DIExpression(), !4946)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4947)
  %10 = icmp sle i64 %9, %n, !dbg !4948
  br i1 %10, label %for.body, label %for.done, !dbg !4945

for.body:                                         ; preds = %for.loop
    #dbg_value(double %7, !4931, !DIExpression(), !4949)
    #dbg_value(i64 %9, !4933, !DIExpression(), !4950)
  %11 = sub i64 %9, 1, !dbg !4951
  %12 = sitofp i64 %11 to double, !dbg !4952
  %13 = fsub double %7, %12, !dbg !4953
    #dbg_value(double %13, !4931, !DIExpression(), !4954)
    #dbg_value(double %8, !4932, !DIExpression(), !4955)
    #dbg_value(double %13, !4931, !DIExpression(), !4956)
    #dbg_value(i64 %9, !4933, !DIExpression(), !4957)
  %14 = sitofp i64 %9 to double, !dbg !4958
  %15 = fmul double %13, %14, !dbg !4959
  %16 = fadd double %8, %15, !dbg !4960
    #dbg_value(double %16, !4932, !DIExpression(), !4961)
  %17 = add i64 %9, 1, !dbg !4962
    #dbg_value(i64 %17, !4933, !DIExpression(), !4962)
  br label %for.loop, !dbg !4945

for.done:                                         ; preds = %for.loop
    #dbg_value(double %8, !4932, !DIExpression(), !4963)
  ret double %8, !dbg !4964
}
