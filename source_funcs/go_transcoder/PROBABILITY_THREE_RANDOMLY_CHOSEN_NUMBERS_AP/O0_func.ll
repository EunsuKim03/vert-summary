define double @f_gold(i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %n, !4930, !DIExpression(), !4931)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4932)
  %0 = sitofp i64 %n to double, !dbg !4933
  %1 = fmul double %0, 3.000000e+00, !dbg !4934
    #dbg_value(i64 %n, !4930, !DIExpression(), !4935)
    #dbg_value(i64 %n, !4930, !DIExpression(), !4936)
  %2 = mul i64 %n, %n, !dbg !4937
  %3 = sitofp i64 %2 to double, !dbg !4938
  %4 = fmul double %3, 4.000000e+00, !dbg !4939
  %5 = fsub double %4, 1.000000e+00, !dbg !4940
  %6 = fdiv double %1, %5, !dbg !4941
  ret double %6, !dbg !4942
}
