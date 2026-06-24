define i64 @f_gold(i64 %n) #1 !dbg !4962 {
entry:
    #dbg_value(i64 %n, !4965, !DIExpression(), !4968)
    #dbg_value(i64 %n, !4965, !DIExpression(), !4969)
  %0 = icmp slt i64 %n, 0, !dbg !4970
  br i1 %0, label %if.then, label %if.done, !dbg !4971

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4972

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !4965, !DIExpression(), !4973)
  %1 = icmp sle i64 %n, 1, !dbg !4974
  br i1 %1, label %if.then1, label %if.done2, !dbg !4971

if.then1:                                         ; preds = %if.done
  ret i64 1, !dbg !4975

if.done2:                                         ; preds = %if.done
    #dbg_value(double 0.000000e+00, !4966, !DIExpression(), !4976)
    #dbg_value(i64 2, !4967, !DIExpression(), !4977)
  br label %for.loop, !dbg !4971

for.loop:                                         ; preds = %for.body, %if.done2
  %2 = phi double [ 0.000000e+00, %if.done2 ], [ %7, %for.body ], !dbg !4976
  %3 = phi i64 [ 2, %if.done2 ], [ %8, %for.body ], !dbg !4977
    #dbg_value(i64 %3, !4967, !DIExpression(), !4978)
    #dbg_value(i64 %n, !4965, !DIExpression(), !4979)
  %4 = icmp sle i64 %3, %n, !dbg !4980
  br i1 %4, label %for.body, label %for.done, !dbg !4971

for.body:                                         ; preds = %for.loop
    #dbg_value(i64 %3, !4967, !DIExpression(), !4981)
  %5 = sitofp i64 %3 to double, !dbg !4982
  %6 = call double @math.Log10(double %5, ptr undef), !dbg !4983
  %7 = fadd double %2, %6, !dbg !4984
    #dbg_value(double %7, !4966, !DIExpression(), !4984)
  %8 = add i64 %3, 1, !dbg !4985
    #dbg_value(i64 %8, !4967, !DIExpression(), !4985)
  br label %for.loop, !dbg !4971

for.done:                                         ; preds = %for.loop
    #dbg_value(double %2, !4966, !DIExpression(), !4986)
  %9 = call double @math.Floor(double %2, ptr undef), !dbg !4987
  %10 = fadd double %9, 1.000000e+00, !dbg !4988
  %abovemin = fcmp ole double 0xC3E0000000000000, %10, !dbg !4989
  %belowmax = fcmp ole double %10, 0x43DFFFFFFFFFFFFE, !dbg !4989
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4989
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4989
  %isnan = fcmp uno double %10, %10, !dbg !4989
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4989
  %normal = fptosi double %10 to i64, !dbg !4989
  %11 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4989
  ret i64 %11, !dbg !4990
}
