define i64 @f_gold(i64 %limit) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %limit, !4930, !DIExpression(), !4935)
    #dbg_value(i64 %limit, !4930, !DIExpression(), !4936)
  %0 = icmp slt i64 %limit, 2, !dbg !4937
  br i1 %0, label %if.then, label %if.done, !dbg !4938

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4939

if.done:                                          ; preds = %entry
    #dbg_value(double 0.000000e+00, !4931, !DIExpression(), !4940)
    #dbg_value(double 2.000000e+00, !4932, !DIExpression(), !4941)
    #dbg_value(double 0.000000e+00, !4931, !DIExpression(), !4942)
    #dbg_value(double 2.000000e+00, !4932, !DIExpression(), !4943)
    #dbg_value(double 2.000000e+00, !4933, !DIExpression(), !4944)
  br label %for.loop, !dbg !4938

for.loop:                                         ; preds = %if.done1, %if.done
  %1 = phi double [ 0.000000e+00, %if.done ], [ %2, %if.done1 ], !dbg !4940
  %2 = phi double [ 2.000000e+00, %if.done ], [ %7, %if.done1 ], !dbg !4941
  %3 = phi double [ 2.000000e+00, %if.done ], [ %10, %if.done1 ], !dbg !4944
    #dbg_value(double %2, !4932, !DIExpression(), !4945)
    #dbg_value(i64 %limit, !4930, !DIExpression(), !4946)
  %4 = sitofp i64 %limit to double, !dbg !4947
  %5 = fcmp ole double %2, %4, !dbg !4948
  br i1 %5, label %for.body, label %for.done, !dbg !4938

for.body:                                         ; preds = %for.loop
    #dbg_value(double %2, !4932, !DIExpression(), !4949)
  %6 = fmul double %2, 4.000000e+00, !dbg !4950
    #dbg_value(double %1, !4931, !DIExpression(), !4951)
  %7 = fadd double %6, %1, !dbg !4952
    #dbg_value(double %7, !4934, !DIExpression(), !4953)
    #dbg_value(double %7, !4934, !DIExpression(), !4954)
    #dbg_value(i64 %limit, !4930, !DIExpression(), !4955)
  %8 = sitofp i64 %limit to double, !dbg !4956
  %9 = fcmp ogt double %7, %8, !dbg !4957
  br i1 %9, label %for.done, label %if.done1, !dbg !4938

if.done1:                                         ; preds = %for.body
    #dbg_value(double %2, !4932, !DIExpression(), !4958)
    #dbg_value(double %2, !4931, !DIExpression(), !4959)
    #dbg_value(double %7, !4934, !DIExpression(), !4960)
    #dbg_value(double %7, !4932, !DIExpression(), !4961)
    #dbg_value(double %7, !4932, !DIExpression(), !4962)
  %10 = fadd double %3, %7, !dbg !4963
    #dbg_value(double %10, !4933, !DIExpression(), !4963)
  br label %for.loop, !dbg !4938

for.done:                                         ; preds = %for.body, %for.loop
    #dbg_value(double %3, !4933, !DIExpression(), !4964)
  %abovemin = fcmp ole double 0xC3E0000000000000, %3, !dbg !4965
  %belowmax = fcmp ole double %3, 0x43DFFFFFFFFFFFFE, !dbg !4965
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4965
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4965
  %isnan = fcmp uno double %3, %3, !dbg !4965
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4965
  %normal = fptosi double %3 to i64, !dbg !4965
  %11 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4965
  ret i64 %11, !dbg !4966
}
