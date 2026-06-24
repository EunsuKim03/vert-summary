define i1 @f_gold(i64 %r, i64 %R, i64 %r1, i64 %x1, i64 %y1) #1 !dbg !4932 {
entry:
    #dbg_value(i64 %r, !4937, !DIExpression(), !4943)
    #dbg_value(i64 %R, !4938, !DIExpression(), !4943)
    #dbg_value(i64 %r1, !4939, !DIExpression(), !4943)
    #dbg_value(i64 %x1, !4940, !DIExpression(), !4943)
    #dbg_value(i64 %y1, !4941, !DIExpression(), !4943)
    #dbg_value(i64 %x1, !4940, !DIExpression(), !4944)
    #dbg_value(i64 %x1, !4940, !DIExpression(), !4945)
  %0 = mul i64 %x1, %x1, !dbg !4946
    #dbg_value(i64 %y1, !4941, !DIExpression(), !4947)
    #dbg_value(i64 %y1, !4941, !DIExpression(), !4948)
  %1 = mul i64 %y1, %y1, !dbg !4949
  %2 = add i64 %0, %1, !dbg !4950
  %3 = sitofp i64 %2 to double, !dbg !4951
  %4 = call double @math.Sqrt(double %3, ptr undef), !dbg !4952
  %abovemin = fcmp ole double 0xC3E0000000000000, %4, !dbg !4953
  %belowmax = fcmp ole double %4, 0x43DFFFFFFFFFFFFE, !dbg !4953
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4953
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4953
  %isnan = fcmp uno double %4, %4, !dbg !4953
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4953
  %normal = fptosi double %4 to i64, !dbg !4953
  %5 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4953
    #dbg_value(i64 %5, !4942, !DIExpression(), !4954)
    #dbg_value(i64 %5, !4942, !DIExpression(), !4955)
    #dbg_value(i64 %r1, !4939, !DIExpression(), !4956)
  %6 = sub i64 %5, %r1, !dbg !4957
    #dbg_value(i64 %R, !4938, !DIExpression(), !4958)
  %7 = icmp sge i64 %6, %R, !dbg !4959
  br i1 %7, label %binop.rhs, label %binop.done, !dbg !4960

binop.rhs:                                        ; preds = %entry
    #dbg_value(i64 %5, !4942, !DIExpression(), !4961)
    #dbg_value(i64 %r1, !4939, !DIExpression(), !4962)
  %8 = add i64 %5, %r1, !dbg !4963
    #dbg_value(i64 %r, !4937, !DIExpression(), !4964)
  %9 = icmp sle i64 %8, %r, !dbg !4965
  br label %binop.done, !dbg !4960

binop.done:                                       ; preds = %binop.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %9, %binop.rhs ], !dbg !4966
  ret i1 %10, !dbg !4967
}
