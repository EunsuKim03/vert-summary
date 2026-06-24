define i64 @f_gold(i64 %a, i64 %b) #1 !dbg !4987 {
entry:
    #dbg_value(i64 %a, !4992, !DIExpression(), !4994)
    #dbg_value(i64 %b, !4993, !DIExpression(), !4994)
    #dbg_value(i64 %a, !4992, !DIExpression(), !4995)
  %0 = icmp eq i64 %a, 0, !dbg !4996
  br i1 %0, label %if.then, label %cond.false, !dbg !4997

if.then:                                          ; preds = %cond.false, %entry
  ret i64 1, !dbg !4998

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %b, !4993, !DIExpression(), !4999)
  %1 = icmp eq i64 %b, 0, !dbg !5000
  br i1 %1, label %if.then, label %if.done, !dbg !4997

if.done:                                          ; preds = %cond.false
    #dbg_value(i64 %a, !4992, !DIExpression(), !5001)
  %2 = sitofp i64 %a to double, !dbg !5002
  %3 = call double @math.Abs(double %2, ptr undef), !dbg !5003
  %4 = call double @math.Log10(double %3, ptr undef), !dbg !5004
    #dbg_value(i64 %b, !4993, !DIExpression(), !5005)
  %5 = sitofp i64 %b to double, !dbg !5006
  %6 = call double @math.Abs(double %5, ptr undef), !dbg !5007
  %7 = call double @math.Log10(double %6, ptr undef), !dbg !5008
  %8 = fadd double %4, %7, !dbg !5009
  %9 = call double @math.Floor(double %8, ptr undef), !dbg !5010
  %10 = fadd double %9, 1.000000e+00, !dbg !5011
  %abovemin = fcmp ole double 0xC3E0000000000000, %10, !dbg !5012
  %belowmax = fcmp ole double %10, 0x43DFFFFFFFFFFFFE, !dbg !5012
  %inbounds = and i1 %abovemin, %belowmax, !dbg !5012
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !5012
  %isnan = fcmp uno double %10, %10, !dbg !5012
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !5012
  %normal = fptosi double %10 to i64, !dbg !5012
  %11 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !5012
  ret i64 %11, !dbg !5013
}
